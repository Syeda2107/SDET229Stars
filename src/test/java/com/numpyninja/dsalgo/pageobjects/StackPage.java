package com.numpyninja.dsalgo.pageobjects;

import com.numpyninja.dsalgo.testbase.BasePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import org.openqa.selenium.Alert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class StackPage extends BasePage {

    public StackPage(WebDriver driver, TestContext context) {
        super(driver, context);
    }

    // ---------- Stack page links ----------

    @FindBy(xpath = "//a[contains(@href,'stack')]")
    WebElement stackGetStartedBtn;

    @FindBy(xpath = "//a[contains(text(),'Operations in Stack')]")
    WebElement operationsInStackLink;

    @FindBy(xpath = "//a[contains(text(),'Implementation')]")
    WebElement implementationLink;

    @FindBy(xpath = "//a[contains(text(),'Applications')]")
    WebElement applicationsLink;

    // ---------- Try Editor ----------

    @FindBy(xpath = "//a[contains(@href,'try')]")
    WebElement tryHereBtn;

    @FindBy(xpath = "//button[@type='button']")
    WebElement runBtn;

    @FindBy(xpath = "//pre[@id='output']")
    WebElement output;

    // ---------- Actions ----------

    public void clickStackGetStartedBtn() {
        waitForElementToClick(stackGetStartedBtn, 10);
    }

    public void clickOperationsInStackLink() {
        waitForElementToClick(operationsInStackLink, 10);
    }

    public void clickImplementationLink() {
        waitForElementToClick(implementationLink, 10);
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

    public String getOutput() {
        return output.getText();
    }

    public String getPopUpMsg() {
        Alert alert = driver.switchTo().alert();
        return alert.getText();
    }

    public void acceptAlert() {
        Alert alert = driver.switchTo().alert();
        alert.accept();
    }

    public String getCurrentPageUrl() {
        waitForUrl(driver.getCurrentUrl(), 10);
        return driver.getCurrentUrl();
    }
}

