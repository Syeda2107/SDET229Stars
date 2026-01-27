package com.numpyninja.dsalgo.pageobjects;

import com.numpyninja.dsalgo.testbase.BasePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class QueuePage extends BasePage {

    public QueuePage(WebDriver driver, TestContext context) {
        super(driver, context);
    }

    // ---------- Locators ----------

    @FindBy(linkText = "Implementation of Queue in Python")
    WebElement implementationQueueLink;

    @FindBy(linkText = "Queue Operations")
    WebElement queueOperationsLink;

    @FindBy(xpath = "//a[contains(text(),'Applications')]")
    WebElement applicationsLink;

    @FindBy(xpath = "//div[@class='alert alert-primary']")
    WebElement alertMsg;

    @FindBy(xpath = "//a[contains(@href,'try')]")
    WebElement tryHereBtn;

    @FindBy(xpath = "//button[@type='button']")
    WebElement runBtn;

    @FindBy(xpath = "//pre[@id='output']")
    WebElement output;

    @FindBy(id = "code")
    WebElement codeEditor;

    @FindBy(id = "navbarDropdown")
    WebElement dataStructureDropdown;

    // ---------- Actions ----------

    // Clicks the "Getting Started" button in the Queue Panel
    public void clickGettingStartedButton(String buttonName) {
        // Assuming the Queue Panel has a unique "Getting Started" button
        WebElement getStartedBtn = driver.findElement(By.xpath("//div[contains(@class,'queue-panel')]//a[text()='Getting Started']"));
        waitForElementToClick(getStartedBtn, 10);
        getStartedBtn.click();
    }

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
        applicationsLink.click();
    }

    public void clickTryHere() {
        waitForElementToClick(tryHereBtn, 10);
        tryHereBtn.click();
    }

    public void clickRun() {
        waitForElementToClick(runBtn, 10);
        runBtn.click();
    }

    public void enterCode(String pythonCode) {
        waitForElementToClick(codeEditor, 10);
        codeEditor.clear();
        codeEditor.sendKeys(pythonCode);
    }

    public String getOutput() {
        return output.getText();
    }

    public boolean isOutputDisplayed() {
        return output.isDisplayed() && !output.getText().isEmpty();
    }

    public Alert switchToAlert() {
        return driver.switchTo().alert();
    }

    public boolean isTryEditorDisplayed() {
        return tryHereBtn.isDisplayed();
    }

    public void clickPageButton(String buttonName) {
        // Generic method for multiple buttons
        WebElement btn = driver.findElement(By.linkText(buttonName));
        waitForElementToClick(btn, 10);
        btn.click();
    }

    public void clickLink(String linkName) {
        WebElement link = driver.findElement(By.linkText(linkName));
        waitForElementToClick(link, 10);
        link.click();
    }

    public void selectDropdown(String option) {
        WebElement dropdown = dataStructureDropdown;
        waitForElementToClick(dropdown, 10);
        dropdown.click();
        WebElement item = driver.findElement(By.linkText(option));
        waitForElementToClick(item, 10);
        item.click();
    }

    public String getPageTitle() {
        return driver.getTitle();
    }

    public String getAlertMsg() {
        return alertMsg.getText();
    }
}
