package com.numpyninja.dsalgo.pageobjects;

import com.numpyninja.dsalgo.testbase.BasePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import org.openqa.selenium.Alert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class DSIntroductionPage extends BasePage {
    public DSIntroductionPage(WebDriver driver, TestContext context) {
        super(driver, context);
    }

    @FindBy(xpath = "//a[contains(@href,'tim')]")
    WebElement timeComplexityLnk;

    @FindBy(xpath = "//a[contains(@href,'try')]")
    WebElement tryHereBtn;

    @FindBy(xpath = "//pre[@role='presentation']")
    WebElement textarea;

    @FindBy(xpath = "//button[@type='button']")
    WebElement runBtn;

    @FindBy(xpath = "//div[@class='input']")
    WebElement textareaInput;

    @FindBy(xpath = "//pre[@id='output']")
    WebElement output;

    @FindBy(xpath = "//a[contains(@href,'practice')]")
    WebElement practiceLink;

    public void clickDsIntroGetStartbtn() {
        waitForElementToClick(context.dashboardPage.btnDsGetStarted, 10);
    }

    public void clickTimeComplexityLink() {
        waitForElementToClick(timeComplexityLnk, 10);
    }

    public void clickTryHereBtn() {
        waitForElementToClick(tryHereBtn, 10);
    }

    public String getcurrentpageUrl() throws InterruptedException {
        //Thread.sleep(5000);
        waitForUrl(driver.getCurrentUrl(),10);
        return driver.getCurrentUrl();
    }

    public void clickRunBtn() {
        runBtn.click();
    }

    public void enterValueInEditor(String pythonCode) {
        textarea.sendKeys(pythonCode);
    }

    public void clickPracticeLink() {
        practiceLink.click();
    }

    public String getValue() {
        return output.getText();
    }

    public String getPopUpMsg() throws InterruptedException {
        Thread.sleep(3000);
        Alert alert = driver.switchTo().alert();
        return alert.getText();
    }
//    public String getPopUpMsg() {
//        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(5));
//        Alert alert = wait.until(ExpectedConditions.alertIsPresent());
//        return alert.getText();
//    }

    public void clickPopUpOkBtn() throws InterruptedException {
        Alert alert = driver.switchTo().alert();
        //Thread.sleep(2000);
        alert.accept();
    }

    public void enterPythonCode(String pythonCode) {
        enterCodeInEditor(pythonCode);
    }

    public void enterPythonCodeWithSpace(String pythonCode){
        enterCodeInEditor(" "+pythonCode);
    }


}
