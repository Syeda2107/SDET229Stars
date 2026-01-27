package com.numpyninja.dsalgo.stepdefinitions;

import com.numpyninja.dsalgo.pageobjects.QueuePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Alert;

public class QueueSteps {

    TestContext context;
    QueuePage queuePage;

    public QueueSteps(TestContext context) {
        this.context = context;
        this.queuePage = context.getQueuePage();
    }

    // ---------- Navigation ----------

//    @Given("User navigates to Queue page from Home")
//    public void user_navigates_to_queue_page_from_home() {
//        context.homePage.clickGetStartedBtn("Queue");
//    }

//    @When("the user clicks on Get Started button in the DsAlgo Portal")
//    public void the_user_clicks_on_get_started_button_in_the_ds_algo_portal() {
//        context.homePage.clickGetStartedBtn("Queue");
//    }

    @When("The user clicks the {string} button in Queue Panel")
    public void the_user_clicks_the_button_in_queue_panel(String buttonName) {
        queuePage.clickGettingStartedButton(buttonName);
    }

    @When("The user clicks {string} button")
    public void user_clicks_on_button(String buttonName) {
        queuePage.clickPageButton(buttonName);
    }

    @Then("The user should be redirected to {string} page")
    public void user_should_be_redirected_to_page(String pageName) {
        String actualTitle = queuePage.getPageTitle();
        Assert.assertTrue(actualTitle.contains(pageName));
    }

    // ---------- Try Editor ----------

    @When("The user clicks Try here button")
    public void user_clicks_try_here() {
        queuePage.clickTryHere();
    }

    @Then("The user should see a try editor with Run button")
    public void user_should_see_try_editor() {
        Assert.assertTrue(queuePage.isTryEditorDisplayed());
    }

    // ---------- Run Button / Code Execution ----------

    @When("The user clicks Run button without entering code")
    public void user_clicks_run_without_code() {
        queuePage.clickRun();
    }

//    @When("The user writes invalid code in Editor and clicks Run")
//    public void user_writes_invalid_code_and_runs() {
//        queuePage.enterCode("invalid code!");
//        queuePage.clickRun();
//    }

    @When("The user writes invalid code in Editor and clicks the Run Button")
    public void user_writes_invalid_code_and_runs() {
        // Example invalid Python code
        String invalidCode = "print('Hello'";  // missing closing parenthesis
        queuePage.enterCode(invalidCode);
        queuePage.clickRun();
    }

//    @When("The user writes valid code in Editor and clicks Run")
//    public void user_writes_valid_code_and_runs() {
//        queuePage.enterCode("print('Hello World')");
//        queuePage.clickRun();
//    }

//    @Then("The user should see an error message in alert window")
//    public void user_should_see_error_alert() {
//        Alert alert = queuePage.switchToAlert();
//        Assert.assertTrue(alert.getText().length() > 0);
//        alert.accept();
//    }

    @Then("The user should see an error message in alert window")
    public void user_should_see_error_message() {
        Alert alert = queuePage.switchToAlert();
        System.out.println("Alert message: " + alert.getText()); // optional: log it
        alert.accept();
    }

//    @Then("The user should see output in the console")
//    public void user_should_see_output() {
//        Assert.assertTrue(queuePage.isOutputDisplayed());
//    }

    @When("The user writes valid code in Editor and clicks the Run Button")
    public void user_writes_valid_code_and_runs() {
        String validCode = "print('Hello World')";
        queuePage.enterCode(validCode);
        queuePage.clickRun();
    }

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
        queuePage.clickLink(linkName);
    }

    @When("The user selects {string} from data structures dropdown")
    public void user_selects_from_dropdown(String option) {
        queuePage.selectDropdown(option);
    }

    // ---------- Close Browser ----------

    @Then("Close the browser")
    public void close_the_browser() {
        context.quitDriver();
    }
}
