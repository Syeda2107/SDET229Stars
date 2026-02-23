package com.numpyninja.dsalgo.testbase;

import com.github.javafaker.Faker;
import com.numpyninja.dsalgo.pageobjects.*;
import com.numpyninja.dsalgo.utilities.ConfigReader;
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
    public long timeComplexityLoadTime;
    public long dsIntroLoadTime;
    public long tryEditorLoadTime;
    public long practiceLoadTime;
    public long loginTime;
    public long regTime;
    public long homeTime;
    public long dashboardTime;
    public long GraphPageLoadTime;
    public long GraphLinkLoadTime;
    public long GraphLinkTryHereLoadTime;
    public long GraphLinkPracticeQLoadTime;
    public long GraphRpLinkLoadTime;
    public long GraphRpLinkTryHereLoadTime;
    public long GraphRpLinkPracticeQLoadTime;
    public long TreePageLoadTime;
    public long OverviewOfTreesPageLoadTime;
    public long OverviewOfTreesTryHereLoadTime;
    public long TerminologiesPageLoadTime;
    public long TerminologiesTryHereLoadTime;
    public long TypesOfTreesPageLoadTime;
    public long TypesOfTreesTryHereLoadTime;
    public long TreeTraversalsPageLoadTime;
    public long TreeTraversalsTryHereLoadTime;
    public long TraversalsIllustrationPageLoadTime;
    public long TraversalsIllustrationTryHereLoadTime;
    public long BinaryTreesPageLoadTime;
    public long BinaryTreesPageTryHereLoadTime;
    public long TypesOfBinaryTreesPageLoadTime;
    public long TypesOfBinaryTreesTryHereLoadTime;
    public long ImplementationInPythonPageLoadTime;
    public long ImplementationInPythonTryHereLoadTime;
    public long BinaryTreeTraversalsPageLoadTime;
    public long BinaryTreeTraversalsTryHereLoadTime;
    public long ImplementationOfBinaryTreePageLoadTime;
    public long ImplementationOfBinaryTreesTryHereLoadTime;
    public long ApplicationOfBinaryTreesPageLoadTime;
    public long ApplicationOfBinaryTreesTryHereLoadTime;
    public long BinarySearchTreesPageLoadTime;
    public long BinarySearchTreesTryHereLoadTime;
    public long ImplementationOfBSTPageLoadTime;
    public long ImplementationOfBSTTryHereLoadTime;
    public long TreePracticeQLoadTime;
    public ConfigReader configReader;

    //public static String browserName;

    public TestContext() {
        this.configReader = new ConfigReader();  // ✅ initialize here
        this.faker=new Faker(); // new Faker() creates a new Faker object,this.faker refers to instance variable.

    }
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
    }
}
