package com.numpyninja.dsalgo.pageobjects;

import com.numpyninja.dsalgo.testbase.BasePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import java.util.ArrayList;
import java.util.List;

public class DashboardPage extends BasePage {
    public DashboardPage(WebDriver driver, TestContext context)
    {
        super(driver,context);
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
        String prepareText = labelTxtH1.getText();
        return prepareText;
    }

    public String validateGetStartedbtn() {
        String getStartedbtnText = btnGetStarted.getText();
        return getStartedbtnText;
    }

    public String validateNumpyNinjaText() {
        String NNText = NumpyNinjaText.getText();
        return NNText;
    }

    public String validateregisterText() {
        String regText = registerText.getText();
        return regText;
    }

    public String validateSignInText() {
        String signText = signInText.getText();
        return signText;
    }

    public String validatePageTitle() {
        return driver.getTitle();
    }

    public void clickGetStartedBtn() {
        waitForElementToClick(btnGetStarted, 10);
        //btnGetStarted.click();
    }

    public List<String> getAllOptions() {
        waitForElementToClick(drpdwnDS, 10);
       // drpdwnDS.click();
        List<String> options = new ArrayList<>();
        for (WebElement option : drpdwnDSOptions) {
            options.add(option.getText().trim());
        }
        return options;
    }

    public String getModuleText(String moduleText){
        switch(moduleText){
            case "Data Structures-Introduction":return dsLabel.getText();
            case "Array":return arrayLabel.getText();
            case "Linked List":return listLabel.getText();
            case "Stack":return stackLabel.getText();
            case "Queue":return queueLabel.getText();
            case "Tree":return  treeLabel.getText();
            case "Graph":return graphLabel.getText();
            default:
                throw new IllegalArgumentException("Invalid element");
        }
    }
    public String getModuleButtonText(String moduleText){
        switch(moduleText){
            case "Data Structures-Introduction":return btnDsGetStarted.getText();
            case "Array":return btnArrGetStarted.getText();
            case "Linked List":return btnlistGetStarted.getText();
            case "Stack":return btnStackGetStarted.getText();
            case "Queue":return btnQueGetStarted.getText();
            case "Tree":return  btnTreeGetStarted.getText();
            case "Graph":return btnGraphGetStarted.getText();
            default:
                throw new IllegalArgumentException("Invalid element");
        }
    }

}
