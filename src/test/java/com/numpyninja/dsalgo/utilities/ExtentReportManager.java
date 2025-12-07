package com.numpyninja.dsalgo.utilities;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.reporter.ExtentSparkReporter;
import com.aventstack.extentreports.reporter.configuration.Theme;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ExtentReportManager {

    private static ExtentReports extent;

    public static ExtentReports createInstance() {
        String timestamp = new SimpleDateFormat("dd-MM-yyyy_HH-mm-ss").format(new Date());
        String reportName = "DSAlgo_Application_Automation_Report_" + timestamp + ".html";
        String reportPath = System.getProperty("user.dir") + "/test-output/SparkReport/" + reportName;

        ExtentSparkReporter sparkReporter = new ExtentSparkReporter(reportPath);
        sparkReporter.config().setDocumentTitle("DSAlgo Application Automation Report");
        sparkReporter.config().setReportName("DSAlgo Application Test Execution");
        sparkReporter.config().setTheme(Theme.STANDARD);

        extent = new ExtentReports();
        extent.attachReporter(sparkReporter);
        extent.setSystemInfo("OS", System.getProperty("os.name"));
        extent.setSystemInfo("User", System.getenv("AUTOMATION_USER"));
        extent.setSystemInfo("Application", "DSAlgo");
        extent.setSystemInfo("Build", "1.1");

        return extent;
    }
}
