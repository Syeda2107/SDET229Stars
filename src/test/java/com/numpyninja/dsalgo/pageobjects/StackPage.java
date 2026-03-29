package com.numpyninja.dsalgo.pageobjects;

import com.numpyninja.dsalgo.testbase.BasePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import com.numpyninja.dsalgo.utilities.ExcelReader;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.time.Duration;
import java.util.List;
import java.util.Map;

public class StackPage extends BasePage {

    private static final Logger log = LoggerFactory.getLogger(StackPage.class);


    public StackPage(WebDriver driver, TestContext context) throws IOException, InvalidFormatException {
        super(driver, context);
    }

    // ---------- Locators ----------
    @FindBy(xpath = "//a[@href='stack']") // Stack panel Get Started
     WebElement stackGetStartedBtn;

    @FindBy(xpath = "//a[@href='operations-in-stack']")
    WebElement operationsInStackLink;

    @FindBy(xpath = "//a[@href='implementation']")
    WebElement implementationLink;

    @FindBy(xpath = "//a[@href='stack-applications']")
    WebElement applicationsLink;

    @FindBy(xpath = "//a[contains(@href,'tryEditor')]")
    WebElement tryHereBtn;

    @FindBy(xpath = "//button[text()='Run']")
    WebElement runBtn;

    @FindBy(xpath = "//a[@class='list-group-item']")
    private List<WebElement> practiceQuestionLinks;

    @FindBy(xpath = "//*[@id='answer_form']/button")
    private WebElement runBtnPractice;

    @FindBy(xpath = "//div[contains(@class,'CodeMirror')]")
    WebElement codeEditor;

    @FindBy(xpath = "//pre[@id='output']")
    WebElement output;

    @FindBy(id = "navbarDropdown")
    WebElement dataStructureDropdown;

        // ---------- Actions ----------

    private void clickElement(WebElement element) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(15));
        wait.until(ExpectedConditions.visibilityOf(element));

        ((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", element);
        wait.until(ExpectedConditions.elementToBeClickable(element));

        try {
            element.click();
        } catch (ElementClickInterceptedException e) {
            ((JavascriptExecutor) driver).executeScript("arguments[0].click();", element);
        }
    }

    public void clickStackGetStarted() {
        waitForElementToClick(stackGetStartedBtn, 10);
    }

    public void clickOperationsInStack() {
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

    public void clickTryHere() {
        waitForElementToClick(tryHereBtn, 10);
    }

    public void clickRun() {
        waitForElementToClick(runBtn, 10);
    }

    public void clickRunBtn() {
        waitForElementToClick(runBtn, 10);
    }

    public void enterCode(String pythonCode) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(15));
        WebElement editor = wait.until(ExpectedConditions.visibilityOf(codeEditor));
        editor.clear();
        editor.sendKeys(pythonCode);
    }

    public void enterPythonCode(String pythonCode) {
        enterCode(pythonCode);
    }

    public void enterPythonCodeWithSpace(String pythonCode) {
        enterCode(" " + pythonCode);
    }

    public boolean isTryEditorDisplayed() {
        return codeEditor.isDisplayed();
    }

    public boolean isRunButtonDisplayed() {
        return runBtn.isDisplayed();
    }

    public String getOutput() {
        return output.getText();
    }

    public String getPageTitle() {
        return driver.getTitle();
    }

    public void selectDropdown(String option) {
        clickElement(dataStructureDropdown);
        WebElement item = driver.findElement(By.linkText(option));
        clickElement(item);
    }  // now


    public List<Map<String, String>> readDataFromExcel(String sheetName, int rowNumber) throws IOException, InvalidFormatException {
        String excelPath = System.getProperty("user.dir") + "/src/test/resources/TestData/DSAlgo_Data_Driven_Testing.xlsx";
        return new com.numpyninja.dsalgo.utilities.ExcelReader().getData(excelPath, sheetName);
    }

    public String getTryEditorOutput() {
        return output.getText();
    }

    public void runPracticeCode(String code) {
        enterCodeInEditor(code);
        waitForElementToClick(runBtnPractice, 5);
        log.info("Clicked Run in Practice Question");
    }
}