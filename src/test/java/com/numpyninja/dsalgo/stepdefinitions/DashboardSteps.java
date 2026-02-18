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
import java.util.Objects;

@Slf4j
public class DashboardSteps {

    TestContext testContext;
    WebDriver driver;
    DashboardPage dashboardPage;
    long startTime;
    public static long startTimeHome;

    public DashboardSteps(TestContext testContext) {
        this.testContext = testContext;
        this.driver = testContext.getDriver();
        this.dashboardPage = testContext.getDashboardPage();
    }

    @Given("User launches the browser and enters the DsAlgo application url")
    public void user_launches_the_browser_and_enters_the_ds_algo_application_url() throws IOException {
//        String url= ConfigReader.initProp("url");
//        System.out.println("************************ "+ url);
//        driver.get(url);
        log.info("Launching application URL: {}", ConfigReader.initProp("url"));
    }

    @Then("the page title should be displayed as {string}")
    public void the_page_title_should_be_displayed_as(String expectedPageTitle) {
        log.info("Validating page title. Expected: {}", expectedPageTitle);
        Assert.assertEquals(dashboardPage.validatePageTitle(), expectedPageTitle);
    }

    @Then("the user should see text on DsAlgo portal as {string}")
    public void the_user_should_see_text_on_ds_algo_portal_as(String expectedPrepareText) {
        log.info("Validating the DS Algo portal - Text. Expected: {}", expectedPrepareText);
        Assert.assertEquals(dashboardPage.validateTextPrepare(), expectedPrepareText);
    }

    @Then("the user should see {string} button on the DsAlgo portal")
    public void the_user_should_see_button_on_the_ds_algo_portal(String expectedGetStartedBtn) {
        log.info("Validating the DS Algo portal - get started button. Expected: {}", expectedGetStartedBtn);
        Assert.assertEquals(dashboardPage.validateGetStartedbtn(), expectedGetStartedBtn);

    }

    @When("the user clicks on Get Started button in the DsAlgo Portal")
    public void the_user_clicks_on_Get_Started_button_in_the_ds_algo_portal() {
        long startTimeHome=System.currentTimeMillis();
        dashboardPage.clickGetStartedBtn();
        dashboardPage.waitForPageToLoad();
        long endTime = System.currentTimeMillis();
        testContext.setHomeTime(endTime-startTimeHome);
    }

    @Then("the user should be navigated to the Home page which displays the {string} on the top left corner")
    public void the_user_should_be_navigated_to_the_home_page_which_displays_the_on_the_top_left_corner(String expectedNumpyText) {
        log.info("Validating the NumbyNinja Logo. Expected: {}", expectedNumpyText);
        Assert.assertEquals(dashboardPage.validateNumpyNinjaText(), expectedNumpyText);

    }

    @Then("the user should be navigated to the Home page which displays the DataStructures - dropdown with the following options on the top left corner")
    public void the_user_should_be_navigated_to_the_home_page_which_displays_the_data_structures_dropdown_with_the_following_options_on_the_top_left_corner(DataTable dataTable) {
        List<String> expectedOptions = dataTable.asList();
        List<String> actualOptions = dashboardPage.getAllOptions();
        log.info("Validating the DataStructures- dropdown options. Expected: {}", expectedOptions);
        Assert.assertEquals(actualOptions, expectedOptions);

    }

    @Then("the user should be navigated to the Home page which displays the {string} link on the top right corner")
    public void the_user_should_be_navigated_to_the_home_page_which_displays_the_link_on_the_top_right_corner(String expectedLinkText) throws IOException {
        String actualLinkText = "";
        if (expectedLinkText.equals(ConfigReader.initProp("RegisterText"))) {
            actualLinkText = dashboardPage.validateregisterText();
            log.info("Validating the RegisterLink Text Expected: {}", expectedLinkText);
        } else if (expectedLinkText.equals(ConfigReader.initProp("SignInText"))) {
            actualLinkText = dashboardPage.validateSignInText();
            log.info("Validating the SignInLink Text Expected: {}", expectedLinkText);
        } else
            throw new IllegalArgumentException("Element not found");
        Assert.assertEquals(actualLinkText, expectedLinkText);

    }

    @Then("the user should be navigated to the Home page which displays the {string} module with {string} button")
    public void the_user_should_be_navigated_to_the_home_page_which_displays_the_module_with_button(String expectedModuleLabelText, String expectedGetStartedText) {
        String actualModuleText = dashboardPage.getModuleText(expectedModuleLabelText);
        log.info("Validating the Data structures introduction module label. Expected: {}", expectedModuleLabelText);
        Assert.assertEquals(actualModuleText, expectedModuleLabelText);
        String actualModuleGetStartedText = dashboardPage.getModuleButtonText(expectedModuleLabelText);
        log.info("Validating the Data structures introduction module label with get started button text. Expected: {}", expectedGetStartedText);
        Assert.assertEquals(actualModuleGetStartedText, expectedGetStartedText);
    }

    @Then("the dashboard page should load within {int} secs")
    public void theDashboardPageShouldLoadWithinSecs(int timeInSecs) {
        long loadTimeInMilliSecs=testContext.getDashboardTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating dashboard page load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }

    @Then("the page should load using Https")
    public void thePageShouldLoadUsingHttps() {
        log.info("Validating page loads using https protocol");
        Assert.assertTrue(Objects.requireNonNull(driver.getCurrentUrl()).startsWith("https"));

    }

    @Then("the page should load without any errors")
    public void thePageShouldLoadWithoutAnyErrors() {
        log.info("Validating page loads without any errors");
        Assert.assertTrue(dashboardPage.waitForPageToLoad());
    }
}
