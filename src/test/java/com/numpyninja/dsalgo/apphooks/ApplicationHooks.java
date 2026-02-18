package com.numpyninja.dsalgo.apphooks;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.Status;
import com.numpyninja.dsalgo.testbase.DriverFactory;
import com.numpyninja.dsalgo.testbase.TestContext;
import com.numpyninja.dsalgo.utilities.AllureUtils;
import com.numpyninja.dsalgo.utilities.ConfigReader;
import com.numpyninja.dsalgo.utilities.ExtentReportManager;
import io.cucumber.java.After;
import io.cucumber.java.AfterStep;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.qameta.allure.Allure;
import lombok.extern.slf4j.Slf4j;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.testng.annotations.Optional;
import org.testng.annotations.Parameters;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Slf4j
public class ApplicationHooks {

    private ConfigReader cr;
    private WebDriver driver;
    private final TestContext context;
    private String browserName;

    private static ExtentReports extent;
    private static ThreadLocal<ExtentTest> test = new ThreadLocal<>();

    public ApplicationHooks(TestContext context) {
        this.context = context;
    }

    // ---------------- BEFORE ----------------

    @Before(order = 0)
    public void getProperty() throws IOException {
        cr = new ConfigReader();
        //TestNG XML / Maven (-Dbrowser)
        browserName=System.getProperty("browser");
        System.out.println("******************* "+browserName);
        //config.properties fallback
        if(browserName==null || browserName.isEmpty())
            browserName = cr.initProp("browser");
        extent = ExtentReportManager.getInstance();
    }

    @Before(order = 1)
    public void beforeScenario(Scenario scenario) throws IOException {

        context.setDriver(DriverFactory.initDriver(browserName));
        driver = context.getDriver();
        context.initializePageObjects();
        String url = cr.initProp("url");
        long startTimeDashboard=System.currentTimeMillis();
        driver.get(url);
        long endTime = System.currentTimeMillis();
        context.setDashboardTime(endTime-startTimeDashboard);
        scenario.log("Launching on browser: " + browserName);

        ExtentTest extentTest = extent.createTest(scenario.getName())
                .assignDevice(browserName);
        test.set(extentTest);

        log.info("Scenario started: {}", scenario.getName());
    }

    // ---------------- AFTER SCENARIO ----------------

    @After(order = 1)
    public void tearDown(Scenario scenario) {

        ExtentTest extentTest = test.get();
        TakesScreenshot ts = (TakesScreenshot) driver;

        String timeStamp = new SimpleDateFormat("dd-MM-yyyy_HH-mm-ss").format(new Date());
        String screenshotName =
                scenario.getName().replaceAll(" ", "_") + "_" + timeStamp + ".png";

        String failedDir = System.getProperty("user.dir")
                + "/test-output/Reports/Failed/";
        new File(failedDir).mkdirs();

        try {
            if (scenario.isFailed()) {

                byte[] screenshotBytes = ts.getScreenshotAs(OutputType.BYTES);

                //  Cucumber
                scenario.attach(screenshotBytes, "image/png", screenshotName);

                //  Save file (optional)
                File screenshotFile = new File(failedDir + screenshotName);
                try (FileOutputStream fos = new FileOutputStream(screenshotFile)) {
                    fos.write(screenshotBytes);
                }

                //  Extent
                extentTest.addScreenCaptureFromBase64String(
                        ts.getScreenshotAs(OutputType.BASE64),
                        screenshotName
                );
                extentTest.log(Status.FAIL, "Scenario Failed");

                //  Allure (ADDED)
                AllureUtils.attachScreenshot("Failure Screenshot", screenshotBytes);

                log.error("Scenario failed: {}", scenario.getName());

            } else {
                extentTest.log(Status.PASS, "Scenario Passed");
                log.info("Scenario passed: {}", scenario.getName());
            }

        } catch (Exception e) {
            log.error("Screenshot error: {}", e.getMessage());
        }
    }

    // ---------------- AFTER STEP ----------------

    @AfterStep
    public void afterEachStep(Scenario scenario) {
        ExtentTest extentTest = test.get();

        if (scenario.isFailed()) {
            extentTest.log(Status.FAIL, "Step failed");
        } else {
            extentTest.log(Status.PASS, "Step passed");
        }
    }

    // ---------------- CLEANUP ----------------

    @After(order = 0)
    public void quitBrowser() {
        DriverFactory.quitDriver();
    }

    @After(order = -1)
    public void flushExtent() {
        ExtentReportManager.getInstance().flush();
    }

    public static ExtentTest getExtentTest() {
        return test.get();
    }
}
