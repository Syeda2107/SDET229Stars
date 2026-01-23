package com.numpyninja.dsalgo.stepdefinitions;

import com.numpyninja.dsalgo.pageobjects.DashboardPage;
import com.numpyninja.dsalgo.testbase.TestContext;
import com.numpyninja.dsalgo.utilities.ConfigReader;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import lombok.extern.slf4j.Slf4j;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;

import java.io.IOException;
import java.util.List;

@Slf4j
public class DashboardSteps {

    TestContext testContext;
    WebDriver driver;
    DashboardPage dashboardPage;

    public DashboardSteps(TestContext testContext) {
        this.testContext = testContext;
        this.driver = testContext.getDriver();
        this.dashboardPage = testContext.getDashboardPage();
    }

    @Given("User launches the browser and enters the DsAlgo application url")
    public void user_launches_the_browser_and_enters_the_ds_algo_application_url() throws IOException {
        driver.get(ConfigReader.initProp("url"));
        log.info("Launching application URL: {}",ConfigReader.initProp("url"));
    }

    @Then("the page title should be displayed as {string}")
    public void the_page_title_should_be_displayed_as(String expectedPageTitle) {
       Assert.assertEquals(dashboardPage.validatePageTitle(), expectedPageTitle);
        log.info("Validating page title. Expected: {}",expectedPageTitle);
    }

    @Then("the user should see text on DsAlgo portal as {string}")
    public void the_user_should_see_text_on_ds_algo_portal_as(String expectedPrepareText) {
        Assert.assertEquals(dashboardPage.validateTextPrepare(), expectedPrepareText);
        log.info("Validating the DS Algo portal - Text. Expected: {}",expectedPrepareText);
    }

    @Then("the user should see {string} button on the DsAlgo portal")
    public void the_user_should_see_button_on_the_ds_algo_portal(String expectedGetStartedBtn) {
        Assert.assertEquals(dashboardPage.validateGetStartedbtn(),expectedGetStartedBtn);
        log.info("Validating the DS Algo portal - get started button. Expected: {}",expectedGetStartedBtn);
    }

    @When("the user clicks on Get Started button in the DsAlgo Portal")
    public void the_user_clicks_on_Get_Started_button_in_the_ds_algo_portal() {
        dashboardPage.clickGetStartedBtn();
    }

    @Then("the user should be navigated to the Home page which displays the {string} on the top left corner")
    public void the_user_should_be_navigated_to_the_home_page_which_displays_the_on_the_top_left_corner(String expectedNumpyText) {
        Assert.assertEquals(dashboardPage.validateNumpyNinjaText(),expectedNumpyText);
        log.info("Validating the NumbyNinja Logo. Expected: {}",expectedNumpyText);
    }

    @Then("the user should be navigated to the Home page which displays the DataStructures - dropdown with the following options on the top left corner")
    public void the_user_should_be_navigated_to_the_home_page_which_displays_the_data_structures_dropdown_with_the_following_options_on_the_top_left_corner(DataTable dataTable) {
        List<String> expectedOptions=dataTable.asList();
        List<String> actualOptions=dashboardPage.getAllOptions();
        Assert.assertEquals(actualOptions,expectedOptions);
        log.info("Validating the DataStructures- dropdown options. Expected: {}",expectedOptions);
    }

    @Then("the user should be navigated to the Home page which displays the {string} link on the top right corner")
    public void the_user_should_be_navigated_to_the_home_page_which_displays_the_link_on_the_top_right_corner(String expectedLinkText) throws IOException {
        String actualLinkText="";
        if(expectedLinkText.equals(ConfigReader.initProp("RegisterText"))) {
            actualLinkText = dashboardPage.validateregisterText();
            log.info("Validating the RegisterLink Text Expected: {}", expectedLinkText);
        }
        else if(expectedLinkText.equals(ConfigReader.initProp("SignInText"))) {
            actualLinkText = dashboardPage.validateSignInText();
            log.info("Validating the SignInLink Text Expected: {}", expectedLinkText);
        }
        else
            throw new IllegalArgumentException("Element not found");
        Assert.assertEquals(actualLinkText,expectedLinkText);

    }

    @Then("the user should be navigated to the Home page which displays the {string} module with {string} button")
    public void the_user_should_be_navigated_to_the_home_page_which_displays_the_module_with_button(String expectedModuleLabelText, String expectedGetStartedText) {
        String actualModuleText=dashboardPage.getModuleText(expectedModuleLabelText);
        Assert.assertEquals(actualModuleText,expectedModuleLabelText);
        log.info("Validating the Data structures introduction module label. Expected: {}", expectedModuleLabelText);
        String actualModuleGetStartedText= dashboardPage.getModuleButtonText(expectedModuleLabelText);
        Assert.assertEquals(actualModuleGetStartedText,expectedGetStartedText);
        log.info("Validating the Data structures introduction module label with get started button text. Expected: {}", expectedGetStartedText);
    }
}
