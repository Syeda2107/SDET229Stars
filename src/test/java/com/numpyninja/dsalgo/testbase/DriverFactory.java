package com.numpyninja.dsalgo.testbase;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.edge.EdgeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.time.Duration;


public class DriverFactory {

    protected final Logger logger = LoggerFactory.getLogger(getClass());   //static-one shared variable for the whole framework
    public static ThreadLocal<WebDriver> tldriver = new ThreadLocal<>(); //- each thread gets its own isolated WebDriver
    //and makes parallel execution safe

    public static WebDriver initDriver(String browser) {

        boolean isJenkins = System.getenv("JENKINS_URL") != null;

        if (browser == null) {
            throw new IllegalArgumentException("Browser name is null");
        }
        if (browser.equalsIgnoreCase("Chrome")) {
            ChromeOptions options = new ChromeOptions();
            options.addArguments("--window-size=1920,1080");
            options.addArguments("--disable-notifications");
            if (isJenkins) {
                options.addArguments("--headless=new");
                options.addArguments("--disable-gpu");
                options.addArguments("--no-sandbox");
                options.addArguments("--disable-dev-shm-usage");
            }
            tldriver.set(new ChromeDriver(options));
        } else if (browser.equalsIgnoreCase("Firefox")) {
            //WebDriverManager.firefoxdriver().clearDriverCache().setup();
            FirefoxOptions options = new FirefoxOptions();
            if (isJenkins) {
                options.addArguments("--headless");
            }
            options.addPreference("dom.webnotifications.enabled", false);
            options.addArguments("--disable-blink-features=AutomationControlled");
            options.addArguments("--width=1270");
            options.addArguments("--height=1080");
            tldriver.set(new FirefoxDriver(options));
            //tldriver.set(new FirefoxDriver());
        } else if (browser.equalsIgnoreCase("Edge")) {
            EdgeOptions options = new EdgeOptions();
            options.addArguments("--window-size=1920,1080");
            if (isJenkins) {
                options.addArguments("--headless=new");
                options.addArguments("--disable-gpu");
                options.addArguments("--no-sandbox");
                options.addArguments("--disable-dev-shm-usage");
            }
            tldriver.set(new EdgeDriver(options));
        } else
            throw new IllegalArgumentException("Browser is not supported: " + browser);

        //getDriver().manage().window().maximize();
       // getDriver().manage().deleteAllCookies();
        getDriver().manage().timeouts().scriptTimeout(Duration.ofSeconds(60));
        getDriver().manage().timeouts().pageLoadTimeout(Duration.ofSeconds(60));
        getDriver().manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
        return getDriver();
    }

    public static WebDriver getDriver() {
        return tldriver.get();
    }

    public static void quitDriver() {
        if (tldriver.get() != null) {
            tldriver.get().quit();
            tldriver.remove();
        }
    }
}


