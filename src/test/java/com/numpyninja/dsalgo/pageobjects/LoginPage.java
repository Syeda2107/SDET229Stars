package com.numpyninja.dsalgo.pageobjects;

import com.numpyninja.dsalgo.testbase.BasePage;
import com.numpyninja.dsalgo.testbase.TestContext;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.testng.Assert;

public class LoginPage extends BasePage {
    String username;

    public LoginPage(WebDriver driver, TestContext context) {
        super(driver, context);
    }

    @FindBy(xpath = "//input[@id='id_password']")
    WebElement pwdTxt;

    @FindBy(xpath = "//a[contains(text(),'Register')]")
    WebElement registerLink;

    @FindBy(xpath = "//a[contains(text(),'@gmail')]")
    WebElement loggedInUser;

    @FindBy(xpath = "//a[contains(text(),'Sign out')]")
    WebElement signOutLink;

    public void clickSignInLink() {
        waitForElementToClick(context.dashboardPage.signInText, 10);
    }

    public void enterCredentials(String username, String password) {
        this.username = username;
        context.registrationPage.usernameTxt.sendKeys(username);
        pwdTxt.sendKeys(password);
    }

    public void clickLoginBtn() {
        waitForElementToClick(context.registrationPage.btnSubmit, 10);
    }

    public String validateloggedInUser() {
        String actualLoggedInUsername = loggedInUser.getText().toLowerCase();
        return actualLoggedInUsername;

    }

    public void clickSignOutLink() {
        waitForElementToClick(signOutLink, 10);
    }

    public void clickRegLnkInLoginPage(){
        waitForElementToClick(registerLink,10);
    }

    public String getPwdTooltipMsg(){
        return getTooltipMsg(pwdTxt);
    }

}
