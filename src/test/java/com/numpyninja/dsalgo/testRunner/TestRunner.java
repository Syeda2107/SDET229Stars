package com.numpyninja.dsalgo.testRunner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = {//"src/test/resources/Features/Dashboard.feature",
//        "src/test/resources/Features/Home.feature",
//       "src/test/resources/Features/Registration.feature",
//        "src/test/resources/Features/Login.feature",
//        "src/test/resources/Features/DSIntroduction.feature",
        "src/test/resources/Features/Tree.feature",
       // "src/test/resources/Features/Graph.feature"
        },
        glue = {"com.numpyninja.dsalgo.stepdefinitions","com.numpyninja.dsalgo.apphooks"},
        //tags = "@TP",//"@SmokeTest or @RegressionTest or @DBP-1",
        dryRun = false,
        monochrome = true,
        publish=true,
        plugin = {"pretty",//"html:Reports/index.html"
                "io.qameta.allure.cucumber7jvm.AllureCucumber7Jvm",
               "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"
        })
public class TestRunner {

}
