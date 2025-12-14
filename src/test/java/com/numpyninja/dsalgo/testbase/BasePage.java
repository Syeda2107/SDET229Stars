package com.numpyninja.dsalgo.testbase;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class BasePage {
    protected WebDriver driver;
    protected TestContext context;

    public BasePage(WebDriver driver, TestContext context) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
        this.context = context;
    }

    public void waitForElementToClick(WebElement element, long timeOutInSec) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(timeOutInSec));
        wait.until(ExpectedConditions.elementToBeClickable(element)).click();
    }

    public String getTooltipMsg(WebElement element){
        JavascriptExecutor js=(JavascriptExecutor) driver;
        String toolTipMsg= (String) js.executeScript("return arguments[0].validationMessage;",element);
        return toolTipMsg;
    }

    public void waitForUrl(String urlText,long timeOutInSec){
        WebDriverWait wait=new WebDriverWait(driver,Duration.ofSeconds(timeOutInSec));
        wait.until(ExpectedConditions.urlToBe(urlText));
    }

    public void enterCodeInEditor(String code) {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript(
                "document.querySelector('.CodeMirror').CodeMirror.setValue(arguments[0]);",
                code
        );
    }

    public void waitForTitle(String title,long timeOutInSec){
        WebDriverWait wait=new WebDriverWait(driver,Duration.ofSeconds(timeOutInSec));
        wait.until(ExpectedConditions.titleIs(title));
    }



}
