package com.numpyninja.dsalgo.stepdefinitions;
import io.cucumber.java.en.*;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import com.numpyninja.dsalgo.pageobjects.*;
import com.numpyninja.dsalgo.testbase.DriverFactory;

public class ArraySteps {

    WebDriver driver = DriverFactory.getDriver();

    LoginPage loginPage = new LoginPage(driver);
    HomePage homePage = new HomePage(driver);
    ModulePage modulePage = new ModulePage(driver);
    TryEditorPage tryEditorPage = new TryEditorPage(driver);
    PracticePage practicePage = new PracticePage(driver);
    QuestionPage questionPage = new QuestionPage(driver);

    /* -------------------- BACKGROUND -------------------- */

    @Given("the user is logged into the {string} application")
    public void the_user_is_logged_into_application(String appName) {
        loginPage.openApplication(appName);
        loginPage.login();
    }

    @And("the user is on the Home page")
    public void the_user_is_on_the_home_page() {
        Assert.assertTrue(homePage.isHomePageDisplayed());
    }

    /* -------------------- MODULE NAVIGATION -------------------- */

    @Given("the user is on the {string} page after sign-in")
    public void the_user_is_on_the_array_page_after_sign_in(String page) {
        homePage.clickModule("Array");
        Assert.assertTrue(modulePage.isModulePageDisplayed(page));
    }

    @When("the user clicks the {string} button")
    public void the_user_clicks_the_module_button(String moduleButton) {
        modulePage.clickSubModule(moduleButton);
    }

    @Then("the user should be redirected to the {string} page")
    public void the_user_should_be_redirected_to_page(String pageName) {
        Assert.assertTrue(modulePage.verifyPageTitle(pageName));
    }

    /* -------------------- TRY EDITOR -------------------- */

    @And("the user clicks the {string} button")
    public void the_user_clicks_try_here_button(String buttonName) {
        modulePage.clickTryHere();
    }

    @Then("the user should be redirected to the {string} page")
    public void the_user_should_be_redirected_to_try_editor_page(String page) {
        Assert.assertTrue(tryEditorPage.isTryEditorDisplayed());
    }

    @When("the user enters {string} in the editor and clicks the {string} button")
    public void the_user_enters_code_and_clicks_run(String code, String button) {
        tryEditorPage.enterCode(code);
        tryEditorPage.clickButton(button);
    }

    @Then("the system should display {string}")
    public void the_system_should_display_result(String expectedResult) {
        if (expectedResult.contains("error")) {
            Assert.assertTrue(tryEditorPage.isErrorAlertDisplayed());
        } else {
            Assert.assertTrue(tryEditorPage.getOutput().contains("Hi"));
        }
    }

    /* -------------------- PRACTICE QUESTIONS -------------------- */

    @Given("the user is on the {string} page")
    public void the_user_is_on_given_page(String pageName) {
        modulePage.navigateToPage(pageName);
        Assert.assertTrue(modulePage.verifyPageTitle(pageName));
    }

    @When("the user clicks the {string} button")
    public void the_user_clicks_practice_questions(String button) {
        modulePage.clickPracticeQuestions();
    }

    @Then("the user should be redirected to the {string} page")
    public void the_user_should_be_redirected_to_practice_page(String page) {
        Assert.assertTrue(practicePage.isPracticePageDisplayed());
    }

    /* -------------------- PRACTICE QUESTION EXECUTION -------------------- */

    @When("the user selects the {string} link")
    public void the_user_selects_the_question_link(String question) {
        practicePage.selectQuestion(question);
    }

    @Then("the user should be redirected to the {string} page")
    public void the_user_should_be_redirected_to_question_page(String page) {
        Assert.assertTrue(questionPage.isQuestionPageDisplayed());
    }

    @When("the user enters {string} in the editor and Clickss the {string} button")
    public void the_user_enters_code_and_clicks_button(String code, String button) {
        questionPage.enterCode(code);
        questionPage.clickButton(button);
    }

    @Then("the system should display {string}")
    public void the_system_should_display_run_or_submit_result(String result) {
        if (result.toLowerCase().contains("error")) {
            Assert.assertTrue(questionPage.isErrorDisplayed());
        } else {
            Assert.assertTrue(questionPage.isSuccessMessageDisplayed());
        }
    }
}
