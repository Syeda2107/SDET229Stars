package com.numpyninja.dsalgo.stepdefinitions;

import com.numpyninja.dsalgo.pageobjects.LoginPage;
import com.numpyninja.dsalgo.testbase.TestContext;
import io.cucumber.java.PendingException;
import io.cucumber.java.en.And;
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
public class LoginSteps {
    WebDriver driver;
    TestContext context;
    LoginPage loginPage;
    String username;

    public LoginSteps(TestContext context) {
        this.context = context;
        this.driver = context.getDriver();
        this.loginPage = context.getLoginPage();
    }

    @When("user clicks on Sign in link in the Home page")
    public void user_clicks_on_sign_in_link_in_the_home_page() {
        loginPage.clickSignInLink();
    }

    @When("the user enters valid {string} and {string} in the Login form")
    public void the_user_enters_valid_and_in_the_login_form(String username, String password) {
        this.username=username;
        loginPage.enterCredentials(username,password);
    }

    @When("user clicks on Login button")
    public void user_clicks_on_login_button() {
        loginPage.clickLoginBtn();
    }

    @Then("user should successfully logged in and get success message as {string}")
    public void user_should_successfully_logged_in_and_get_success_message_as(String expectedLoggedInSuccessMsg){
        String actualLoggedInSuccessMsg=context.homePage.getAlertMsg();
        Assert.assertEquals(actualLoggedInSuccessMsg,expectedLoggedInSuccessMsg);
        log.info("Validating the logged in success message,  Expected: {} ",expectedLoggedInSuccessMsg);
    }

    @When("the user clicks on Sign out link in home page after successful logged in")
    public void the_user_clicks_on_sign_out_link_in_home_page_after_successful_logged_in() {
        loginPage.clickSignOutLink();
    }

    @Then("the user should be able to logged out and get success message as {string}")
    public void the_user_should_be_able_to_logged_out_and_get_success_message_as(String expectedLogoutMsg) {
        String actualLogoutMsg=context.homePage.getAlertMsg();
        Assert.assertEquals(actualLogoutMsg,expectedLogoutMsg);
        log.info("Validating the log out message,  Expected: {} ",expectedLogoutMsg);
    }

    @When("the user enters invalid {string} and {string} in the Login form")
    public void the_user_enters_invalid_and_in_the_login_form(String username, String password) {
        loginPage.enterCredentials(username,password);
    }

    @When("the user enters {string} and {string} in the Login form")
    public void the_user_enters_and_in_the_login_form(String username, String password) {
        loginPage.enterCredentials(username,password);
    }

    @When("the user clicks on Register link from login page")
    public void the_user_clicks_on_register_link_from_login_page() {
        loginPage.clickRegLnkInLoginPage();
    }

    @Then("the user should see the username in the top right corner")
    public void the_user_should_see_the_username_in_the_top_right_corner() {
        loginPage.validateloggedInUser();
        log.info("Validating the username present in the top right corner,  Expected: {} ",username);
    }

    @Then("the user should get invalid error message as {string}")
    public void the_user_should_get_invalid_error_message_as(String expectedErrorMsg) {
        String actualErrorMsg=context.homePage.getAlertMsg();
        Assert.assertEquals(actualErrorMsg,expectedErrorMsg);
        log.info("Validating the Error message Expected: {} ",expectedErrorMsg);
    }
    @Then("the user should get tooltip message as {string} below the Password textbox")
    public void the_user_should_get_tooltip_message_as_below_the_password_textbox(String expectedPwdTooltipMsg) {
        String actualPwdTooltipMsg = loginPage.getPwdTooltipMsg();
        Assert.assertEquals(actualPwdTooltipMsg, expectedPwdTooltipMsg);
        log.info("Validating the tooltip message Expected: {} ",expectedPwdTooltipMsg);
    }

    @When("the user enters valid Username and Password from {string} and {int} in the Login form")
    public void theUserEntersValidUsernameAndPasswordFromAndInTheLoginForm(String sheetName, int rowNumber) throws IOException, InvalidFormatException {
        List<Map<String, String>> testData=loginPage.readDataFromExcel(sheetName,rowNumber);
        String username=testData.get(rowNumber).get("Username");
        String password=testData.get(rowNumber).get("Password");
        this.username=username;
        loginPage.enterCredentials(username,password);
    }

    @And("user should successfully logged in and get success message from {string} and {int}")
    public void userShouldSuccessfullyLoggedInAndGetSuccessMessageFromAnd(String sheetName, int rowNumber) throws IOException, InvalidFormatException {
        List<Map<String, String>> testData=loginPage.readDataFromExcel(sheetName,rowNumber);
        String expectedSuccessMsg=testData.get(rowNumber).get("SuccessMessage");
        String actualLoggedInSuccessMsg=context.homePage.getAlertMsg();
        Assert.assertEquals(actualLoggedInSuccessMsg,expectedSuccessMsg);
        log.info("Validating the logged in success message,  Expected: {} ",expectedSuccessMsg);
    }

    @Then("the user should be able to logged out and get success message from {string} and {int}")
    public void theUserShouldBeAbleToLoggedOutAndGetSuccessMessageFromAnd(String sheetName, int rowNumber) throws IOException, InvalidFormatException {
        List<Map<String,String>> testData=loginPage.readDataFromExcel(sheetName,rowNumber);
        String expectedLogoutMsg=testData.get(rowNumber).get("LogoutMessage");
        String actualLogoutMsg=context.homePage.getAlertMsg();
        Assert.assertEquals(actualLogoutMsg,expectedLogoutMsg);
        log.info("Validating the log out message,  Expected: {} ",expectedLogoutMsg);
    }

    @When("the user enters invalid Username and Password from {string} and {int} in the Login form")
    public void theUserEntersInvalidUsernameAndPasswordFromAndInTheLoginForm(String sheetName, int rowNumber) throws IOException, InvalidFormatException {
        List<Map<String, String>> testData=loginPage.readDataFromExcel(sheetName,rowNumber);
        String username=testData.get(rowNumber).get("Username");
        String password=testData.get(rowNumber).get("Password");
        loginPage.enterCredentials(username,password);
    }

    @Then("the user should get invalid error message from {string} and {int}")
    public void theUserShouldGetInvalidErrorMessageFromAnd(String sheetName, int rowNumber) throws IOException, InvalidFormatException {
        List<Map<String,String>> testData=loginPage.readDataFromExcel(sheetName,rowNumber);
        String expectedErrorMsg=testData.get(rowNumber).get("ErrorMessage");
        String actualErrorMsg=context.homePage.getAlertMsg();
        Assert.assertEquals(actualErrorMsg,expectedErrorMsg);
        log.info("Validating the Error message Expected: {} ",expectedErrorMsg);
    }

    @When("the user enters Username and Password from {string} and {int} in the Login form")
    public void theUserEntersUsernameAndPasswordFromAndInTheLoginForm(String sheetName, int rowNumber) throws IOException, InvalidFormatException {
        List<Map<String,String>> testData=loginPage.readDataFromExcel(sheetName,rowNumber);
        String username=testData.get(rowNumber).get("Username");
        String password=testData.get(rowNumber).get("Password");
        loginPage.enterCredentials(username,password);
    }

    @Then("the user should get tooltip message below Username textbox and data fetch from {string} and {int}")
    public void theUserShouldGetTooltipMessageBelowUsernameTextboxAndDataFetchFromAnd(String sheetName, int rowNumber) throws IOException, InvalidFormatException {
        List<Map<String,String>> testData=loginPage.readDataFromExcel(sheetName,rowNumber);
        String expectedUsernameTooltipMsg=testData.get(rowNumber).get("ErrorMessage");
        String actualUsernameTooltipMsg = context.registrationPage.validateUsernameTooltipMsg();
        Assert.assertEquals(actualUsernameTooltipMsg, expectedUsernameTooltipMsg);
        log.info("Validating the tooltip message Expected: {} ",expectedUsernameTooltipMsg);
    }

    @Then("the user should get tooltip message below Password textbox and data fetch from {string} and {int}")
    public void theUserShouldGetTooltipMessageBelowPasswordTextboxAndDataFetchFromAnd(String sheetName, int rowNumber) throws IOException, InvalidFormatException {
        List<Map<String,String>> testData=loginPage.readDataFromExcel(sheetName,rowNumber);
        String expectedPwdTooltipMsg=testData.get(rowNumber).get("ErrorMessage");
        String actualPwdTooltipMsg = loginPage.getPwdTooltipMsg();
        Assert.assertEquals(actualPwdTooltipMsg, expectedPwdTooltipMsg);
        log.info("Validating the tooltip message Expected: {} ",expectedPwdTooltipMsg);
    }
}
