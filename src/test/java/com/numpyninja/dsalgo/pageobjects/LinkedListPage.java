package com.numpyninja.dsalgo.pageobjects;

import com.numpyninja.dsalgo.testbase.TestContext;
import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;


public class LinkedListPage {

    WebDriver driver;
    TestContext testContext;

    public LinkedListPage(WebDriver driver, TestContext context) {
        this.driver = driver;
        this.testContext = context;
    }

    // =====================================================
    // LOCATORS
    // =====================================================

    // Get Started button (LinkedList module)
    private By linkedListGetStarted =
            By.xpath("//a[@href='linked-list']");

    // Submodule links (dynamic)
    private By submoduleLink(String submodule) {
        return By.linkText(submodule);
    }

    // Try Here button
    private By tryHereButton =
            By.xpath("//a[text()='Try here>>>']");

    // Code editor (textarea)
    private By codeEditor =
            By.xpath("//textarea[@tabindex='0']");

    // Run button
    private By runButton =
            By.xpath("//button[text()='Run']");

    // Output console
    private By outputConsole =
            By.id("output");

    // Practice Questions link
    private By practiceQuestionsLink =
            By.linkText("Practice Questions");

    // =====================================================
    // ACTION METHODS
    // =====================================================

    public void clickLinkedListGetStarted() {
        driver.findElement(linkedListGetStarted).click();
    }

    public void clickSubmodule(String submodule) {
        driver.findElement(submoduleLink(submodule)).click();
    }

    public void clickTryHereButton() {
        driver.findElement(tryHereButton).click();
    }

    public void runCodeInTryEditor(String code) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));

        //  Wait for the editor container to be visible
        WebElement editorContainer = wait.until(
                ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".CodeMirror"))
        );

        // Set the code using JavaScript (works for Ace/CodeMirror)
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("arguments[0].CodeMirror.setValue(arguments[1]);", editorContainer, code);

        // Wait for the Run button and click it
        WebElement runButton = wait.until(
                ExpectedConditions.elementToBeClickable(By.xpath("//button[text()='Run']"))
        );
        runButton.click();
    }


    // Unified output handler with alert fallback
    public String getOutput() {
        try {
            Alert alert = driver.switchTo().alert();
            String text = alert.getText();
            alert.accept();
            return text;
        } catch (NoAlertPresentException e) {
            return driver.findElement(outputConsole).getText().trim();
        }
    }

    public void clickPracticeQuestionsLink() { driver.findElement(practiceQuestionsLink).click();
    }
}
