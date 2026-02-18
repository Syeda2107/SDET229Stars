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
    public ArrayPage arrayPage;
    public LinkedListPage linkedListPage;
    public HomePage homePage;
    public RegistrationPage registrationPage;
    public LoginPage loginPage;
    public DSIntroductionPage dsIntroductionPage;
    public TreePage treePage;
    public GraphPage graphPage;
    public Faker faker; // Faker is a Java library used to generate fake test data,it helps you avoid hard‑coding values.

    //public static String browserName;

    public void initializePageObjects() {
        this.dashboardPage = new DashboardPage(driver,this);
        this.homePage = new HomePage(driver,this);
        this.registrationPage = new RegistrationPage(driver,this);
        this.loginPage = new LoginPage(driver,this);
        this.dsIntroductionPage = new DSIntroductionPage(driver,this);
        this.arrayPage = new ArrayPage(driver,this);
        this.linkedListPage = new LinkedListPage(driver,this);
        this.treePage = new TreePage(driver,this);
        this.graphPage = new GraphPage(driver,this);
        this.faker=new Faker(); // new Faker() creates a new Faker object,this.faker refers to instance variable.


    }
}
