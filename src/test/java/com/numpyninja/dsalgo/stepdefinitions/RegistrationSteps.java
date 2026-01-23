package com.numpyninja.dsalgo.stepdefinitions;

import com.github.javafaker.Faker;
import com.numpyninja.dsalgo.pageobjects.RegistrationPage;
import com.numpyninja.dsalgo.testbase.TestContext;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import lombok.extern.slf4j.Slf4j;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;

@Slf4j
public class RegistrationSteps {

    TestContext context;
    WebDriver driver;
    RegistrationPage registerPage;
    Faker faker;
    String generatedUsername;

    public RegistrationSteps(TestContext context) {
        this.context = context;
        this.driver = context.getDriver();
        this.registerPage = context.getRegistrationPage();
        this.faker = context.getFaker();
    }

    @When("user clicks on Register link in the Home page")
    public void user_clicks_on_register_link_in_the_home_page() {
        registerPage.clickRegisterLink();
    }

    @When("the user enters {string},{string} and {string} in the register form")
    public void the_user_enters_and_in_the_register_form(String username, String password, String confirmPwd) {
        if (username.equalsIgnoreCase("auto")) {
            generatedUsername = faker.name().username().replaceAll("[^A-Za-z0-9@.+-_]", "_") + "@gmail.com";
            log.info("Username enters {}",generatedUsername);
        }
        else
            generatedUsername=username;
        registerPage.enterValues(generatedUsername, password, confirmPwd);
    }

    @Then("the user should get tooltip message as {string} below Username textbox")
    public void the_user_should_get_tooltip_message_as_below_Username_textbox(String expectedUsernameTooltipMsg) {
        String actualUsernameTooltipMsg = registerPage.validateUsernameTooltipMsg();
        Assert.assertEquals(actualUsernameTooltipMsg, expectedUsernameTooltipMsg);
        log.info("Validating the tooltip message Expected: {} ",expectedUsernameTooltipMsg);
    }

    @When("the user enters only {string} field in the register form")
    public void the_user_enters_only_field_in_the_register_form(String username) {
        registerPage.enterUsername(username);
    }

    @When("user clicks on Register button")
    public void user_clicks_on_register_button() {
        registerPage.clickRegisterBtn();
    }

    @Then("the user should get tooltip message as {string} below Password textbox")
    public void the_user_should_get_tooltip_message_as_below_password_textbox(String expectedPwdTooltipMsg) {
        String actualPwdTooltipMsg = registerPage.validatePasswordTooltipMsg();
        Assert.assertEquals(actualPwdTooltipMsg, expectedPwdTooltipMsg);
        log.info("Validating the tooltip message Expected: {} ",expectedPwdTooltipMsg);
    }

    @When("the user enters only {string} and {string} fields in the register form")
    public void the_user_enters_only_and_fields_in_the_register_form(String username, String password) {
        registerPage.enterValues(username, password);
    }

    @Then("the user should get tooltip message as {string} below Password confirmation textbox")
    public void the_user_should_get_tooltip_message_as_below_password_confirmation_textbox(String expectedConfirmPwdTooltipMsg) {
        String actualConfirmPwdTooltipMsg = registerPage.validateConfirmPwdTooltipMsg();
        Assert.assertEquals(actualConfirmPwdTooltipMsg, expectedConfirmPwdTooltipMsg);
        log.info("Validating the tooltip message Expected: {} ",expectedConfirmPwdTooltipMsg);
    }

    @Then("the user should be redirected to home page with success message {string}")
    public void the_user_should_be_redirected_to_home_page_with_success_message(String expectedSuccessMsg) {
        String expectedMsg=expectedSuccessMsg.replaceAll("<Username>",generatedUsername);
        String actualSuccessMsg=context.homePage.getAlertMsg();
        Assert.assertEquals(actualSuccessMsg,expectedMsg);
        log.info("Validating the success message Expected: {} ",expectedMsg);
    }

    @When("the user clicks on Login link below Register button")
    public void the_user_clickson_login_link_below_register_button() {
        registerPage.clickLoginInRegForm();
    }
}
