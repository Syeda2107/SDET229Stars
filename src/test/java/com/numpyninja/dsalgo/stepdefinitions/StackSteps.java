package com.numpyninja.dsalgo.stepdefinitions;

import com.numpyninja.dsalgo.pageobjects.StackPage;
import com.numpyninja.dsalgo.testbase.TestContext;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.*;
import lombok.extern.slf4j.Slf4j;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;

import java.util.Map;

@Slf4j
public class StackSteps {

    WebDriver driver;
    TestContext context;
    StackPage stackPage;

    public StackSteps(TestContext context) {
        this.context = context;
        this.driver = context.getDriver();
        this.stackPage = context.getStackPage();
    }

    @Given("User launches the browser and enters the DsAlgo application url")
    public void user_launches_the_browser_and_enters_the_ds_algo_application_url() {
        context.launchApplication();
        log.info("DsAlgo application launched");
    }

    @When("the user clicks on Get Started button in the DsAlgo Portal")
    public void the_user_clicks_on_get_started_button_in_the_ds_algo_portal() {
        context.homePage.clickGetStartedBtn("Stack");
    }

    @When("user clicks on Sign in link in the Home page")
    public void user_clicks_on_sign_in_link_in_the_home_page() {
        context.homePage.clickSignInLink();
    }

    @When("the user enters valid Username and Password in the Login form")
    public void the_user_enters_valid_username_and_password_in_the_login_form(DataTable dataTable) {
        Map<String, String> credentials = dataTable.asMap(String.class, String.class);
        context.loginPage.enterCredentials(
                credentials.get("Username"),
                credentials.get("Password")
        );
    }

    @When("user clicks on Login button")
    public void user_clicks_on_login_button() {
        context.loginPage.clickLoginBtn();
    }

    @Then("The page title should be displayed as {string}")
    public void the_page_title_should_be_displayed_as(String expectedTitle) {
        Assert.assertEquals(driver.getTitle(), expectedTitle);
    }

    @Given("The user is in the Home page after Sign in")
    public void the_user_is_in_the_home_page_after_sign_in() {
        Assert.assertTrue(driver.getTitle().contains("NumpyNinja"));
    }

    @When("The user clicks the {string} button in Stack Panel")
    public void the_user_clicks_the_button_in_stack_panel(String buttonName) {
        stackPage.clickStackGetStartedBtn();
        log.info("Clicked Stack Get Started button");
    }

    @Then("The user should be directed to {string} Data Structure Page")
    public void the_user_should_be_directed_to_data_structure_page(String expectedUrl) {
        Assert.assertEquals(driver.getCurrentUrl(), expectedUrl);
    }

    @When("The user enters Python code {string} in the Try Editor")
    public void the_user_enters_python_code_in_the_try_editor(String pythonCode) {
        stackPage.enterPythonCode(pythonCode);
    }

    @When("The user enters Python code with a space {string} in the Try Editor")
    public void the_user_enters_python_code_with_space_in_the_try_editor(String pythonCode) {
        stackPage.enterPythonCodeWithSpace(pythonCode);
    }

//    @When("the user enters Python Code from {string} and {int} with prefix space")
//    public void theUserEntersPythonCodeFromAndWithPrefixSpace(String sheetName, int rowNumber) throws IOException {
//        List<Map<String, String>> testData = stackPage.readDataFromExcel(sheetName, rowNumber);
//        String pythonCode = testData.get(rowNumber).get("PythonCode");
//        stackPage.enterPythonCodeWithSpace(pythonCode);
//    }  to read data from excel sheet
}
