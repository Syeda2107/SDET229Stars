//package com.numpyninja.dsalgo.stepdefinitions;
//
//import io.cucumber.java.en.Given;
//import io.cucumber.java.en.When;
//import io.cucumber.java.en.Then;
//import org.openqa.selenium.By;
//import org.openqa.selenium.WebDriver;
//import org.openqa.selenium.chrome.ChromeDriver;
//import org.junit.Assert;
//
//public class QueueSteps {
//
//    WebDriver driver;
//
//    @Given("User launches the browser and opens the Queue page")
//    public void user_launches_browser_and_opens_queue_page() {
//        driver = new ChromeDriver();
//        driver.manage().window().maximize();
//        driver.get("https://dsportalapp.herokuapp.com/queue/");
//    }
//
//    @When("User clicks on the Implementation of Queue link")
//    public void user_clicks_implementation_of_queue() {
//        driver.findElement(By.linkText("Implementation of Queue in Python")).click();
//    }
//
//    @Then("User should be navigated to Queue Implementation page")
//    public void user_should_be_on_queue_implementation_page() {
//        String expectedTitle = "Implementation of Queue";
//        String actualTitle = driver.getTitle();
//        Assert.assertTrue(actualTitle.contains(expectedTitle));
//    }
//
//    @When("User clicks on the Queue Operations link")
//    public void user_clicks_queue_operations() {
//        driver.findElement(By.linkText("Queue Operations")).click();
//    }
//
//    @Then("User should be navigated to Queue Operations page")
//    public void user_should_be_on_queue_operations_page() {
//        String expectedTitle = "Queue Operations";
//        String actualTitle = driver.getTitle();
//        Assert.assertTrue(actualTitle.contains(expectedTitle));
//    }
//
//    // Optional: Add more Queue-specific steps here
//
//    @Then("Close the browser")
//    public void close_the_browser() {
//        if (driver != null) {
//            driver.quit();
//        }
//
package com.numpyninja.dsalgo.stepdefinitions;

import com.numpyninja.dsalgo.pageobjects.QueuePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.Assert;

public class QueueSteps {

    TestContext context;
    QueuePage queuePage;

    public QueueSteps(TestContext context) {
        this.context = context;
        this.queuePage = context.getQueuePage();
    }

    @Given("User navigates to Queue page from Home")
    public void user_navigates_to_queue_page_from_home() {
        context.homePage.clickGetStartedBtn("Queue");
    }
//    public void user_opens_queue_page() {
//        this.queuePage = context.getQueuePage();   // TestContext updated as above
//        context.getDriver().get("https://dsportalapp.herokuapp.com/queue/");
//    }

    @When("User clicks on the Implementation of Queue link")
    public void user_clicks_implementation_of_queue() {
        queuePage.clickImplementationQueue();
    }

    @Then("User should be navigated to Queue Implementation page")
    public void user_should_be_on_queue_implementation_page() {
        String expectedTitle = "Implementation of Queue";
        String actualTitle = queuePage.getPageTitle();
        Assert.assertTrue(actualTitle.contains(expectedTitle));
    }

    @When("User clicks on the Queue Operations link")
    public void user_clicks_queue_operations() {
        queuePage.clickQueueOperations();
    }

    @Then("User should be navigated to Queue Operations page")
    public void user_should_be_on_queue_operations_page() {
        String expectedTitle = "Queue Operations";
        String actualTitle = queuePage.getPageTitle();
        Assert.assertTrue(actualTitle.contains(expectedTitle));
    }
}
