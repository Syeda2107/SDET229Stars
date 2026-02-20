package com.numpyninja.dsalgo.stepdefinitions;

import com.numpyninja.dsalgo.pageobjects.QueuePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.junit.Assert;
import org.openqa.selenium.Alert;
import lombok.extern.slf4j.Slf4j;
import org.openqa.selenium.WebDriver;

import java.io.IOException;
import java.util.List;
import java.util.Map;

@Slf4j
public class QueueSteps {

    WebDriver driver;
    TestContext context;
    QueuePage queuePage;

    public QueueSteps(TestContext context) {
        this.context = context;
        this.driver = context.getDriver();
        this.queuePage = context.getQueuePage(); }

    @When("The user clicks the {string} button in Queue Panel")
    public void the_user_clicks_the_button_in_queue_panel(String buttonName) {
        queuePage.clickGettingStartedButton(buttonName); }

    @When("The user clicks {string} button")
    public void user_clicks_on_button(String buttonName) {
        queuePage.clickPageButton(buttonName); }

    @Then("The user should be redirected to {string} page")
    public void user_should_be_redirected_to_page(String pageName) {
        String actualTitle = queuePage.getPageTitle();
        Assert.assertTrue(actualTitle.contains(pageName)); }

    // ---------- Try Editor ----------
//    @When("The user clicks Try here button")
//    public void user_clicks_try_here() {
//        queuePage.clickTryHere(); }

//    @Then("The user should see a try editor with Run button")
//    public void user_should_see_try_editor() {
//        Assert.assertTrue(queuePage.isTryEditorDisplayed()); }

    // ---------- Run Button / Code Execution ----------

    @When("The user clicks Run button without entering code")
    public void user_clicks_run_without_code() {
        queuePage.clickRun(); }

//@When("user clicks on Run button")
//    public void user_clicks_on_run_button() {
//       queuePage.clickRunBtn();
//    }

    @When("the user clicks on Run button")  //*new
    public void the_user_clicks_on_run_button() {
        queuePage.clickRunBtn();
    }

    @When("The user writes invalid code in Editor and clicks the Run Button")
    public void user_writes_invalid_code_and_runs() {
        // Example invalid Python code
        String invalidCode = "print('Hello'"; // missing closing parenthesis
        queuePage.enterCode(invalidCode); queuePage.clickRun(); }

    @Then("The user should see an error message in alert window")
    public void user_should_see_error_message() {
        Alert alert = queuePage.switchToAlert();
        System.out.println("Alert message: " + alert.getText()); // optional: log it alert.accept();
         }

    @When("The user writes valid code in Editor and clicks the Run Button")
    public void user_writes_valid_code_and_runs() {
        String validCode = "print('Hello World')";
        queuePage.enterCode(validCode);
        queuePage.clickRun(); }

    @Then("The user should be able to see output in the console")
    public void user_should_see_output_in_console() {
        String output = queuePage.getOutput();
        System.out.println("Output: " + output); // optional: log it
        if(output.isEmpty()) {
            throw new AssertionError("Output is empty!");
        }
    }

    // ---------- Practice / Dropdown ----------

    @When("The user clicks on {string} link")
    public void user_clicks_link(String linkName) {
        queuePage.clickLink(linkName); }

    @When("The user selects {string} from data structures dropdown")
    public void user_selects_from_dropdown(String option) {
        queuePage.selectDropdown(option); }

    // ---------- Close Browser ----------

//    @Then("Close the browser")
//    public void close_the_browser() {
//        context.quitDriver(); }

//    @When("the user enters {string}")
//    public void the_user_enters(String pythonCode) {
//        queuePage.enterPythonCode(pythonCode);
//    }

//    @When("the user enters {string} with prefix space")
//    public void the_user_enters_with_prefix_space(String pythonCode) {
//    queuePage.enterPythonCodeWithSpace(pythonCode);
//    log.info("User enters python code in try editor,  Expected: {} ", pythonCode);
//    }

    @When("the user enters Python Code from {string} and {int}")  //new
    public void theUserEntersPythonCodeFromAndInTryEditor(String sheetName, int rowNumber)
        throws IOException, InvalidFormatException {
    List<Map<String,String>> testData = queuePage.readDataFromExcel(sheetName,rowNumber);
    String pythonCode = testData.get(rowNumber).get("PythonCode");
    queuePage.enterPythonCode(pythonCode);
    }

    @Then("the user should get output from {string} and {int} below Run button")   //new
    public void theUserShouldGetOutputFromAndBelowRunButton(String sheetName, int rowNumber)
        throws IOException, InvalidFormatException {
    List<Map<String,String>> testData = queuePage.readDataFromExcel(sheetName,rowNumber);
    String expectedOutput = testData.get(rowNumber).get("Output");
    String actualOutput = queuePage.getValue();
    Assert.assertEquals(actualOutput, expectedOutput);
    log.info("Validating try editor output,  Expected: {} ", expectedOutput);
    }

//    @Then("the user should get pop up message from {string} and {int}")
//    public void theUserShouldGetPopUpMessageFromAnd(String sheetName, int rowNumber)
//        throws IOException, InvalidFormatException {
//    List<Map<String,String>> testData = queuePage.readDataFromExcel(sheetName,rowNumber);
//    String expectedAlertMsg = testData.get(rowNumber).get("Popup Message");
//    String actualAlertMsg = queuePage.getPopUpMsg();
//    Assert.assertEquals(actualAlertMsg, expectedAlertMsg);
//    log.info("Validating try editor alert message,  Expected: {} ", expectedAlertMsg);
//    }

//    @When("the user enters Python Code from {string} and {int} with prefix space")
//    public void theUserEntersPythonCodeFromAndWithPrefixSpace(String sheetName, int rowNumber)
//        throws IOException, InvalidFormatException {
//    List<Map<String,String>> testData = queuePage.readDataFromExcel(sheetName,rowNumber);
//    String pythonCode = testData.get(rowNumber).get("PythonCode");
//    queuePage.enterPythonCodeWithSpace(pythonCode);
//    }
 }


