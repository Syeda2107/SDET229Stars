package com.numpyninja.dsalgo.pageobjects;

import com.numpyninja.dsalgo.testbase.BasePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class QueuePage extends BasePage {

    public QueuePage(WebDriver driver, TestContext context) {
        super(driver, context);
    }

    // Locators
    @FindBy(linkText = "Implementation of Queue in Python")
    WebElement implementationQueueLink;

    @FindBy(linkText = "Queue Operations")
    WebElement queueOperationsLink;

    @FindBy(xpath = "//a[contains(text(),'Applications')]")
    WebElement applicationsLink;

    @FindBy(xpath = "//div[@class='alert alert-primary']")
    WebElement alertMsg;

    // ---------- Try Editor ----------
    @FindBy(xpath = "//a[contains(@href,'try')]")
    WebElement tryHereBtn;

    @FindBy(xpath = "//button[@type='button']")
    WebElement runBtn;

    @FindBy(xpath = "//pre[@id='output']")
    WebElement output;

    // Actions
    public void clickImplementationQueue() {
        waitForElementToClick(implementationQueueLink, 10);
        implementationQueueLink.click();
    }

    public void clickQueueOperations() {
        waitForElementToClick(queueOperationsLink, 10);
        queueOperationsLink.click();
    }

    public void clickApplicationsLink() {
        waitForElementToClick(applicationsLink, 10);
    }

    public void clickTryHereBtn() {
        waitForElementToClick(tryHereBtn, 10);
    }

    public void clickRunBtn() {
        runBtn.click();
    }

    public void enterPythonCode(String pythonCode) {
        enterCodeInEditor(pythonCode);
    }

    public void enterPythonCodeWithSpace(String pythonCode) {
        enterCodeInEditor(" " + pythonCode);
    }

    public String getValue() {
        return output.getText();
    }

    public String getCurrentPageUrl() {
        waitForUrl(driver.getCurrentUrl(), 10);
        return driver.getCurrentUrl();
    }

    public String getPageTitle() {
        return driver.getTitle();
    }

    public String getAlertMsg() {
        return alertMsg.getText();
    }
}

