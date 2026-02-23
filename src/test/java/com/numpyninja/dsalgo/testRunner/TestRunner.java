package com.numpyninja.dsalgo.testRunner;

import io.cucumber.testng.CucumberOptions;
import io.cucumber.testng.AbstractTestNGCucumberTests;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Optional;
import org.testng.annotations.Parameters;

//@RunWith(Cucumber.class)
@CucumberOptions(features = {
        "src/test/resources/Features/Dashboard.feature",
        "src/test/resources/Features/Home.feature",
        "src/test/resources/Features/Registration.feature",
        "src/test/resources/Features/Login.feature",
        "src/test/resources/Features/DSIntroduction.feature",
        "src/test/resources/Features/Array.feature",
        "src/test/resources/Features/LinkedList.feature",
        "src/test/resources/Features/Graph.feature",
        "src/test/resources/Features/Tree.feature"
},
        glue = {"com.numpyninja.dsalgo.stepdefinitions", "com.numpyninja.dsalgo.apphooks"},
        // tags = "@SmokeTest or @RegressionTest or @DBP-1 or @GP",
        dryRun = false,
        monochrome = true,
        publish = true,
        plugin = {"pretty",//"html:Reports/index.html"
                "io.qameta.allure.cucumber7jvm.AllureCucumber7Jvm",
                "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:",
                "rerun:target/failed_scenarios.txt"
        })
public class TestRunner extends AbstractTestNGCucumberTests {

    @BeforeClass(alwaysRun = true)
    @Parameters("browser")
    public void setBrowser(@Optional("chrome") String browser) {
        if (browser != null && !browser.isEmpty())
            System.setProperty("browser", browser);
        System.out.println("Browser set to : " + browser);
    }

    @DataProvider(parallel = true)
    @Override
    public Object[][] scenarios() {
        return super.scenarios();
    }
}
