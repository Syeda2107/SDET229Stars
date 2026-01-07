package com.numpyninja.dsalgo.testbase;

import com.numpyninja.dsalgo.pageobjects.*;
import org.openqa.selenium.WebDriver;

public class PageObjectManager {

    private DashboardPage dashboardPage;
    private HomePage homePage;
    private RegistrationPage registrationPage;
    private LoginPage loginPage;
    private DSIntroductionPage dsIntroductionPage;
    private WebDriver driver;

    public PageObjectManager(WebDriver driver) {
        this.driver = driver;
    }

    public DashboardPage getDashboardPage() {
        if (dashboardPage == null)
            dashboardPage = new DashboardPage(driver);
        return dashboardPage;
    }

    public HomePage getHomePage() {
        if (homePage == null)
            homePage = new HomePage(driver);
        return homePage;
    }

    public RegistrationPage getregistrationPage() {
        if (registrationPage == null)
            registrationPage = new RegistrationPage(driver);
        return registrationPage;
    }

    public LoginPage getLoginPage() {
        if (loginPage == null)
            loginPage = new LoginPage(driver);
        return loginPage;
    }

    public DSIntroductionPage getDSIntroductionPage() {
        if (dsIntroductionPage == null)
            dsIntroductionPage = new DSIntroductionPage(driver);
        return dsIntroductionPage;
    }
}
