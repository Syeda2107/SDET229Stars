package com.numpyninja.dsalgo.testRunner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = {"src/test/resources/Features/Home.feature"},
        glue = {"com.numpyninja.dsalgo.stepdefinitions","com.numpyninja.dsalgo.apphooks"},
        //tags = "@SmokeTest or @RegressionTest or @DBP-1",
        dryRun = false,
        monochrome = true,
        publish=true,
        plugin = {"pretty",//"html:Reports/index.html"
               "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"
        })
public class TestRunner {

}
