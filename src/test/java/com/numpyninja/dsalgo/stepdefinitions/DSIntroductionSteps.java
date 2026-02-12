package com.numpyninja.dsalgo.stepdefinitions;

import com.numpyninja.dsalgo.pageobjects.DSIntroductionPage;
import com.numpyninja.dsalgo.testbase.TestContext;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.PendingException;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;

import java.io.IOException;
import java.util.List;
import java.util.Map;

@Slf4j
public class DSIntroductionSteps {
    WebDriver driver;
    TestContext context;
    DSIntroductionPage dsIntroductionPage;

    public DSIntroductionSteps(TestContext context) {
        this.context = context;
        this.driver = context.getDriver();
        this.dsIntroductionPage = context.getDsIntroductionPage();
    }

    @When("the user enters valid Username and Password in the Login form")
    public void the_user_enters_valid_username_and_password_in_the_login_form(DataTable dataTable) {
        Map<String, String> credentials = dataTable.asMap(String.class, String.class);
        String username = credentials.get("Username");
        String pwd = credentials.get("Password");
        context.loginPage.enterCredentials(username, pwd);
    }

    @When("the user clicks on Get Started button below Data Structures - Introduction module")
    public void the_user_clicks_on_get_started_button_below_data_structures_introduction_module() {
        dsIntroductionPage.clickDsIntroGetStartbtn();
    }

    @When("the user clicks on time-complexity link in Data Structures - Introduction page")
    public void the_user_clicks_on_time_complexity_link_in_data_structures_introduction_page() {
        dsIntroductionPage.clickTimeComplexityLink();
    }

    @When("the user clicks on Try here button after scrolling down in time-complexity page")
    public void the_user_clicks_on_try_here_button_after_scrolling_down_in_time_complexity_page() {
        dsIntroductionPage.clickTryHereBtn();
    }

    @Then("the page url should be displayed as {string}")
    public void the_page_url_should_be_displayed_as(String expectedCurrentPageUrl) throws InterruptedException {
        String actualCurrentPageUrl = dsIntroductionPage.getcurrentpageUrl();
        Assert.assertEquals(actualCurrentPageUrl, expectedCurrentPageUrl);
        log.info("Validating the current page url,  Expected: {} ", expectedCurrentPageUrl);
    }

    @When("user clicks on Run button")
    public void user_clicks_on_run_button() {
        dsIntroductionPage.clickRunBtn();
    }

    @Then("the user should get output as {string} below Run button")
    public void the_user_should_get_output_as_below_run_button(String expectedOutput) {
        String actualOutput = dsIntroductionPage.getValue();
        Assert.assertEquals(actualOutput, expectedOutput);
        log.info("Validating try editor output,  Expected: {} ", expectedOutput);
    }

    @Then("the user should get pop up message as {string}")
    public void the_user_should_get_pop_up_message_as(String expectedAlertMsg) throws InterruptedException {
        String actualAlertMsg = dsIntroductionPage.getPopUpMsg();
        Assert.assertEquals(actualAlertMsg, expectedAlertMsg);
        log.info("Validating try editor alert message,  Expected: {} ", expectedAlertMsg);
    }

    @Then("user clicks on OK button in the popup")
    public void user_clicks_on_ok_button_in_the_popup() throws InterruptedException {
        dsIntroductionPage.clickPopUpOkBtn();
    }

    @When("the user enters {string}")
    public void the_user_enters(String pythonCode) {
        dsIntroductionPage.enterPythonCode(pythonCode);
    }

    @Then("the user should not able to see output below Run button")
    public void the_user_should_not_able_to_see_output_below_run_button() {
        String output = dsIntroductionPage.getValue();
        Assert.assertTrue(output.isEmpty());
    }

    @When("the user clicks on Practice Questions link in Time Complexity page")
    public void the_user_clicks_on_practice_questions_link_in_time_complexity_page() {
        dsIntroductionPage.clickPracticeLink();
    }

    @When("the user clicks on Sign out link")
    public void the_user_clicks_on_sign_out_link() {
        context.loginPage.clickSignOutLink();
    }

    @When("the user enters {string} with prefix space")
    public void theUserEntersWithprefixSpace(String pythonCode) {
        dsIntroductionPage.enterPythonCodeWithSpace(pythonCode);
        log.info("User enters python code in try editor,  Expected: {} ", pythonCode);
    }

    @When("the user enters Python Code from {string} and {int} in try editor")
    public void theUserEntersPythonCodeFromAndInTryEditor(String sheetName, int rowNumber) throws IOException, InvalidFormatException {
        List<Map<String, String>> testData = dsIntroductionPage.readDataFromExcel(sheetName, rowNumber);
        String pythonCode = testData.get(rowNumber).get("PythonCode");
        dsIntroductionPage.enterPythonCode(pythonCode);
    }

    @Then("the user should get pop up message from {string} and {int}")
    public void theUserShouldGetPopUpMessageFromAnd(String sheetName, int rowNumber) throws IOException, InvalidFormatException, InterruptedException {
        List<Map<String, String>> testData = dsIntroductionPage.readDataFromExcel(sheetName, rowNumber);
        String expectedAlertMsg = testData.get(rowNumber).get("Popup Message");
        String actualAlertMsg = dsIntroductionPage.getPopUpMsg();
        Assert.assertEquals(actualAlertMsg, expectedAlertMsg);
        log.info("Validating try editor alert message,  Expected: {} ", expectedAlertMsg);
    }

    @Then("the user should get output from {string} and {int} below Run button")
    public void theUserShouldGetOutputFromAndBelowRunButton(String sheetName, int rowNumber) throws IOException, InvalidFormatException {
        List<Map<String, String>> testData = dsIntroductionPage.readDataFromExcel(sheetName, rowNumber);
        String expectedOutput = testData.get(rowNumber).get("Output");
        String actualOutput = dsIntroductionPage.getValue();
        Assert.assertEquals(actualOutput, expectedOutput);
        log.info("Validating try editor output,  Expected: {} ", expectedOutput);
    }

    @When("the user enters Python Code from {string} and {int} with prefix space")
    public void theUserEntersPythonCodeFromAndWithPrefixSpace(String sheetName, int rowNumber) throws IOException, InvalidFormatException {
        List<Map<String, String>> testData = dsIntroductionPage.readDataFromExcel(sheetName, rowNumber);
        String pythonCode = testData.get(rowNumber).get("PythonCode");
        dsIntroductionPage.enterPythonCodeWithSpace(pythonCode);
    }
}
