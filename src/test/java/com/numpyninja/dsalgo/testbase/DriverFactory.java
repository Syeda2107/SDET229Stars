package com.numpyninja.dsalgo.testbase;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.time.Duration;


public class  DriverFactory {

    protected final Logger logger = LoggerFactory.getLogger(getClass());   //static-one shared variable for the whole framework
    public static ThreadLocal<WebDriver> tldriver = new ThreadLocal<>(); //- each thread gets its own isolated WebDriver
                                                                                   //and makes parallel execution safe

    public static WebDriver initDriver(String browser) {
        if (browser == null) {
            throw new IllegalArgumentException("Browser name is null");
        }
        if (browser.equalsIgnoreCase("Chrome")) {
            tldriver.set(new ChromeDriver());
        }else if (browser.equalsIgnoreCase("Firefox")) {
            //WebDriverManager.firefoxdriver().clearResolutionCache(); // 💡 force refresh if old
            //WebDriverManager.firefoxdriver().setup();
            tldriver.set(new FirefoxDriver());
        } else if (browser.equalsIgnoreCase("Edge")) {
            // WebDriverManager.edgedriver().clearResolutionCache();
            //System.setProperty("webdriver.edge.driver", "C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe");
            //WebDriverManager.edgedriver().setup();
            tldriver.set(new EdgeDriver());
        }
        else {
            throw new IllegalArgumentException("Browser is not supported: " + browser);
        }
        getDriver().manage().deleteAllCookies();
        getDriver().manage().window().maximize();
        getDriver().manage().timeouts().implicitlyWait(Duration.ofSeconds(10));

        return getDriver();
    }

    public static WebDriver getDriver() {
        return tldriver.get();
    }

    public static void quitDriver() {
        if (tldriver != null)
            tldriver.get().quit();
    }
}


