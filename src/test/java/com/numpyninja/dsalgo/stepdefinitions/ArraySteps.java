package com.numpyninja.dsalgo.stepdefinitions;

import com.numpyninja.dsalgo.testbase.TestContext;
import com.numpyninja.dsalgo.utilities.ExcelReader;
import io.cucumber.java.en.*;
import org.junit.Assert;
import org.openqa.selenium.Alert;
import org.openqa.selenium.WebDriver;

import java.util.List;
import java.util.Map;

public class ArraySteps {

    private TestContext testContext;
    private WebDriver driver;
    private ExcelReader excelReader;

    private Map<String, String> currentRowData;   // store current row data
    private final String excelPath = System.getProperty("user.dir") + "/TestData/DSAlgo_Data_Driven_Testing.xlsx";

    public ArraySteps(TestContext context) {
        this.testContext = context;
        this.driver = context.getDriver();
        this.excelReader = new ExcelReader();
    }

    // =====================================================
    // COMMON METHOD - Load Excel Row
    // =====================================================
    private void loadRowData(String sheetName, int rowNumber) throws Exception {
        List<Map<String, String>> data = excelReader.getData(excelPath, sheetName);

        //  Check row exists
        if (rowNumber < 0 || rowNumber >= data.size()) {
            throw new RuntimeException(
                    "Row number " + rowNumber + " is out of bounds for sheet " + sheetName + " (total rows: " + data.size() + ")"
            );
        }

        currentRowData = data.get(rowNumber);

        // trim all values to remove accidental spaces
        currentRowData.replaceAll((k, v) -> v != null ? v.trim() : v);
    }

    private boolean isAlertPresent() {
        try {
            Alert alert = driver.switchTo().alert();
            return alert != null;
        } catch (Exception e) {
            return false;
        }
    }

    // Load multi-line Excel row for Practice Questions
    private void loadPracticeQuestionRow(String sheetName, int rowNumber) throws Exception {
        List<Map<String, String>> practiceData = excelReader.getDataWithMultiLine(excelPath, sheetName);

        if (rowNumber < 0 || rowNumber >= practiceData.size()) {
            throw new RuntimeException(
                    "Row number " + rowNumber + " is out of bounds for sheet " + sheetName + " (total rows: " + practiceData.size() + ")"
            );
        }

        currentRowData = practiceData.get(rowNumber);

        // Optional: trim all values
        currentRowData.replaceAll((k, v) -> v != null ? v.trim() : v);
    }

    // =====================================================
    // SCENARIO 1 - TRY EDITOR
    // =====================================================

    @When("the user clicks on Get Started button Array")
    public void clickArrayGetStarted() {
        testContext.getArrayPage().clickArrayGetStarted();
    }

    @When("the user clicks on the Array submodule {string}")
    public void clickSubmodule(String submoduleName) {
        testContext.getArrayPage().clickSubmodule(submoduleName);
    }

    @When("the user clicks on Try Here button on Array submodule")
    public void clickTryHere() {
        testContext.getArrayPage().clickTryHere();
    }

    @When("the user enters code from {string} and {int} in Try Editor on Array submodule and clicks Run")
    public void enterCodeInTryEditor(String sheetName, int rowNumber) throws Exception {

        loadRowData(sheetName, rowNumber);

        String code = currentRowData.get("Code");
        testContext.getArrayPage().runCodeInTryEditor(code);
        System.out.println("Sheet Name: " + sheetName);
        System.out.println("Row Data: " + currentRowData);
    }

    @Then("the Try Editor on Array submodule should display result from {string} and {int}")
    public void verifyTryEditorResult(String sheetName, int rowNumber) {

        String expectedResult = currentRowData.get("ExpectedResult");

        if (isAlertPresent()) {
            String alertText = driver.switchTo().alert().getText();
            driver.switchTo().alert().accept();
            Assert.assertTrue(alertText.contains(expectedResult));
        } else {
            String actualResult = testContext.getArrayPage().getTryEditorOutput();
            Assert.assertEquals(expectedResult.trim(), actualResult.trim());
        }
    }

    // =====================================================
    // PRACTICE QUESTIONS
    // =====================================================

    @Given("the user is on the {string} page for Array module")
    public void userIsOnSubmodulePage(String submoduleName) {
        testContext.getArrayPage().clickSubmodule(submoduleName);
    }

    @When("the user clicks the Array Practice question {string} button")
    public void clickPracticeQuestionsButton(String buttonName) {
        testContext.getArrayPage().clickPracticeButton(buttonName);
    }

    @When("the user selects the Array Practice question {string} link")
    public void selectPracticeQuestion(String questionName) {
        testContext.getArrayPage().clickQuestion(questionName);
    }

    // ================= RUN =================

    @When("the user enters run code from {string} and {int} and clicks Run on Array Practice question")
    public void runPracticeCode(String sheetName, int rowNumber) throws Exception {
        loadPracticeQuestionRow(sheetName, rowNumber);

        String code = currentRowData.get("Code");
        testContext.getArrayPage().runPracticeCode(code);
        System.out.println("Code being injected:");
        System.out.println(code);
    }

    @Then("the Practice Question system should display run result from {string} and {int} for on Array Practice question")
    public void verifyPracticeRunResult(String sheetName, int rowNumber) {

        String expectedResult = currentRowData.get("RunResult");

        if (isAlertPresent()) {
            String alertText = driver.switchTo().alert().getText();
            driver.switchTo().alert().accept();
            Assert.assertTrue(alertText.contains(expectedResult));
            System.out.println("[RUN] Practice Question ALERT seen: " + alertText);
        } else {
            String actualResult = testContext.getArrayPage().getPracticeOutput();
            Assert.assertEquals(expectedResult.trim(), actualResult.trim());
            System.out.println("[RUN] OUTPUT seen: " + actualResult);
        }
    }

    // ================= SUBMIT =================

    @When("the user enters submit code from {string} and {int} and clicks the {string} button")
    public void submitPracticeCode(String sheetName, int rowNumber, String buttonName) throws Exception {

        loadPracticeQuestionRow(sheetName, rowNumber);

        String code = currentRowData.get("Code");

        if (buttonName.equalsIgnoreCase("Submit")) {
            testContext.getArrayPage().submitPracticeCode(code);
        }
    }

    @Then("the system should display submit result from {string} and {int} for on Array Practice question")
    public void verifySubmissionResult(String sheetName, int rowNumber) {

        String expectedMessage = currentRowData.get("SubmitResult");

        if (isAlertPresent()) {
            String alertText = driver.switchTo().alert().getText();
            driver.switchTo().alert().accept();
            Assert.assertTrue(alertText.contains(expectedMessage));
        } else {
            String actualMessage = testContext.getArrayPage().getSubmissionMessage();
            Assert.assertTrue(actualMessage.contains(expectedMessage));
        }
    }
}
