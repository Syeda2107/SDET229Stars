package com.numpyninja.dsalgo.stepdefinitions;

import com.numpyninja.dsalgo.pageobjects.GraphPage;
import com.numpyninja.dsalgo.testbase.TestContext;
import io.cucumber.java.en.When;
import lombok.extern.slf4j.Slf4j;
import org.openqa.selenium.WebDriver;

@Slf4j
public class GraphSteps {

    WebDriver driver;
    TestContext context;
    GraphPage graphPage;

    String username;

    public GraphSteps(TestContext context) {
        this.context = context;
        this.driver = context.getDriver();
        this.graphPage = context.getGraphPage();

    }

   // @Given("User launches the browser and enters the DsAlgo application url")
  //  public void user_launches_the_browser_and_enters_the_ds_algo_application_url() throws IOException {
      //  driver.get(ConfigReader.initProp("url"));
       // log.info("Launching application URL: {}",ConfigReader.initProp("url"));
    //}
   // @When("the user clicks on Get Started button in the DsAlgo Portal")
   // public void the_user_clicks_on_get_started_button_in_the_ds_algo_portal() {
       // context.dashboardPage.clickGetStartedBtn();
   // }
//    @When("user clicks on Sign in link in the Home page")
//    public void user_clicks_on_sign_in_link_in_the_home_page() {
//        context.loginPage.clickSignInLink();
//    }
//    @Then("the page title should be displayed as {string}")
//    public void the_page_title_should_be_displayed_as(String string) {/// login
//
//}
//    @When("the user enters valid Username and Password in the Login form")
//    public void the_user_enters_valid_username_and_password_in_the_login_form(io.cucumber.datatable.DataTable dataTable) {
//        Map<String, String> credentials = dataTable.asMap(String.class, String.class);
//        String username = credentials.get("Username");
//        String pwd = credentials.get("Password");
//        context.loginPage.enterCredentials(username, pwd);
//    }
//    @When("user clicks on Login button")
//    public void user_clicks_on_login_button() {
//
//        context.loginPage.clickLoginBtn();
//    }
    @When("the user clicks the Get Started button after scrolling down in Graph Panel")
    public void the_user_clicks_the_get_started_button_after_scrolling_down_in_graph_panel() {
        graphPage.ScrollDown();
        graphPage.ClickGraphGetstartedbtn();
    }
    @When("the user clicks Graph link in Graph page")
    public void the_user_clicks_graph_link_in_graph_page() {
        graphPage.ClickGraphpg();
    }

    @When("the user clicks on Try here button in Graph page")
    public void the_user_clicks_on_try_here_button_in_graph_page() {
        graphPage.clickTryHereBtn();
    }

    //@Then("the user should be redirected to a page having an tryeditor with a Run button")
    //public void the_user_should_be_redirected_to_a_page_having_an_tryeditor_with_a_run_button() {
        //graphPage.TryEditorPageDisplayed();
   // }

    //@Then("the page url should be displayed as {string}")
   // public void the_page_url_should_be_displayed_as(String expectedPageTitle) {
        //Assert.assertEquals(context.dashboardPage.validatePageTitle(),expectedPageTitle );
        //log.info("Validating the page title.Expected:{}",expectedPageTitle);
   // }
    @When("the user clicks on Practice Questions link in Graph page")
    public void the_user_clicks_on_practice_questions_link_in_graph_page() {
        graphPage.ScrollDown();
        graphPage.ClickPracticequestions();
    }
    @When("the user clicks Graph Representations link in Graph page")
    public void the_user_clicks_graph_representations_link_in_graph_page() {
        graphPage.ClickGraphRepresentationpg();
    }

    @When("the user clicks on Try here button in Graph Representations page")
    public void the_user_clicks_on_try_here_button_in_graph_representations_page() {
        graphPage.clickTryHereBtn();
    }

    @When("the user clicks on Practice Questions link in Graph Representations page")
    public void the_user_clicks_on_practice_questions_link_in_graph_representations_page() {
        graphPage.ClickPracticequestions();
    }
}
