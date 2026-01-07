package com.numpyninja.dsalgo.testbase;

import com.numpyninja.dsalgo.utilities.ConfigReader;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.util.Date;

public class BaseTest {
    protected WebDriver driver;
    protected ConfigReader config;
    protected PageObjectManager pageObjectManager;

    @BeforeMethod
    public void setUp() {
        config = new ConfigReader();
        driver = DriverFactory.initDriver(config.getProperty("browser"));
        pageObjectManager=new PageObjectManager(driver);
        driver.manage().window().maximize();
        driver.manage().deleteAllCookies();
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
        driver.navigate().to(config.getProperty("url"));
    }

    @AfterMethod
    public void tearDown() {
        DriverFactory.quitDriver();
    }

    public String captureScreen(WebDriver driver,String tname) throws IOException {
        String timeStamp = new SimpleDateFormat("yyyyMMddhhmmss").format(new Date());
        // Take a screenshot by casting the driver to TakesScreenshot
        TakesScreenshot takeScreenShot = (TakesScreenshot) driver;
        // Capture screenshot and store it as a File object
        File sourceFile = takeScreenShot.getScreenshotAs(OutputType.FILE);
        String targetFilePath = System.getProperty("user.dir") + "\\screenshots\\" + tname + "_" + timeStamp + ".png";
        // Save the screenshot to a desired location
        File targetFile = new File(targetFilePath);
        //sourceFile.renameTo(targetFile);
        FileUtils.copyFile(sourceFile, targetFile);
        return targetFilePath;
    }

}
