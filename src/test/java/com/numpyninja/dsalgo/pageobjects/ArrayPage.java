package com.numpyninja.dsalgo.pageobjects;

import com.numpyninja.dsalgo.testbase.BasePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.time.Duration;
import java.util.List;

public class ArrayPage extends BasePage {

    private static final Logger log = LoggerFactory.getLogger(ArrayPage.class);

    public ArrayPage(WebDriver driver, TestContext context) {
        super(driver, context);
    }

    // =====================================================
    // Elements - Array Main Page
    // =====================================================

    @FindBy(xpath = "//a[contains(@href,'array') and contains(text(),'Get')]")
    private WebElement btnArrayGetStarted;

    @FindBy(xpath = "//ul//a[@class='list-group-item']")
    private List<WebElement> subModuleButtons;

    // =====================================================
    // Elements - Try Editor
    // =====================================================

    @FindBy(xpath = "//a[contains(@href,'tryEditor')]")
    private WebElement tryHereBtn;

    @FindBy(xpath = "//button[text()='Run']")
    private WebElement runBtnTryEditor;

    @FindBy(id = "output")
    private WebElement outputTryEditor;

    // =====================================================
    // Elements - Practice Questions
    // =====================================================

    @FindBy(linkText = "Practice Questions")
    private WebElement practiceQuestionsBtn;

    @FindBy(xpath = "//a[@class='list-group-item']")
    private List<WebElement> practiceQuestionLinks;

    @FindBy(xpath = "//*[@id='answer_form']/button")
    private WebElement runBtnPractice;

    @FindBy(xpath = "//*[@id='answer_form']/input[@type='submit']")
    private WebElement submitBtnPractice;

    @FindBy(id = "output")
    private WebElement outputPractice;

    // =====================================================
    // Actions - Get Started & Submodules
    // =====================================================

    public void clickArrayGetStarted() {
        waitForElementToClick(btnArrayGetStarted, 10);
        log.info("Clicked Array Get Started button");
    }

    public void clickSubmodule(String subModuleName) {
        for (WebElement module : subModuleButtons) {
            if (module.getText().trim().equalsIgnoreCase(subModuleName)) {
                waitForElementToClick(module, 10);
                log.info("Clicked submodule: {}", subModuleName);
                return;
            }
        }
        throw new RuntimeException("Submodule not found: " + subModuleName);
    }

    // =====================================================
    // Actions - Try Editor
    // =====================================================

    public void clickTryHere() {
        waitForElementToClick(tryHereBtn, 10);
        log.info("Clicked Try Here button");
    }

    public void runCodeInTryEditor(String code) {
        enterCodeInEditor(code);
        waitForElementToClick(runBtnTryEditor, 10);
        log.info("Executed code in Try Editor");
    }

    public String getTryEditorOutput() {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        return wait.until(ExpectedConditions.visibilityOf(outputTryEditor))
                .getText()
                .trim();
    }

    // =====================================================
    // Actions - Practice Questions
    // =====================================================

    public void clickPracticeButton(String buttonName) {
        if (buttonName.equalsIgnoreCase("Practice Questions")) {
            waitForElementToClick(practiceQuestionsBtn, 10);
            log.info("Clicked Practice Questions button");
        } else {
            throw new RuntimeException("Unknown button: " + buttonName);
        }
    }

    public void clickQuestion(String questionName) {
        for (WebElement question : practiceQuestionLinks) {
            if (question.getText().trim().equalsIgnoreCase(questionName)) {
                waitForElementToClick(question, 10);
                log.info("Clicked Practice Question: {}", questionName);
                return;
            }
        }
        throw new RuntimeException("Practice question not found: " + questionName);
    }

    public void runPracticeCode(String code) {
        enterCodeInEditor(code);
        waitForElementToClick(runBtnPractice, 5);
        log.info("Clicked Run in Practice Question");
    }

    public void submitPracticeCode(String code) {
        enterCodeInEditor(code);
        waitForElementToClick(submitBtnPractice, 10);
        log.info("Clicked Submit in Practice Question");
    }

    // =====================================================
    // Unified Result Handler (Handles Alert OR Output)
    // =====================================================

    public String getPracticeOutput() {

        try {
            WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(3));
            wait.until(ExpectedConditions.alertIsPresent());

            Alert alert = driver.switchTo().alert();
            String alertText = alert.getText().trim();
            log.info("Alert message displayed: {}", alertText);

            alert.accept();
            log.info("Alert accepted");

            return alertText;

        } catch (TimeoutException e) {

            log.info("No alert present. Checking output area.");

            WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(5));
            return wait.until(ExpectedConditions.visibilityOf(outputPractice))
                    .getText()
                    .trim();
        }
    }

    public String getSubmissionMessage() {
        return getPracticeOutput();
    }
}
