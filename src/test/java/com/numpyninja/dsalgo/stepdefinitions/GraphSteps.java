package com.numpyninja.dsalgo.stepdefinitions;

import com.numpyninja.dsalgo.pageobjects.DSIntroductionPage;
import com.numpyninja.dsalgo.pageobjects.GraphPage;
import com.numpyninja.dsalgo.testbase.TestContext;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import lombok.extern.slf4j.Slf4j;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;

@Slf4j
public class GraphSteps {

    WebDriver driver;
    TestContext context;
    GraphPage graphPage;
    DSIntroductionPage dsIntroductionPage;

    public GraphSteps(TestContext context) {
        this.context = context;
        this.driver = context.getDriver();
        this.graphPage = context.getGraphPage();
        this.dsIntroductionPage = context.getDsIntroductionPage();
    }
    @When("the user clicks the Get Started button after scrolling down in Graph Panel")
    public void the_user_clicks_the_get_started_button_after_scrolling_down_in_graph_panel() {
        long startTimeGraphPage=System.currentTimeMillis();
        graphPage.ScrollDown();
        graphPage.ClickGraphGetstartedbtn();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeGraphPage=System.currentTimeMillis();
        context.setGraphPageLoadTime(endTimeGraphPage-startTimeGraphPage);
    }
    @When("the user clicks Graph link in Graph page")
    public void the_user_clicks_graph_link_in_graph_page() {
        long startTimeGraphLink=System.currentTimeMillis();
        graphPage.ClickGraphpg();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeGraphLink=System.currentTimeMillis();
        context.setGraphLinkLoadTime(endTimeGraphLink-startTimeGraphLink);
    }
    @When("the user clicks on Try here button in Graph page")
    public void the_user_clicks_on_try_here_button_in_graph_page() {
        long startTimeGraphLinkTryHere=System.currentTimeMillis();
        graphPage.clickTryHereBtn();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeGraphLinkTryHere=System.currentTimeMillis();
        context.setGraphLinkTryHereLoadTime(endTimeGraphLinkTryHere-startTimeGraphLinkTryHere);
    }
    @When("the user clicks on Practice Questions link in Graph page")
    public void the_user_clicks_on_practice_questions_link_in_graph_page() {
        long startTimeGraphLinkPracticeQ=System.currentTimeMillis();
        graphPage.ScrollDown();
        graphPage.ClickPracticequestions();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeGraphLinkPracticeQ=System.currentTimeMillis();
        context.setGraphLinkPracticeQLoadTime(endTimeGraphLinkPracticeQ-startTimeGraphLinkPracticeQ);
    }
    @When("the user clicks Graph Representations link in Graph page")
    public void the_user_clicks_graph_representations_link_in_graph_page() {
        long startTimeGraphRpLink=System.currentTimeMillis();
        graphPage.ClickGraphRepresentationpg();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeGraphRpLink=System.currentTimeMillis();
        context.setGraphRpLinkLoadTime(endTimeGraphRpLink-startTimeGraphRpLink);
    }
    @When("the user clicks on Try here button in Graph Representations page")
    public void the_user_clicks_on_try_here_button_in_graph_representations_page() {
        long startTimeGraphRpLinkTryHere=System.currentTimeMillis();
        graphPage.clickTryHereBtn();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeGraphRpLinkTryHere=System.currentTimeMillis();
        context.setGraphRpLinkTryHereLoadTime(endTimeGraphRpLinkTryHere-startTimeGraphRpLinkTryHere);
    }
    @When("the user clicks on Practice Questions link in Graph Representations page")
    public void the_user_clicks_on_practice_questions_link_in_graph_representations_page() {
        long startTimeGraphRpLinkPracticeQ=System.currentTimeMillis();
        graphPage.ScrollDown();
        graphPage.ClickPracticequestions();
        dsIntroductionPage.waitForPageToLoad();
        long endTimeGraphRpLinkPracticeQ=System.currentTimeMillis();
        context.setGraphRpLinkPracticeQLoadTime(endTimeGraphRpLinkPracticeQ-startTimeGraphRpLinkPracticeQ);
    }
    @Then("the Graph page should load within {int} secs")
        public void the_Graph_page_should_load_within_secs(int timeInSecs){
        long loadTimeInMilliSecs=context.getGraphPageLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating Graph page load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
    @Then("the Graph link in Graph page should load within {int} secs")
    public void the_Graph_link_in_Graph_page_should_load_within_secs(int timeInSecs) {
        long loadTimeInMilliSecs=context.getGraphLinkLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating Graph Link page load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
    @Then("the Graph Representation link in Graph page should load within {int} secs")
    public void the_Graph_Representation_link_in_Graph_page_should_load_within_secs(int timeInSecs) {
        long loadTimeInMilliSecs=context.getGraphRpLinkLoadTime();
        double loadTimeInSecs=loadTimeInMilliSecs/1000.0;
        log.info("Validating Graph Representation page load time with in {} secs",timeInSecs);
        Assert.assertTrue(loadTimeInSecs <= timeInSecs);
    }
}
