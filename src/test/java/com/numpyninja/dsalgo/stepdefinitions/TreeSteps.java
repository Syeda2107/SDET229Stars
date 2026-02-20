package com.numpyninja.dsalgo.stepdefinitions;


import com.numpyninja.dsalgo.pageobjects.DSIntroductionPage;
import com.numpyninja.dsalgo.pageobjects.TreePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import lombok.extern.slf4j.Slf4j;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;

@Slf4j
public class TreeSteps {
    WebDriver driver;
    TestContext context;
    TreePage treePage;
    DSIntroductionPage dsIntroductionPage;

    public TreeSteps(TestContext context) {
        this.context = context;
        this.driver = context.getDriver();
        this.treePage = context.getTreePage();
        this.dsIntroductionPage = context.getDsIntroductionPage();
    }
    @When("the user clicks the Get Started button in Tree Panel")
    public void the_user_clicks_the_get_started_button_in_tree_panel() {
        long startTimeTreePage=System.currentTimeMillis();
        treePage.ClickTreeGetstartedbtn();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeTreePage=System.currentTimeMillis();
        context.setTreePageLoadTime(endTimeTreePage-startTimeTreePage);
    }
    @When("the user clicks Overview of Trees link in Tree page")
    public void the_user_clicks_overview_of_trees_link_in_tree_page() {
        long startTimeOverviewOfTreesPage=System.currentTimeMillis();
        treePage.ClickOverviewofTrees();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeOverviewOfTreesPage=System.currentTimeMillis();
        context.setOverviewOfTreesPageLoadTime(endTimeOverviewOfTreesPage-startTimeOverviewOfTreesPage);
    }
    @When("the user clicks on Try here button in Overview of Trees page")
        public void the_user_clicks_on_try_here_button_in_overview_of_trees_page() {

        long startTimeOverviewOfTreesTryHere=System.currentTimeMillis();
        context.graphPage.clickTryHereBtn();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeOverviewOfTreesTryHere=System.currentTimeMillis();
        context.setOverviewOfTreesTryHereLoadTime(endTimeOverviewOfTreesTryHere-startTimeOverviewOfTreesTryHere);
    }
    @When("the user clicks Terminologies link in Tree page")
    public void the_user_clicks_terminologies_link_in_tree_page() {
        long startTimeTerminologiesPage=System.currentTimeMillis();
        treePage.ClickTerminologies();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeTerminologiesPage=System.currentTimeMillis();
        context.setTerminologiesPageLoadTime(endTimeTerminologiesPage-startTimeTerminologiesPage);
    }
    @When("the user clicks on Try here button in Terminologies page")
    public void the_user_clicks_on_try_here_button_in_terminologies_page() {
        long startTimeTerminologiesTryHere=System.currentTimeMillis();
        context.graphPage.clickTryHereBtn();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeTerminologiesTryHere=System.currentTimeMillis();
        context.setTerminologiesTryHereLoadTime(endTimeTerminologiesTryHere-startTimeTerminologiesTryHere);
    }
    @When("the user clicks Types of Trees link in Tree page")
    public void the_user_clicks_types_of_trees_link_in_tree_page() {
        long startTimeTypesOfTreesPage=System.currentTimeMillis();
        treePage.TypesofTrees();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeTypesOfTreesPage=System.currentTimeMillis();
        context.setTypesOfTreesPageLoadTime(endTimeTypesOfTreesPage-startTimeTypesOfTreesPage);
    }
    @When("the user clicks on Try here button in Types of Trees page")
    public void the_user_clicks_on_try_here_button_in_types_of_trees_page() {
        long startTimeTypesOfTreesTryHere=System.currentTimeMillis();
        context.graphPage.clickTryHereBtn();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeTypesOfTreesTryHere=System.currentTimeMillis();
        context.setTypesOfTreesTryHereLoadTime(endTimeTypesOfTreesTryHere-startTimeTypesOfTreesTryHere);
    }
    @When("the user clicks Tree Traversals link in Tree page")
    public void the_user_clicks_tree_traversals_link_in_tree_page() {
        long startTimeTreeTraversalsPage=System.currentTimeMillis();
        treePage.TreeTraversals();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeTreeTraversalsPage=System.currentTimeMillis();
        context.setTreeTraversalsPageLoadTime(endTimeTreeTraversalsPage-startTimeTreeTraversalsPage);
    }
    @When("the user clicks on Try here button in Tree Traversals page")
    public void the_user_clicks_on_try_here_button_in_tree_traversals_page() {
        long startTimeTreeTraversalsTryHere=System.currentTimeMillis();
        context.graphPage.ScrollDown();
        context.graphPage.clickTryHereBtn();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeTreeTraversalsTryHere=System.currentTimeMillis();
        context.setTreeTraversalsTryHereLoadTime(endTimeTreeTraversalsTryHere-startTimeTreeTraversalsTryHere);
    }
    @When("the user clicks Traversals-Illustration link in Tree page")
    public void the_user_clicks_traversals_illustration_link_in_tree_page() {
        long startTimeTraversalsIllustrationPage=System.currentTimeMillis();
        treePage.ClickTraversalsIllustration();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeTraversalsIllustrationPage=System.currentTimeMillis();
        context.setTraversalsIllustrationPageLoadTime(endTimeTraversalsIllustrationPage-startTimeTraversalsIllustrationPage);
    }
    @When("the user clicks on Try here button in Traversals-Illustration page")
    public void the_user_clicks_on_try_here_button_in_traversals_illustration_page() {
        long startTimeTraversalsIllustrationTryHere=System.currentTimeMillis();
        context.graphPage.clickTryHereBtn();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeTraversalsIllustrationTryHere=System.currentTimeMillis();
        context.setTraversalsIllustrationTryHereLoadTime(endTimeTraversalsIllustrationTryHere-startTimeTraversalsIllustrationTryHere);
    }
    @When("the user clicks Binary Trees link in Tree page")
    public void the_user_clicks_binary_trees_link_in_tree_page() {
        long startTimeBinaryTreesPage=System.currentTimeMillis();
        context.graphPage.ScrollDown();
        treePage.ClickBinaryTrees();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeBinaryTreesPage=System.currentTimeMillis();
        context.setBinaryTreesPageLoadTime(endTimeBinaryTreesPage-startTimeBinaryTreesPage);
    }
    @When("the user clicks on Try here button in Binary Trees")
    public void the_user_clicks_on_try_here_button_in_binary_trees() {
        long startTimeBinaryTreesPageTryHere=System.currentTimeMillis();
        context.graphPage.clickTryHereBtn();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeBinaryTreesPageTryHere=System.currentTimeMillis();
        context.setBinaryTreesPageTryHereLoadTime(endTimeBinaryTreesPageTryHere-startTimeBinaryTreesPageTryHere);
    }
    @When("the user clicks Types of Binary Trees link in Tree page")
    public void the_user_clicks_types_of_binary_trees_link_in_tree_page() {
        long startTimeTypesOfBinaryTreesPage=System.currentTimeMillis();
        context.graphPage.ScrollDown();
        treePage.ClickTypesofBinaryTrees();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeTypesOfBinaryTreesPage=System.currentTimeMillis();
        context.setTypesOfBinaryTreesPageLoadTime(endTimeTypesOfBinaryTreesPage-startTimeTypesOfBinaryTreesPage);
    }
    @When("the user clicks on Try here button in Types of Binary Trees")
    public void the_user_clicks_on_try_here_button_in_types_of_binary_trees() {
        long startTimeTypesOfBinaryTreesTryHere=System.currentTimeMillis();
        context.graphPage.clickTryHereBtn();
        long endTimeTypesOfBinaryTreesTryHere=System.currentTimeMillis();
        context.setTypesOfBinaryTreesTryHereLoadTime(endTimeTypesOfBinaryTreesTryHere-startTimeTypesOfBinaryTreesTryHere);
    }
    @When("the user clicks Implementation in Python link in Tree page")
    public void the_user_clicks_implementation_in_python_link_in_tree_page() {
        long startTimeImplementationInPythonPage=System.currentTimeMillis();
        context.graphPage.ScrollDown();
        treePage.ImplementationinPython();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeImplementationInPythonPage=System.currentTimeMillis();
        context.setImplementationInPythonPageLoadTime(endTimeImplementationInPythonPage-startTimeImplementationInPythonPage);
    }
    @When("the user clicks on Try here button in Implementation in Python")
    public void the_user_clicks_on_try_here_button_in_implementation_in_python() {
        long startTimeImplementationInPythonTryHere=System.currentTimeMillis();
        context.graphPage.ScrollDown();
        context.graphPage.clickTryHereBtn();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeImplementationInPythonTryHere=System.currentTimeMillis();
        context.setImplementationInPythonTryHereLoadTime(endTimeImplementationInPythonTryHere-startTimeImplementationInPythonTryHere);
    }
    @When("the user clicks Binary Tree Traversals link in Tree page")
    public void the_user_clicks_binary_tree_traversals_link_in_tree_page() {
        long startTimeBinaryTreeTraversalsPage=System.currentTimeMillis();
        context.graphPage.ScrollDown();
        treePage.ClickBinaryTreeTraversals();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeBinaryTreeTraversalsPage=System.currentTimeMillis();
        context.setBinaryTreeTraversalsPageLoadTime(endTimeBinaryTreeTraversalsPage-startTimeBinaryTreeTraversalsPage);
    }
    @When("the user clicks on Try here button in Binary Tree Traversals")
    public void the_user_clicks_on_try_here_button_in_binary_tree_traversals() {
        long startTimeBinaryTreeTraversalsTryHere=System.currentTimeMillis();
        context.graphPage.ScrollDown();
        context.graphPage.clickTryHereBtn();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeBinaryTreeTraversalsTryHere=System.currentTimeMillis();
        context.setBinaryTreeTraversalsTryHereLoadTime(endTimeBinaryTreeTraversalsTryHere-startTimeBinaryTreeTraversalsTryHere);
    }
    @When("the user clicks Implementation of Binary Trees link in Tree page")
    public void the_user_clicks_implementation_of_binary_trees_link_in_tree_page() {
        long startTimeImplementationOfBinaryTreePage=System.currentTimeMillis();
        context.graphPage.ScrollDown();
        treePage.ClickImplementationofBinaryTree();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeImplementationOfBinaryTreePage=System.currentTimeMillis();
        context.setImplementationOfBinaryTreePageLoadTime(endTimeImplementationOfBinaryTreePage-startTimeImplementationOfBinaryTreePage);
    }
    @When("the user clicks on Try here button in Implementation of Binary Trees")
    public void the_user_clicks_on_try_here_button_in_implementation_of_binary_trees() {
        long startTimeImplementationOfBinaryTreesTryHere=System.currentTimeMillis();
        context.graphPage.ScrollDown();
        context.graphPage.clickTryHereBtn();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeImplementationOfBinaryTreesTryHere=System.currentTimeMillis();
        context.setImplementationOfBinaryTreesTryHereLoadTime(endTimeImplementationOfBinaryTreesTryHere-startTimeImplementationOfBinaryTreesTryHere);
    }
    @When("the user clicks Applications of Binary trees link in Tree page")
    public void the_user_clicks_applications_of_binary_trees_link_in_tree_page() {
        long startTimeApplicationOfBinaryTreesPage=System.currentTimeMillis();
        context.graphPage.ScrollDown();
        treePage.ClickApplicationofBinaryTrees();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeApplicationOfBinaryTreesPage=System.currentTimeMillis();
        context.setApplicationOfBinaryTreesPageLoadTime(endTimeApplicationOfBinaryTreesPage-startTimeApplicationOfBinaryTreesPage);
    }
    @When("the user clicks on Try here button in Applications of Binary trees")
    public void the_user_clicks_on_try_here_button_in_applications_of_binary_trees() {
        long startTimeApplicationOfBinaryTreesTryHere=System.currentTimeMillis();
        context.graphPage.clickTryHereBtn();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeApplicationOfBinaryTreesTryHere=System.currentTimeMillis();
        context.setApplicationOfBinaryTreesTryHereLoadTime(endTimeApplicationOfBinaryTreesTryHere-startTimeApplicationOfBinaryTreesTryHere);
    }
    @When("the user clicks Binary Search Trees link in Tree page")
    public void the_user_clicks_binary_search_trees_link_in_tree_page() {
        long startTimeBinarySearchTreesPage=System.currentTimeMillis();
        context.graphPage.ScrollDown();
        treePage.ClickBinarySearchTrees();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeBinarySearchTreesPage=System.currentTimeMillis();
        context.setBinarySearchTreesPageLoadTime(endTimeBinarySearchTreesPage-startTimeBinarySearchTreesPage);
    }
    @When("the user clicks on Try here button in Binary Search Trees")
    public void the_user_clicks_on_try_here_button_in_binary_search_trees() {
        long startTimeBinarySearchTreesTryHere=System.currentTimeMillis();
        context.graphPage.ScrollDown();
        context.graphPage.clickTryHereBtn();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeBinarySearchTreesTryHere=System.currentTimeMillis();
        context.setBinarySearchTreesTryHereLoadTime(endTimeBinarySearchTreesTryHere-startTimeBinarySearchTreesTryHere);
    }
    @When("the user clicks Implementation of BST link in Tree page")
    public void the_user_clicks_implementation_of_bst_link_in_tree_page() {
        long startTimeImplementationOfBSTPage=System.currentTimeMillis();
        context.graphPage.ScrollDown();
        treePage.ClickImplementationofBST();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeImplementationOfBSTPage=System.currentTimeMillis();
        context.setImplementationOfBSTPageLoadTime(endTimeImplementationOfBSTPage-startTimeImplementationOfBSTPage);
    }
    @When("the user clicks on Try here button in Implementation of BST")
    public void the_user_clicks_on_try_here_button_in_implementation_of_bst() {
        long startTimeImplementationOfBSTTryHere=System.currentTimeMillis();
        context.graphPage.clickTryHereBtn();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeImplementationOfBSTTryHere=System.currentTimeMillis();
        context.setImplementationOfBSTTryHereLoadTime(endTimeImplementationOfBSTTryHere-startTimeImplementationOfBSTTryHere);
    }
    @When("the user scrolls down and clicks Practice Question link")
    public void the_user_scrolls_down_and_clicks_practice_question_link() {
        long startTimeTreePracticeQ=System.currentTimeMillis();
        context.graphPage.ScrollDown();
        context.graphPage.ClickPracticequestions();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeTreePracticeQ=System.currentTimeMillis();
        context.setTreePracticeQLoadTime(endTimeTreePracticeQ-startTimeTreePracticeQ);
    }
    @Then("the Tree page should load within {int} secs")
    public void the_Tree_page_should_load_within_secs(int timeInSecs) {
        long loadTimeInMilliSecs=context.getTreePageLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating Tree page load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
    @Then("the Overview of Trees link in Tree page should load within {int} secs")
    public void the_Overview_of_Trees_link_in_Tree_page_should_load_within_secs(int timeInSecs){
        long loadTimeInMilliSecs=context.getOverviewOfTreesPageLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating Overview of Trees load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
    @Then("the Terminologies link in Tree page should load within {int} secs")
    public void the_Terminologies_link_in_Tree_page_should_load_within_secs(int timeInSecs){
        long loadTimeInMilliSecs=context.getTerminologiesPageLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating  Terminologies load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
    @Then("the Types of Trees link in Tree page should load within {int} secs")
    public void the_Types_of_Trees_link_in_Tree_page_should_load_within_secs(int timeInSecs){
        long loadTimeInMilliSecs=context.getTypesOfTreesPageLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating Types of Trees load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
    @Then("the Tree Traversals link in Tree page should load within {int} secs")
    public void the_Tree_Traversals_link_in_Tree_page_should_load_within_secs(int timeInSecs){
        long loadTimeInMilliSecs=context.getTreeTraversalsPageLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating Tree Traversals load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
    @Then ("the Traversals-Illustration link in Tree page should load within {int} secs")
    public void the_Traversals_Illustration_link_in_Tree_page_should_load_within_secs(int timeInSecs){
        long loadTimeInMilliSecs=context.getTraversalsIllustrationPageLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating Traversals-Illustration load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
    @Then("the Binary Trees link in Tree page should load within {int} secs")
    public void the_Binary_Trees_link_in_Tree_page_should_load_within_secs(int timeInSecs){
        long loadTimeInMilliSecs=context.getBinaryTreesPageLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating Binary Trees load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
    @Then ("the Types of Binary Trees link in Tree page should load within {int} secs")
    public void the_Types_of_Binary_Trees_link_in_Tree_page_should_load_within_secs(int timeInSecs){
        long loadTimeInMilliSecs=context.getTypesOfBinaryTreesPageLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating Types of Binary Trees load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
    @Then ("the Implementation in Python link in Tree page should load within {int} secs")
    public void the_Implementation_in_Python_link_in_Tree_page_should_load_within_secs(int timeInSecs){
        long loadTimeInMilliSecs=context.getImplementationInPythonPageLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating Implementation in Python  load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
    @Then ("the Binary Tree Traversals link in Tree page should load within {int} secs")
    public void the_Binary_Tree_Traversals_link_in_Tree_page_should_load_within_secs(int timeInSecs){
        long loadTimeInMilliSecs=context.getBinaryTreeTraversalsPageLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating Binary Tree Traversals load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
    @Then ("the Implementation of Binary Trees link in Tree page should load within {} secs")
    public void the_Implementation_of_Binary_Trees_link_in_Tree_page_should_load_within_secs(int timeInSecs){
        long loadTimeInMilliSecs=context.getImplementationOfBinaryTreePageLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating Implementation of Binary Trees load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
    @Then ("the Applications of Binary trees link in Tree page should load within {int} secs")
    public void the_Applications_of_Binary_trees_link_in_Tree_page_should_load_within_secs(int timeInSecs){
        long loadTimeInMilliSecs=context.getApplicationOfBinaryTreesPageLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating Applications of Binary trees load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
    @Then ("the Binary Search Trees link in Tree page should load within {int} secs")
    public void the_Binary_Search_Trees_link_in_Tree_page_should_load_within_secs(int timeInSecs){
        long loadTimeInMilliSecs=context.getBinarySearchTreesPageLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating Binary Search Trees load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
    @Then ("the Implementation of BST link in Tree page should load within {int} secs")
    public void the_Implementation_of_BST_link_in_Tree_page_should_load_within_secs(int timeInSecs){
        long loadTimeInMilliSecs=context.getImplementationOfBSTPageLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating Implementation of BST load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
}


