package com.numpyninja.dsalgo.testbase;

import com.github.javafaker.Faker;
import com.numpyninja.dsalgo.pageobjects.*;
import lombok.Getter;
import lombok.Setter;
import org.openqa.selenium.WebDriver;


@Setter
@Getter
public class TestContext {
    WebDriver driver;
    public DashboardPage dashboardPage;
    public HomePage homePage;
    public RegistrationPage registrationPage;
    public LoginPage loginPage;
    public DSIntroductionPage dsIntroductionPage;
    public Faker faker;
    //public static String browserName;

    public void initializePageObjects() {
        this.dashboardPage = new DashboardPage(driver,this);
        this.homePage = new HomePage(driver,this);
        this.registrationPage = new RegistrationPage(driver,this);
        this.loginPage = new LoginPage(driver,this);
        this.dsIntroductionPage = new DSIntroductionPage(driver,this);
        this.faker=new Faker();
    }
}
