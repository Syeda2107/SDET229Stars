package com.numpyninja.dsalgo.testRunner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
        features = "src/test/resources/Features",
        glue = "com.numpyninja.dsalgo.stepdefinitions",  // <-- package, not path
        plugin = {"pretty","html:target/cucumber-report.html"},
        monochrome = true
)
public class TestRunner extends AbstractTestNGCucumberTests {
}
