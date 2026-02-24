package com.numpyninja.dsalgo.apphooks;

import com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter;
import com.numpyninja.dsalgo.testbase.DriverFactory;
import com.numpyninja.dsalgo.testbase.TestContext;
import com.numpyninja.dsalgo.utilities.AllureUtils;
import com.numpyninja.dsalgo.utilities.ConfigReader;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import lombok.extern.slf4j.Slf4j;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.io.FileHandler;

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

    public ApplicationHooks(TestContext context) {
        this.context = context;
    }

    // ---------------- BEFORE ----------------

    @Before(order = 0)
    public void getProperty() throws IOException {
      //  cr = new ConfigReader();

        browserName = System.getProperty("browser");

        if (browserName == null || browserName.isEmpty()) {
            browserName = context.configReader.initProp("browser");
        }

        log.info("Running tests on browser: {}", browserName);
    }

    @Before(order = 1)
    public void beforeScenario(Scenario scenario) throws IOException {

        context.setDriver(DriverFactory.initDriver(browserName));
        driver = context.getDriver();
        context.initializePageObjects();

        String url = context.configReader.initProp("url");


        if (url == null || url.isEmpty()) {
            throw new RuntimeException("URL is not defined in config.properties");
        }

        long startTime = System.currentTimeMillis();

        driver.get(url);
        context.dashboardPage.waitForPageToLoad();

        long endTime = System.currentTimeMillis();
        context.setDashboardTime(endTime - startTime);

        scenario.log("Launched browser: " + browserName);
        log.info("Scenario started: {}", scenario.getName());
    }

    // ---------------- AFTER SCENARIO ----------------

    @After(order = 1)
    public void tearDown(Scenario scenario) {

        if (scenario.isFailed()) {

            try {
                TakesScreenshot ts = (TakesScreenshot) driver;

                // Get screenshot as FILE (for Extent)
                File src = ts.getScreenshotAs(OutputType.FILE);

                String timeStamp = new SimpleDateFormat("dd-MM-yyyy_HH-mm-ss")
                        .format(new Date());

                String screenshotName =
                        scenario.getName().replaceAll(" ", "_")
                                + "_" + timeStamp + ".png";

                String screenshotDir = System.getProperty("user.dir")
                        + "/test-output/Screenshots/";

                new File(screenshotDir).mkdirs();

                File dest = new File(screenshotDir + screenshotName);
                FileHandler.copy(src, dest);

                // 2 Attach to Extent (actual image, not base64 link)
                ExtentCucumberAdapter.addTestStepScreenCaptureFromPath(dest.getAbsolutePath());

                // Get screenshot as BYTES (for Allure + Cucumber)
                byte[] screenshotBytes = ts.getScreenshotAs(OutputType.BYTES);

                // Attach to Allure
                AllureUtils.attachScreenshot("Failure Screenshot", screenshotBytes);

                // Optional: Attach to Cucumber report
                scenario.attach(screenshotBytes, "image/png", screenshotName);

                log.error("Scenario failed: {}", scenario.getName());

            } catch (Exception e) {
                log.error("Screenshot capture failed: {}", e.getMessage());
            }
        } else {
            log.info("Scenario passed: {}", scenario.getName());
        }
    }
    // ---------------- CLEANUP ----------------

    @After(order = 0)
    public void quitBrowser() {
        DriverFactory.quitDriver();
    }
}