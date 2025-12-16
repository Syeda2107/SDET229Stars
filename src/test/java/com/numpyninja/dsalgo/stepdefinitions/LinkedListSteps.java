package com.numpyninja.dsalgo.stepdefinitions;

import io.cucumber.java.en.*;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

import com.numpyninja.dsalgo.pageobjects.*;
import com.numpyninja.dsalgo.testbase.DriverFactory;

public class LinkedListSteps {

    WebDriver driver = DriverFactory.getDriver();

    LoginPage loginPage = new LoginPage(driver);
    HomePage homePage = new HomePage(driver);
    ModulePage modulePage = new ModulePage(driver);
    TryEditorPage tryEditorPage = new TryEditorPage(driver);
    PracticePage practicePage = new PracticePage(driver);

    @Given("the user is logged into the {string} application")
    public void user_is_logged_into_application(String appName) {
        loginPage.openApplication(appName);
        loginPage.login();
    }

    @And("the user is on the Home page")
    public void user_is_on_home_page() {
        Assert.assertTrue(homePage.isHomePageDisplayed());
    }

    @Given("the user is on the {string} data structure page after signin")
    public void user_is_on_module_page_after_signin(String moduleName) {
        homePage.clickModule(moduleName);
        Assert.assertTrue(modulePage.isModulePageDisplayed(moduleName));
    }

    @When("the user clicks the {string} button")
    public void user_clicks_module_button(String moduleButton) {
        modulePage.clickSubModule(moduleButton);
    }

    @Then("the user should be redirected to the {string} page")
    public void user_should_be_redirected_to_page(String pageName) {
        Assert.assertTrue(modulePage.verifyPageTitle(pageName));
    }

    @And("the user clicks the {string} button")
    public void user_clicks_try_here(String buttonName) {
        modulePage.clickTryHere();
    }

    @Then("the user should be redirected to the Try Editor page")
    public void user_should_be_redirected_to_try_editor() {
        Assert.assertTrue(tryEditorPage.isTryEditorDisplayed());
    }

    @When("the user enters {string} in the editor and clicks the {string} button")
    public void user_enters_code_and_clicks_run(String code, String button) {
        tryEditorPage.enterCode(code);
        tryEditorPage.clickRun();
    }

    @Then("the system should display {string}")
    public void system_should_display_result(String result) {
        if (result.toLowerCase().contains("error")) {
            Assert.assertTrue(tryEditorPage.isErrorAlertDisplayed());
        } else {
            Assert.assertTrue(tryEditorPage.getOutput().contains("Hi"));
        }
    }

    @When("the user clicks on {string}")
    public void user_clicks_practice_questions(String button) {
        modulePage.clickPracticeQuestions();
    }

    @Then("the user redirected to blank practice page from {string} page")
    public void user_redirected_to_blank_practice_page(String moduleName) {
        Assert.assertTrue(practicePage.isPracticePageDisplayed());
        Assert.assertTrue(practicePage.isPracticePageEmpty());
    }
}
