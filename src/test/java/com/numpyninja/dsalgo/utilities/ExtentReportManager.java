package com.numpyninja.dsalgo.utilities;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.reporter.ExtentSparkReporter;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class ExtentReportManager {

    private static ExtentReports extent;

    public static ExtentReports getInstance() throws IOException {
        if (extent == null) {
            createInstance();
        }
        return extent;
    }

    public static ExtentReports createInstance() throws IOException {
        if (extent == null) {

            // 1. Initialize the ExtentReports instance
            extent = new ExtentReports();

            // 2. Load properties file manually (still needed for paths, etc.)
            Properties prop = new Properties();
            try (FileInputStream fis = new FileInputStream("src/test/resources/extent.properties")) {
                prop.load(fis);
            } catch (IOException e) {
                System.err.println("Error loading extent.properties file: " + e.getMessage());
            }

            // 3. Set ALL System Information (Directly and Dynamically)
            //    We use hardcoded keys ("AppName", "Build", "OS", "User")
            //    and set their values based on the file or system.

            // Static AppName (Reads from prop file or uses default)
            // Note: We use the actual display name here.
            String appName = prop.getProperty("systeminfo.AppName", "DsAlgo Application");
            extent.setSystemInfo("Application Name", appName);

            // Static Build (Reads from prop file or uses default)
            String build = prop.getProperty("systeminfo.build", "1.1");
            extent.setSystemInfo("Build Version", build);

            // 🚀 Dynamic OS - ALWAYS read from the system property
            String os = System.getProperty("os.name");
            extent.setSystemInfo("OS", os); // <-- This is guaranteed to be dynamic

            // 🚀 Dynamic User - ALWAYS read dynamically
            String user = System.getenv("AUTOMATION_USER");
            if (user == null || user.isEmpty()) {
                user = System.getProperty("user.name");
            }
            extent.setSystemInfo("User", user); // <-- This is guaranteed to be dynamic

            // 4. Initialize and Attach the Reporter (FINAL STEP)
            ExtentSparkReporter spark =
                    new ExtentSparkReporter(System.getProperty("user.dir") + "/test-output/SparkReport/DSAlgoReport.html");

            spark.loadXMLConfig(System.getProperty("user.dir") + "/src/test/resources/extent-config.xml");

            extent.attachReporter(spark);
        }

        return extent;
    }
}