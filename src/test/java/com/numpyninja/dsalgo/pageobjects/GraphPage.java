package com.numpyninja.dsalgo.pageobjects;

import com.numpyninja.dsalgo.testbase.BasePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class GraphPage extends BasePage {
    public GraphPage(WebDriver driver, TestContext context){ super(driver, context);}

    @FindBy(xpath ="//a[@href='graph' and text()='Get Started']")   // graph panel get started button
    WebElement graphgetstartedbtn;

   @FindBy(xpath = "//h4[text()='Graph']") // graph page inside graph panel
    WebElement graphheader;

    @FindBy(xpath ="//a[@href='graph']")  // inside graph panel for graph page
    WebElement graphpg;

    @FindBy(xpath = "//a[@href='graph-representations']") // graph representation page
    WebElement graphrepresentationpg;

    @FindBy(xpath = "//a[@href='/tryEditor' and text()='Try here>>>']") // try here
    WebElement tryHereBtn;

    @FindBy(xpath = "//pre[@class= \" CodeMirror-line \" and @role=\"presentation\"]")// empty text editor
    WebElement visibletexteditor;

    @FindBy(xpath ="//button[text()=\"Run\"]")  // run button in graph page editor
    WebElement runBtn;

    @FindBy(xpath ="//a[text()='Practice Questions']") //practice question link
    WebElement practiceQlink;

    public void ClickGraphGetstartedbtn() {
        waitForElementToClick(graphgetstartedbtn, 10); // clicks getstarted btn on graph panael
    } // can also inject with context pg,dashboard pg to find getstartedbtn element and click.

    public void ScrollDown(){
        JavascriptExecutor js = ((JavascriptExecutor) driver);
        js.executeScript("window.scrollBy(0,500)");
    }

    public void ClickGraphpg() {
        waitForElementToClick(graphpg, 10);
    } // waits 10 sec to click graphpg link inside graph panel

    public void ClickGraphRepresentationpg() {
        waitForElementToClick(graphrepresentationpg, 10);
    } // waits 10 sec to click graphrepresentationpg link inside graph panel

    public void clickTryHereBtn() {
        waitForElementToClick(tryHereBtn, 10);
    } // checks try here btn in graph pg

    public boolean TryEditorPageDisplayed(){
       waitForElementToDisplayed(visibletexteditor,10);
       waitForElementToDisplayed(runBtn,10);
       return visibletexteditor.isDisplayed() && runBtn.isDisplayed();
    }

    public void ClickRunbtn(){
        waitForElementToClick(runBtn,10);
    }// checks runbtn in text editor

    public void ClickPracticequestions(){
        waitForElementToClick(practiceQlink,10);
    }// checks practice question link in graph pg & graphrepresentation pg

}

