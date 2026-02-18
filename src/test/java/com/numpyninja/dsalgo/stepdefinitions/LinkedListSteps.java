package com.numpyninja.dsalgo.stepdefinitions;

import com.numpyninja.dsalgo.pageobjects.LinkedListPage;
import com.numpyninja.dsalgo.testbase.TestContext;
import com.numpyninja.dsalgo.utilities.ExcelReader;
import io.cucumber.java.en.*;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import java.util.List;
import java.util.Map;

public class LinkedListSteps {

    private TestContext testContext;
    private WebDriver driver;
    private LinkedListPage linkedListPage;
    private ExcelReader excelReader;

    private Map<String, String> currentRowData;
    private final String excelPath = System.getProperty("user.dir") + "/TestData/DSAlgo_Data_Driven_Testing.xlsx";

    public LinkedListSteps(TestContext context) {
        this.testContext = context;
        this.driver = context.getDriver();
        this.linkedListPage = context.getLinkedListPage();
        this.excelReader = new ExcelReader();
    }

    // ================= COMMON METHODS =================

    private void loadRowData(String sheetName, int rowNumber) throws Exception {
        List<Map<String, String>> data = excelReader.getData(excelPath, sheetName);
        if (rowNumber < 0 || rowNumber >= data.size()) {
            throw new RuntimeException("Row " + rowNumber + " out of bounds for sheet " + sheetName);
        }
        currentRowData = data.get(rowNumber);
        currentRowData.replaceAll((k,v) -> v != null ? v.trim() : v);
    }

    private boolean isAlertPresent() {
        try {
            Alert alert = driver.switchTo().alert();
            return alert != null;
        } catch (Exception e) {
            return false;
        }
    }

    // ================= NAVIGATION =================

    @When("the user clicks on Get Started button LinkedList")
    public void clickLinkedListGetStarted() {
        linkedListPage.clickLinkedListGetStarted();
    }

    @When("the user clicks on the LinkedList submodule {string}")
    public void clickLinkedListSubmodule(String submodule) {
        linkedListPage.clickSubmodule(submodule);
    }

    @When("the user clicks on Try Here button on LinkedList submodule")
    public void clickTryHere() {
        linkedListPage.clickTryHereButton();
    }

    // ================= TRY EDITOR =================

    @When("the user enters code from {string} and {int} in Try Editor on LinkedList and clicks Run")
    public void enterCodeInTryEditor(String sheetName, int rowNumber) throws Exception {
        // Load code from Excel
        loadRowData(sheetName, rowNumber);
        String code = currentRowData.get("Code");

        // Use the page method to safely enter code
        linkedListPage.runCodeInTryEditor(code);

        // Optional: log for debugging
        System.out.println("Sheet Name: " + sheetName);
        System.out.println("Row Data: " + currentRowData);
    }


    @Then("the Try Editor system on LinkedList should display result from {string} and {int}")
    public void verifyTryEditorResult(String sheetName, int rowNumber) {
        String expected = currentRowData.get("ExpectedResult");

        if (isAlertPresent()) {
            String alertText = driver.switchTo().alert().getText();
            driver.switchTo().alert().accept();
            Assert.assertTrue(alertText.contains(expected));
        } else {
            String actual = linkedListPage.getOutput();
            Assert.assertEquals(actual.trim(), expected.trim());
        }
    }

    // ================= PRACTICE QUESTIONS =================

    @Given("the user is on the {string} page on LinkedList")
    public void userIsOnLinkedListPage(String submoduleName) {
        linkedListPage.clickSubmodule(submoduleName);
    }

    @When("the user clicks the LinkedList Submodule {string} button")
    public void clickPracticeQuestions(String buttonName) {
        linkedListPage.clickPracticeQuestionsLink();
    }

    @Then("the Practice Question LinkedList Submodule system should display blank page with the url from {string} and {int}")
    public void verifyPracticePageUrlFromExcel(String sheetName, int rowNumber) throws Exception {
        List<Map<String, String>> data = excelReader.getData(excelPath, sheetName);
        Map<String, String> rowData = data.get(rowNumber);
        String expectedUrl = rowData.get("PracticeUrl").trim();
        System.out.println("Row Data: " + rowData);

        String actualUrl = driver.getCurrentUrl();
        System.out.println("actualurl is "+ actualUrl);
        Assert.assertEquals(actualUrl, expectedUrl, "Practice Question URL mismatch for row " + rowNumber);


        WebElement container = driver.findElement(By.cssSelector(".container"));
        String containerText = container.getText().trim();
        System.out.println("containerText is '"+ containerText + "'");
        Assert.assertTrue(containerText.isEmpty(), "Expected practice area to be blank, but found text: " + containerText);
    }

}
