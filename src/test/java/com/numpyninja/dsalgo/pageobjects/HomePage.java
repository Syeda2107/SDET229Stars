package com.numpyninja.dsalgo.pageobjects;

import com.numpyninja.dsalgo.testbase.BasePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class HomePage extends BasePage {
    public HomePage(WebDriver driver, TestContext context) {
        super(driver,context);
    }

    @FindBy(xpath = "//a[contains(@href,'array') and @class='dropdown-item']")
    WebElement dropdwnArrayElement;

    @FindBy(xpath = "//a[contains(@href,'list') and @class='dropdown-item']")
    WebElement dropdwnListElement;

    @FindBy(xpath = "//a[contains(@href,'stack') and @class='dropdown-item']")
    WebElement dropdwnStackElement;

    @FindBy(xpath = "//a[contains(@href,'que') and @class='dropdown-item']")
    WebElement dropdwnQueElement;

    @FindBy(xpath = "//a[contains(@href,'tree') and @class='dropdown-item']")
    WebElement dropdwnTreeElement;

    @FindBy(xpath = "//a[contains(@href,'graph') and @class='dropdown-item']")
    WebElement dropdwnGraphElement;

    @FindBy(xpath = "//div[@class='alert alert-primary']")
    WebElement alertMsg;

    public void clickDropdownDS(){
        waitForElementToClick(context.dashboardPage.drpdwnDS,10);
    }

    public void clickDropdownElements(String drpEle){
        switch (drpEle){
            case "Arrays":waitForElementToClick(dropdwnArrayElement,10);
                break;
            case "Linked List":waitForElementToClick(dropdwnListElement,10);
                 break;
            case "Stack":waitForElementToClick(dropdwnStackElement,10);
                 break;
            case "Queue":waitForElementToClick(dropdwnQueElement,10);
                 break;
            case "Tree":waitForElementToClick(dropdwnTreeElement,10);
                 break;
            case "Graph":waitForElementToClick(dropdwnGraphElement,10);
                break;
            default:
                throw new IllegalArgumentException("Invalid Element");
        }
    }

    public void clickGetStartedBtn(String module){
        switch (module){
            case "Data Structures - Introduction":context.dashboardPage.btnDsGetStarted.click();
            break;
            case "Array":context.dashboardPage.btnArrGetStarted.click();
            break;
            case "Linked List":context.dashboardPage.btnlistGetStarted.click();
            break;
            case "Stack":context.dashboardPage.btnStackGetStarted.click();
            break;
            case "Queue":context.dashboardPage.btnQueGetStarted.click();
            break;
            case "Tree":context.dashboardPage.btnTreeGetStarted.click();
            break;
            case "Graph":context.dashboardPage.btnGraphGetStarted.click();
            break;
            default:
                throw new IllegalArgumentException("Invalid Element");
        }

    }

    public String getAlertMsg(){
       return alertMsg.getText();
    }


    public void clickSignInLink() {
    }
}
