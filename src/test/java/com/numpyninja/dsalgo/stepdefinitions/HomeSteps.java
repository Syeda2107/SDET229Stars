package com.numpyninja.dsalgo.stepdefinitions;

import com.numpyninja.dsalgo.pageobjects.DashboardPage;
import com.numpyninja.dsalgo.pageobjects.HomePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import lombok.extern.slf4j.Slf4j;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;

@Slf4j
public class HomeSteps {

    TestContext context;
    WebDriver driver;
    HomePage homePage;
    DashboardPage dashboardPage;

    public HomeSteps(TestContext context) {
        this.context = context;
        this.driver = context.getDriver();
        this.homePage = context.getHomePage();
        this.dashboardPage=context.getDashboardPage();
    }

    @When("the user selects {string} option from Data Structures dropdown")
    public void the_user_selects_option_from_data_structures_dropdown(String module) {
      homePage.clickDropdownDS();
      homePage.clickDropdownElements(module);
      log.info("User clicks on dropdown option. Expected option: {} ",module);
    }

    @Then("the user should able to see the warning message as {string}")
    public void the_user_should_able_to_see_the_warning_message_as(String expectedAlertMsg) {
        String actualAlertMsg=homePage.getAlertMsg();
        log.info("Validating warning message. Expected: {} ",expectedAlertMsg);
        Assert.assertEquals(actualAlertMsg,expectedAlertMsg);
    }

    @When("the user clicks on Get Started button of {string} module")
    public void the_user_clicks_on_Get_Started_button_of_module(String moduleGetStartedBtn) {
        homePage.clickGetStartedBtn(moduleGetStartedBtn);
    }

    @Then("the home page should load within {int} secs")
    public void theHomePageShouldLoadWithinSecs(int timeInSecs) {
        long loadTimeInMilliSecs=context.getHomeTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating home page load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
}
