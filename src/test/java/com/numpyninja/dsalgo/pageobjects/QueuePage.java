package com.numpyninja.dsalgo.pageobjects;

import com.numpyninja.dsalgo.testbase.BasePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import com.numpyninja.dsalgo.utilities.ExcelReader;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.IOException;
import java.io.InputStream;
import java.time.Duration;
import java.util.List;
import java.util.Map;

public class QueuePage extends BasePage {

    public QueuePage(WebDriver driver, TestContext context) {
        super(driver, context);
    }

    // ---------- Locators ----------

    @FindBy(xpath = "//a[contains(@href,'queue')and contains (text(),'Get')]")
    WebElement queueGetStartedBtn;

    @FindBy(xpath = "//a[@href='implementation-lists']")
    WebElement implementationListsLink;

    @FindBy(xpath = "//a[contains(@href,'implementation-collections')]")
     WebElement implementationCollectionsLink;

    @FindBy(xpath = "//a[@href='Implementation-array']")
    WebElement implementationArrayLink;

    @FindBy(xpath = "//a[@href='QueueOp']")
    WebElement queueOperationsBtn;

    @FindBy(xpath = "//a[contains(@href,'tryEditor')]")
    WebElement tryHereBtn;

    @FindBy(xpath = "//button[@type='button' and text()='Run']")
    WebElement runBtn;

    @FindBy(xpath = "//pre[@id='output']")
    WebElement output;

    @FindBy(xpath = "//div[contains(@class,'CodeMirror')]")
    WebElement codeEditor;

    @FindBy(id = "navbarDropdown")
    WebElement dataStructureDropdown;

    private By practiceQuestionsLink =
            By.linkText("Practice Questions");


    // ---------- Actions ----------

    public void clickQueueGetStarted() {
        waitForElementToClick(queueGetStartedBtn, 10);
//        queueGetStartedBtn.click();
    }

//    public void ScrollDown(){
//        JavascriptExecutor js = ((JavascriptExecutor) driver);
//        js.executeScript("window.scrollBy(0,500)");
//    }


    // Individual Queue implementation links

    public void clickImplementationOfQueueInPython() {

        waitForElementToClick(implementationListsLink, 10);
        waitForPageToLoad();
    }

    public void clickImplementationUsingCollectionsQueue() {

        waitForElementToClick(implementationCollectionsLink, 10);
        waitForPageToLoad();
    }

    public void clickImplementationUsingArrays() {
        waitForElementToClick(implementationArrayLink, 10);
        waitForPageToLoad();
    }

    public void clickQueueOperations() {

        waitForElementToClick(queueOperationsBtn, 10);
        waitForPageToLoad();
    }


    public void clickTryHere() {
            waitForElementToClick(tryHereBtn, 10);
    }

    public boolean isTryEditorDisplayed() {
        return codeEditor.isDisplayed();
    }

    public boolean isRunButtonDisplayed() {
        return runBtn.isDisplayed();
    }

    public void clickPracticeQuestionsLink() {
        driver.findElement(practiceQuestionsLink).click();
    }


    public void enterCode(String code) {
        JavascriptExecutor js = (JavascriptExecutor) driver;

        js.executeScript(
                "document.querySelector('.CodeMirror').CodeMirror.setValue(arguments[0]);",
                code
        );
    }

    public void enterPythonCode(String pythonCode) {
        enterCode(pythonCode);
    }

        // Page info
    public String getPageTitle() {
        return driver.getTitle();
    }

    public String getOutput() {
        return output.getText();
    }

    // Dropdown

    public void selectDropdown(String option) {

        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));

        // Click dropdown
        WebElement dropdown = wait.until(
                ExpectedConditions.elementToBeClickable(
                        By.xpath("//a[normalize-space()='Data Structures']")
                )
        );
        dropdown.click();

        // Click option
        WebElement item = wait.until(
                ExpectedConditions.elementToBeClickable(By.linkText(option))
        );
        item.click();
    }

    public List<Map<String, String>> readDataFromExcel(String sheetName, int rowNumber)
        throws IOException, InvalidFormatException {

        String excelPath = System.getProperty("user.dir")
            + "/TestData/DSAlgo_Data_Driven_Testing.xlsx";

        return new ExcelReader().getData(excelPath, sheetName);
        }
}