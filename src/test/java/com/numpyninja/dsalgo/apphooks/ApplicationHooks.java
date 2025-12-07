package com.numpyninja.dsalgo.apphooks;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.Status;
import com.numpyninja.dsalgo.testbase.DriverFactory;
import com.numpyninja.dsalgo.testbase.TestContext;
import com.numpyninja.dsalgo.utilities.ConfigReader;
import com.numpyninja.dsalgo.utilities.ExtentReportManager;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import lombok.extern.slf4j.Slf4j;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Driver;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

@Slf4j
public class ApplicationHooks {
   // private final Logger logger = LoggerFactory.getLogger(getClass());
    private ConfigReader cr;
    private WebDriver driver;
    private final TestContext context;
    String browserName;

    private static ExtentReports extent = ExtentReportManager.createInstance();
    private static ThreadLocal<ExtentTest> test = new ThreadLocal<>();

    public ApplicationHooks(TestContext context) {
        this.context = context;
    }

    @Before(order = 0)
    public void getProperty() throws IOException {
        cr = new ConfigReader();
        browserName = cr.initProp("browser");

    }

    @Before(order = 1)
    public void beforeScenario(Scenario scenario) {
       // String browserName = prop.getProperty("browser");
        context.setDriver(DriverFactory.initDriver(browserName));
        driver=context.getDriver();
        context.initializePageObjects();
        scenario.log("************************************** Launching on browser: " + browserName + " **************************************");

        ExtentTest extentTest = extent.createTest(scenario.getName())
                .assignCategory(browserName);
        test.set(extentTest);

        log.info("Scenario started: {}", scenario.getName());
    }

    @After(order = 1)
    public void tearDown(Scenario scenario) {
        ExtentTest extentTest = test.get();
        TakesScreenshot ts = (TakesScreenshot) driver;

        String timeStamp = new SimpleDateFormat("dd-MM-yyyy_HH-mm-ss").format(new Date());
        String screenshotName = scenario.getName().replaceAll(" ", "_") + "_" + timeStamp + ".png";

        // Directory for failed screenshots
        String failedDir = System.getProperty("user.dir") + "/test-output/Reports/Failed/";
        new File(failedDir).mkdirs();

        try {
            if (scenario.isFailed()) {
                byte[] sourcePath = ts.getScreenshotAs(OutputType.BYTES);
                File screenshotFile = new File(failedDir + screenshotName);

                try (FileOutputStream fos = new FileOutputStream(screenshotFile)) {
                    fos.write(sourcePath);
                }

                // Attach screenshot to Cucumber and Extent
                scenario.attach(sourcePath, "image/png", screenshotName);
                extentTest.addScreenCaptureFromBase64String(ts.getScreenshotAs(OutputType.BASE64), screenshotName);
                extentTest.log(Status.FAIL, "Scenario Failed: " + scenario.getName());
                log.error("Scenario failed: {}", scenario.getName());
            } else {
                extentTest.log(Status.PASS, "Scenario Passed: " + scenario.getName());
                log.info("Scenario passed: {}", scenario.getName());
            }
        } catch (Exception e) {
            log.error("Error while taking screenshot: {}", e.getMessage());
        }
    }

    @After(order = 0)
    public void quitBrowser() {
        DriverFactory.quitDriver();
    }
}

