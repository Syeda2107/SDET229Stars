package com.numpyninja.dsalgo.stepdefinitions;

import com.numpyninja.dsalgo.pageobjects.GraphPage;
import com.numpyninja.dsalgo.pageobjects.QueuePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.testng.Assert;
import org.openqa.selenium.Alert;
import lombok.extern.slf4j.Slf4j;
import org.openqa.selenium.WebDriver;

import java.io.IOException;
import java.util.List;
import java.util.Map;

@Slf4j
public class QueueSteps {

    WebDriver driver;
    QueuePage queuePage;
    GraphPage graphPage;
    private String buttonName;
    public TestContext context;

    public QueueSteps(TestContext context) {
        this.context = context;
        this.driver = context.getDriver();
        this.queuePage = context.getQueuePage();
        this.graphPage = context.getGraphPage();
    }


    @When("The user clicks Getting Started button in Queue")
    public void user_clicks_getting_started_button_in_queue() {

        queuePage.clickQueueGetStarted();

    }

    @When("The user clicks Implementation of Queue in Python button")
    public void user_clicks_implementation_of_queue_in_python_button() {
        graphPage.ScrollDown();
        queuePage.clickImplementationOfQueueInPython();
    }

    @When("The user clicks Implementation using collections queue button")
    public void user_clicks_implementation_using_collections_queue_button() {
        graphPage.ScrollDown();
        queuePage.clickImplementationUsingCollectionsQueue();
    }

    @When("The user clicks Implementation using Arrays button")
    public void user_clicks_implementation_using_arrays_button() {
        graphPage.ScrollDown();
        queuePage.clickImplementationUsingArrays();
    }

    @When("The user clicks Queue Operations button")
    public void user_clicks_queue_operations_button() {
        graphPage.ScrollDown();
        queuePage.clickQueueOperations();
    }

    @Then("The user should be directed to {string} page on Queue Submodule")
    public void user_should_be_directed_to_page_on_queue_submodule(String pageName) {
        String actualTitle = queuePage.getPageTitle();
        Assert.assertTrue(actualTitle.contains(pageName));
    }

    @Then("The user should be redirected to a page having a try editor with a Run button on Queue Submodule")
    public void user_should_see_try_editor_on_queue_submodule() {
        Assert.assertTrue(queuePage.isTryEditorDisplayed());
        Assert.assertTrue(queuePage.isRunButtonDisplayed());
    }

    @Then("The user should be redirected to {string} page")
    public void user_should_be_redirected_to_page(String pageName) {
        String actualTitle = queuePage.getPageTitle();
        Assert.assertTrue(actualTitle.contains(pageName),
                "Expected page title to contain: " + pageName + " but found: " + actualTitle);
    }

    // ---------- Dropdown / Practice ----------
    @When("The user selects {string} from Queue data structures dropdown")
    public void user_selects_from_dropdown(String option) {
        queuePage.selectDropdown(option);
    }

    @When("The user clicks on Try here link in Queue Submodule")
    public void clickTryHere() {
        context.getQueuePage().clickTryHere();
    }

    @When("The user clicks the Queue Submodule \"Practice Questions\" button")
    public void clickPracticeQuestions() {
        queuePage.clickPracticeQuestionsLink();
    }

    // ---------- Data-driven Python Code ----------
    @When("The user enters Python Code from {string} and {int} in Queue Try Editor")
    public void theUserEntersPythonCodeFromAndInQueueTryEditor(String sheetName, int rowNumber)
            throws IOException, InvalidFormatException {
        List<Map<String,String>> testData = queuePage.readDataFromExcel(sheetName,rowNumber);
        String pythonCode = testData.get(rowNumber).get("PythonCode");
        queuePage.enterPythonCode(pythonCode);
    }

    @Then("the user should get output from {string} and {int} in Queue Try Editor")
    public void theUserShouldGetOutputFromAndInQueueTryEditor(String sheetName, int rowNumber)
            throws IOException, InvalidFormatException {
        List<Map<String,String>> testData = queuePage.readDataFromExcel(sheetName,rowNumber);
        String expectedOutput = testData.get(rowNumber).get("Output");
        String actualOutput = queuePage.getOutput();
        Assert.assertEquals(actualOutput, expectedOutput);
        log.info("Validating Queue try editor output, Expected: {} ", expectedOutput);
    }
}