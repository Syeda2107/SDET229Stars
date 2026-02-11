package com.numpyninja.dsalgo.utilities;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.reporter.ExtentSparkReporter;
import com.aventstack.extentreports.reporter.configuration.Theme;

public class ExtentReportManager {

    private static ExtentReports extent;

    private ExtentReportManager() {
        // prevent instantiation
    }

    public static synchronized ExtentReports getInstance() {

        if (extent == null) {

            // 1️⃣ Report path
            String reportPath = System.getProperty("user.dir")
                    + "/test-output/Reports/SparkReport/DSAlgoReport.html";

            // 2️⃣ Spark Reporter
            ExtentSparkReporter spark = new ExtentSparkReporter(reportPath);
            spark.config().setTheme(Theme.STANDARD);
            spark.config().setDocumentTitle("DSAlgo Automation Test Report");
            spark.config().setReportName("DSAlgo Functional Test Execution");
            spark.config().setTimelineEnabled(true);
            spark.config().setEncoding("utf-8");

            // 3️⃣ Extent Reports
            extent = new ExtentReports();
            extent.attachReporter(spark);

            // 4️⃣ System Information (ALL Java-based)
            extent.setSystemInfo("Application", "DSAlgo");
            extent.setSystemInfo("Environment", "QA");
            extent.setSystemInfo("OS", System.getProperty("os.name"));
            extent.setSystemInfo("User", System.getenv("AUTOMATION_USER"));
            extent.setSystemInfo("Java Version", System.getProperty("java.version"));
            extent.setSystemInfo("Browser", "Chrome"); // override dynamically if needed
        }

        return extent;
    }
}
