package com.numpyninja.dsalgo.stepdefinitions;

import com.numpyninja.dsalgo.pageobjects.StackPage;
import com.numpyninja.dsalgo.testbase.BasePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import com.numpyninja.dsalgo.utilities.ExcelReader;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.openqa.selenium.Alert;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;
import lombok.extern.slf4j.Slf4j;

import java.io.IOException;
import java.util.List;
import java.util.Map;

@Slf4j
public class StackSteps {

    WebDriver driver;
    TestContext context;
    StackPage stackPage;
    private ExcelReader excelReader;

    private Map<String, String> currentRowData;   // store current row data
    private final String excelPath = System.getProperty("user.dir") + "/TestData/DSAlgo_Data_Driven_Testing.xlsx";


    public StackSteps(TestContext context) {
        this.context = context;
        this.driver = context.getDriver();
        this.stackPage = context.getStackPage();
        this.excelReader = new ExcelReader();
    }

    //--------------Common methods--------------

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

    // ---------------- Navigation Buttons ----------------


    @When("The user clicks Get Started button in Stack")
    public void user_clicks_get_started_button_in_stack() {
        stackPage.clickStackGetStarted();
    }

    @When("The user clicks Getting Started button in Stack")
    public void user_clicks_getting_started_button_in_stack() {
        stackPage.clickStackGetStarted();
    }

    // ---------------- Page Titles ----------------

    @When("The user clicks Operations in Stack button")
    public void user_clicks_operations_in_stack_button() {
        stackPage.clickOperationsInStack();
    }

    @When("The user clicks Implementation button")
    public void user_clicks_implementation_button() {
        stackPage.clickImplementationLink();
    }

    @When("The user clicks Applications button")
    public void user_clicks_applications_button() {
        stackPage.clickApplicationsLink();
    }

    @When("The user clicks Try here button in Stack")
    public void user_clicks_try_here_button_in_stack() {
        stackPage.clickTryHereBtn();
    }

    @When("The user clicks on Try here link in Stack submodule")
    public void clickTryHere() {
        context.getStackPage().clickTryHere();
    }

    @Then("The page title should be displayed as {string}")
    public void page_title_should_be(String expectedTitle) {
        String actualTitle = stackPage.getPageTitle();
        Assert.assertTrue(actualTitle.contains(expectedTitle),
                "Expected page title to contain: " + expectedTitle + " but found: " + actualTitle);
    }


    @Then("The user should be redirected to {string} on Stack Submodule")
    public void redirected_to_page_on_stack_submodule(String pageName) {
        String actualTitle = stackPage.getPageTitle();
        Assert.assertTrue(actualTitle.contains(pageName),
                "Expected page title to contain: " + pageName + " but found: " + actualTitle);
    }

    @Then("The user should be redirected to {string} page on Stack Submodule")
    public void user_should_be_redirected_to_page_on_stack_submodule(String pageName) {
        String actualTitle = stackPage.getPageTitle();
        Assert.assertTrue(actualTitle.contains(pageName),
                "Expected page title to contain: " + pageName + " but got: " + actualTitle);
    }

    // ---------------- Try Editor / Run ----------------

    @Then("The user should be redirected to a page having a try editor with a Run button on Stack Submodule")
    public void user_should_see_try_editor_on_stack() {
        Assert.assertTrue(stackPage.isTryEditorDisplayed());
        Assert.assertTrue(stackPage.isRunButtonDisplayed());
    }

    @When("The user enters code from {string} and {int} in Try Editor on Stack submodule and clicks Run")
    public void enterCodeInStackTryEditor(String sheetName, int rowNumber) throws Exception {

        loadRowData(sheetName, rowNumber);   // reuse same method

        String code = currentRowData.get("PythonCode");

        context.getStackPage().runPracticeCode(code);

        System.out.println("Sheet Name: " + sheetName);
        System.out.println("Row Data: " + currentRowData);

    }

    @Then("The Try Editor on Stack submodule should display result from {string} and {int}")
    public void verifyStackTryEditorResult(String sheetName, int rowNumber) {

        String expectedResult = currentRowData.get("Output");
        String popupMessage = currentRowData.get("Popup Message");

        if (isAlertPresent()) {
            String alertText = driver.switchTo().alert().getText();
            driver.switchTo().alert().accept();
            Assert.assertTrue(alertText.contains(popupMessage));
        } else {
            String actualResult = context.getStackPage().getTryEditorOutput();
            Assert.assertEquals(expectedResult.trim(), actualResult.trim());
        }
    }

    @Then("The user should be able to see output in the Stack console")
    public void user_should_see_output_in_console() {
        String output = stackPage.getOutput();
        System.out.println("Output: " + output);
        if(output.isEmpty()) {
            throw new AssertionError("Output is empty!");
        }
    }

   // ---------------- Data-driven Python Code ----------------

    @When("The user enters Python Code from {string} and {int} in Stack Try Editor")
    public void theUserEntersPythonCodeFromAndInStackTryEditor(String sheetName, int rowNumber)
            throws IOException, InvalidFormatException {
        List<Map<String,String>> testData = stackPage.readDataFromExcel(sheetName,rowNumber);
        String pythonCode = testData.get(rowNumber).get("PythonCode");
        stackPage.enterPythonCode(pythonCode);
    }

    @Then("the user should get output from {string} and {int} in Stack Try Editor")
    public void theUserShouldGetOutputFromAndInStackTryEditor(String sheetName, int rowNumber)
            throws IOException, InvalidFormatException {
        List<Map<String,String>> testData = stackPage.readDataFromExcel(sheetName,rowNumber);
        String expectedOutput = testData.get(rowNumber).get("Output");
        String actualOutput = stackPage.getOutput();
        Assert.assertEquals(actualOutput, expectedOutput);
        log.info("Validating Stack try editor output, Expected: {} ", expectedOutput);
    }
}