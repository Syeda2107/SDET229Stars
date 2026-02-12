package com.numpyninja.dsalgo.stepdefinitions;


import com.numpyninja.dsalgo.pageobjects.TreePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import io.cucumber.java.en.When;
import lombok.extern.slf4j.Slf4j;
import org.openqa.selenium.WebDriver;

@Slf4j
public class TreeSteps {
    WebDriver driver;
    TestContext context;
    TreePage treePage;

    public TreeSteps(TestContext context) {
        this.context = context;
        this.driver = context.getDriver();
        this.treePage = context.getTreePage();
    }

//    @Given("User launches the browser and enters the DsAlgo application url")
//    public void user_launches_the_browser_and_enters_the_ds_algo_application_url() throws IOException {
//        driver.get(ConfigReader.initProp("url"));
//        log.info("Launching application URL: {}",ConfigReader.initProp("url"));
//    }
//
//    @When("the user clicks on Get Started button in the DsAlgo Portal")
//    public void the_user_clicks_on_get_started_button_in_the_ds_algo_portal() {
//        context.dashboardPage.clickGetStartedBtn();
//
//    }
//
//    @When("user clicks on Sign in link in the Home page")
//    public void user_clicks_on_sign_in_link_in_the_home_page() {
//        context.loginPage.clickSignInLink();
//    }
//
//    @Then("the page title should be displayed as {string}")
//    public void the_page_title_should_be_displayed_as(String expectedPageTitle) {
//        Assert.assertEquals(context.dashboardPage.validatePageTitle(),expectedPageTitle );
//        log.info("Validating the page title.Expected:{}",expectedPageTitle);
//    }
//
//    @When("the user enters valid Username and Password in the Login form")
//    public void the_user_enters_valid_username_and_password_in_the_login_form(io.cucumber.datatable.DataTable dataTable) {
//        Map<String, String> credentials = dataTable.asMap(String.class, String.class);
//        String username = credentials.get("Username");
//        String pwd = credentials.get("Password");
//        context.loginPage.enterCredentials(username, pwd);
//    }
//
//    @When("user clicks on Login button")
//    public void user_clicks_on_login_button() {
//        context.loginPage.clickLoginBtn();
//    }

    @When("the user clicks the Get Started button in Tree Panel")
    public void the_user_clicks_the_get_started_button_in_tree_panel() {
        treePage.ClickTreeGetstartedbtn();
    }

    @When("the user clicks Overview of Trees link in Tree page")
    public void the_user_clicks_overview_of_trees_link_in_tree_page() {
        treePage.ClickOverviewofTrees();
    }

    @When("the user clicks on Try here button in Overview of Trees page")
        public void the_user_clicks_on_try_here_button_in_overview_of_trees_page() {
            context.graphPage.clickTryHereBtn();
    }

    @When("the user clicks Terminologies link in Tree page")
    public void the_user_clicks_terminologies_link_in_tree_page() {
        treePage.ClickTerminologies();
    }

    @When("the user clicks on Try here button in Terminologies page")
    public void the_user_clicks_on_try_here_button_in_terminologies_page() {
        context.graphPage.clickTryHereBtn();
    }

    @When("the user clicks Types of Trees link in Tree page")
    public void the_user_clicks_types_of_trees_link_in_tree_page() {
        treePage.TypesofTrees();
    }

    @When("the user clicks on Try here button in Types of Trees page")
    public void the_user_clicks_on_try_here_button_in_types_of_trees_page() {
        context.graphPage.clickTryHereBtn();
    }

    @When("the user clicks Tree Traversals link in Tree page")
    public void the_user_clicks_tree_traversals_link_in_tree_page() {
        treePage.TreeTraversals();
    }

    @When("the user clicks on Try here button in Tree Traversals page")
    public void the_user_clicks_on_try_here_button_in_tree_traversals_page() {
        context.graphPage.ScrollDown();
        context.graphPage.clickTryHereBtn();
    }

    @When("the user clicks Traversals-Illustration link in Tree page")
    public void the_user_clicks_traversals_illustration_link_in_tree_page() {
        treePage.ClickTraversalsIllustration();
    }

    @When("the user clicks on Try here button in Traversals-Illustration page")
    public void the_user_clicks_on_try_here_button_in_traversals_illustration_page() {
        context.graphPage.clickTryHereBtn();
    }

    @When("the user clicks Binary Trees link in Tree page")
    public void the_user_clicks_binary_trees_link_in_tree_page() {
        context.graphPage.ScrollDown();
        treePage.ClickBinaryTrees();
    }

    @When("the user clicks on Try here button in Binary Trees")
    public void the_user_clicks_on_try_here_button_in_binary_trees() {
        context.graphPage.clickTryHereBtn();
    }

    @When("the user clicks Types of Binary Trees link in Tree page")
    public void the_user_clicks_types_of_binary_trees_link_in_tree_page() {
        context.graphPage.ScrollDown();
        treePage.ClickTypesofBinaryTrees();
    }

    @When("the user clicks on Try here button in Types of Binary Trees")
    public void the_user_clicks_on_try_here_button_in_types_of_binary_trees() {
        context.graphPage.clickTryHereBtn();
    }

    @When("the user clicks Implementation in Python link in Tree page")
    public void the_user_clicks_implementation_in_python_link_in_tree_page() {
        context.graphPage.ScrollDown();
        treePage.ImplementationinPython();
    }

    @When("the user clicks on Try here button in Implementation in Python")
    public void the_user_clicks_on_try_here_button_in_implementation_in_python() {
        context.graphPage.ScrollDown();
        context.graphPage.clickTryHereBtn();
    }

    @When("the user clicks Binary Tree Traversals link in Tree page")
    public void the_user_clicks_binary_tree_traversals_link_in_tree_page() {
        context.graphPage.ScrollDown();
        treePage.ClickBinaryTreeTraversals();
    }

    @When("the user clicks on Try here button in Binary Tree Traversals")
    public void the_user_clicks_on_try_here_button_in_binary_tree_traversals() {
        context.graphPage.ScrollDown();
        context.graphPage.clickTryHereBtn();
    }

    @When("the user clicks Implementation of Binary Trees link in Tree page")
    public void the_user_clicks_implementation_of_binary_trees_link_in_tree_page() {
        context.graphPage.ScrollDown();
        treePage.ClickImplementationofBinaryTree();
    }

    @When("the user clicks on Try here button in Implementation of Binary Trees")
    public void the_user_clicks_on_try_here_button_in_implementation_of_binary_trees() {
        context.graphPage.ScrollDown();
        context.graphPage.clickTryHereBtn();
    }

    @When("the user clicks Applications of Binary trees link in Tree page")
    public void the_user_clicks_applications_of_binary_trees_link_in_tree_page() {
        context.graphPage.ScrollDown();
        treePage.ClickApplicationofBinaryTrees();
    }

    @When("the user clicks on Try here button in Applications of Binary trees")
    public void the_user_clicks_on_try_here_button_in_applications_of_binary_trees() {
        context.graphPage.clickTryHereBtn();
    }

    @When("the user clicks Binary Search Trees link in Tree page")
    public void the_user_clicks_binary_search_trees_link_in_tree_page() {
        context.graphPage.ScrollDown();
        treePage.ClickBinarySearchTrees();
    }

    @When("the user clicks on Try here button in Binary Search Trees")
    public void the_user_clicks_on_try_here_button_in_binary_search_trees() {
        context.graphPage.ScrollDown();
        context.graphPage.clickTryHereBtn();
    }

    @When("the user clicks Implementation of BST link in Tree page")
    public void the_user_clicks_implementation_of_bst_link_in_tree_page() {
        context.graphPage.ScrollDown();
        treePage.ClickImplementationofBST();
    }

    @When("the user clicks on Try here button in Implementation of BST")
    public void the_user_clicks_on_try_here_button_in_implementation_of_bst() {
        context.graphPage.clickTryHereBtn();
    }

    @When("the user scrolls down and clicks Practice Question link")
    public void the_user_scrolls_down_and_clicks_practice_question_link() {
        context.graphPage.ScrollDown();
        context.graphPage.ClickPracticequestions();
    }

}


