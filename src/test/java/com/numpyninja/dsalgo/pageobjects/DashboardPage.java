package com.numpyninja.dsalgo.pageobjects;

import com.numpyninja.dsalgo.testbase.BasePage;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import java.util.ArrayList;
import java.util.List;

public class DashboardPage extends BasePage {

    public DashboardPage(WebDriver driver) {
        super(driver);
    }

    @FindBy(xpath = "//div[@class='content']/h1")
    WebElement labelTxtH1; //Preparing for the Interviews

    @FindBy(xpath = "//div[@class='content']/p")
    WebElement labelTxtP; //You are at the right place

    @FindBy(xpath = "//button[text()='Get Started']")
    WebElement btnGetStarted;

    @FindBy(xpath = "//a[text()='Data Structures']")
    WebElement drpdwnDS;

    @FindBy(xpath = "//a[@class='dropdown-item']")
    List<WebElement> drpdwnDSOptions;

    @FindBy(xpath = "//a[text()='NumpyNinja']")
    WebElement NumpyNinjaText;

    @FindBy(xpath = "//a[text()=' Register ']")
    WebElement registerText;

    @FindBy(xpath = "//a[text()='Sign in']")
    WebElement signInText;

    @FindBy(xpath = "//h5[contains(text(),'Intro')]")
    WebElement dsLabel;

    @FindBy(xpath = "//a[contains(@href,'data')]")
    WebElement btnDsGetStarted;

    @FindBy(xpath = "//h5[contains(text(),'Array')]")
    WebElement arrayLabel;

    @FindBy(xpath = "//a[contains(@href,'array') and contains(text(),'Get')]")
    WebElement btnArrGetStarted;

    @FindBy(xpath = "//h5[contains(text(),'List')]")
    WebElement listLabel;

    @FindBy(xpath = "//a[contains(@href,'list') and contains(text(),'Get')]")
    WebElement btnlistGetStarted;

    @FindBy(xpath = "//h5[contains(text(),'Stack')]")
    WebElement stackLabel;

    @FindBy(xpath = "//a[contains(@href,'stack') and contains(text(),'Get')]")
    WebElement btnStackGetStarted;

    @FindBy(xpath = "//h5[contains(text(),'Que')]")
    WebElement queueLabel;

    @FindBy(xpath = "//a[contains(@href,'que') and contains(text(),'Get')]")
    WebElement btnQueGetStarted;

    @FindBy(xpath = "//h5[contains(text(),'Tree')]")
    WebElement treeLabel;

    @FindBy(xpath = "//a[contains(@href,'tree') and contains(text(),'Get')]")
    WebElement btnTreeGetStarted;

    @FindBy(xpath = "//h5[contains(text(),'Graph')]")
    WebElement graphLabel;

    @FindBy(xpath = "//a[contains(@href,'graph') and contains(text(),'Get')]")
    WebElement btnGraphGetStarted;

    public String validateTextPrepare() {
        return labelTxtH1.getText();
    }

    public String validateGetStartedbtn() {
        return btnGetStarted.getText();
    }

    public String validateNumpyNinjaText() {
        return NumpyNinjaText.getText();
    }

    public String validateregisterText() {
        return registerText.getText();
    }

    public String validateSignInText() {
        return signInText.getText();
    }

    public String validatePageTitle() {
        waitForTitle(driver.getTitle(), 10);
        return driver.getTitle();
    }

    public void clickGetStartedBtn() {
        waitForElementToClick(btnGetStarted, 10);
        //btnGetStarted.click();
    }

    public boolean validateDropdownValue(String drpValue) {
        boolean flag=false;
        waitForElementToClick(drpdwnDS, 10);
        List<String> options = new ArrayList<>();
        for (WebElement option : drpdwnDSOptions) {
            String dropdownValue=option.getText();
            if(dropdownValue.equalsIgnoreCase(drpValue)){
                flag=true;
            }
        }
        return flag;
    }

    public String getModuleText(String moduleText) {
        return switch (moduleText) {
            case "Data Structures-Introduction" -> dsLabel.getText();
            case "Array" -> arrayLabel.getText();
            case "Linked List" -> listLabel.getText();
            case "Stack" -> stackLabel.getText();
            case "Queue" -> queueLabel.getText();
            case "Tree" -> treeLabel.getText();
            case "Graph" -> graphLabel.getText();
            default -> throw new IllegalArgumentException("Invalid element");
        };
    }

    public String getModuleButtonText(String moduleText) {
        return switch (moduleText) {
            case "Data Structures-Introduction" -> btnDsGetStarted.getText();
            case "Array" -> btnArrGetStarted.getText();
            case "Linked List" -> btnlistGetStarted.getText();
            case "Stack" -> btnStackGetStarted.getText();
            case "Queue" -> btnQueGetStarted.getText();
            case "Tree" -> btnTreeGetStarted.getText();
            case "Graph" -> btnGraphGetStarted.getText();
            default -> throw new IllegalArgumentException("Invalid element");
        };
    }
}
