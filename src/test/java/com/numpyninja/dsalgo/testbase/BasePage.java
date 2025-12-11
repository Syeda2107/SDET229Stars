package com.numpyninja.dsalgo.testbase;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class BasePage {
    protected WebDriver driver;
    protected TestContext context;


    public BasePage(WebDriver driver,TestContext context) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
        this.context=context;
    }

    public void waitForElementToClick(WebElement element, long timeOutInSec) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(timeOutInSec));
        wait.until(ExpectedConditions.elementToBeClickable(element)).click();
    }

}
