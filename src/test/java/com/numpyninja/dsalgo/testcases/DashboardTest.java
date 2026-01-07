package com.numpyninja.dsalgo.testcases;

import com.numpyninja.dsalgo.pojo.DashboardData;
import com.numpyninja.dsalgo.testbase.BaseTest;
import com.numpyninja.dsalgo.utilities.DataProviders;
import com.numpyninja.dsalgo.utilities.DataProviders1;
import lombok.extern.slf4j.Slf4j;
import org.testng.Assert;
import org.testng.annotations.Test;

@Slf4j
public class DashboardTest extends BaseTest {

    @Test(dataProvider = "DashboardData", dataProviderClass = DataProviders.class)
    public void runDashboardTest(DashboardData data) {
        if (data.getTestCaseId().compareTo("TC_Dashboard_004") >= 0) {
            pageObjectManager.getDashboardPage().clickGetStartedBtn();
            //log.info("Pre-condition: Clicked Get started button and navigated to Home page");
        }
        switch (data.getTestCaseId()) {
            case "TC_Dashboard_001":
                String actualTitle = pageObjectManager.getDashboardPage().validatePageTitle();
                Assert.assertEquals(actualTitle, data.getPageTitle());
                log.info("TC_Dashboard_001: Validating Page Title. Expected: {}", data.getPageTitle());
                break;

            case "TC_Dashboard_002":
                String actualBtn = pageObjectManager.getDashboardPage().validateGetStartedbtn();
                Assert.assertEquals(actualBtn, data.getValidateText());
                log.info("TC_Dashboard_002: Validating Get Started button. Expected: {}", data.getValidateText());
                break;

            case "TC_Dashboard_003":
                String actualHeader = pageObjectManager.getDashboardPage().validateTextPrepare();
                Assert.assertEquals(actualHeader, data.getValidateText());
                log.info("TC_Dashboard_003: Validating header text. Expected: {}", data.getValidateText());
                break;

            case "TC_Dashboard_004":
                log.info("TC_Dashboard_004: Navigation is completed");
                break;

            case "TC_Dashboard_005":
                String actualNumpyNinjaText = pageObjectManager.getDashboardPage().validateNumpyNinjaText();
                Assert.assertEquals(actualNumpyNinjaText, data.getValidateText());
                log.info("TC_Dashboard_005: Validating NumpyNinja text. Expected: {}", data.getValidateText());
                break;

            case "TC_Dashboard_006":
                boolean actualDropdwnArraysText = pageObjectManager.getDashboardPage().validateDropdownValue(data.getValidateText());
                Assert.assertTrue(actualDropdwnArraysText);
                log.info("TC_Dashboard_006: Validating Arrays text in DataStructures dropdown. Expected: {}", data.getValidateText());
                break;

            case "TC_Dashboard_007":
                boolean actualDropdwnLinkedListText = pageObjectManager.getDashboardPage().validateDropdownValue(data.getValidateText());
                Assert.assertTrue(actualDropdwnLinkedListText);
                log.info("TC_Dashboard_007: Validating LinkedList text in DataStructures dropdown. Expected: {}", data.getValidateText());
                break;

            case "TC_Dashboard_008":
                boolean actualDropdwnStackText = pageObjectManager.getDashboardPage().validateDropdownValue(data.getValidateText());
                Assert.assertTrue(actualDropdwnStackText);
                log.info("TC_Dashboard_007: Validating Stack text in DataStructures dropdown. Expected: {}", data.getValidateText());
                break;

            case "TC_Dashboard_009":
                boolean actualDropdwnQueueText = pageObjectManager.getDashboardPage().validateDropdownValue(data.getValidateText());
                Assert.assertTrue(actualDropdwnQueueText);
                log.info("TC_Dashboard_007: Validating Queue text in DataStructures dropdown. Expected: {}", data.getValidateText());
                break;

            case "TC_Dashboard_010":
                boolean actualDropdwnTreeText = pageObjectManager.getDashboardPage().validateDropdownValue(data.getValidateText());
                Assert.assertTrue(actualDropdwnTreeText);
                log.info("TC_Dashboard_010: Validating Tree text in DataStructures dropdown. Expected: {}", data.getValidateText());
                break;

            case "TC_Dashboard_011":
                boolean actualDropdwnGraphText = pageObjectManager.getDashboardPage().validateDropdownValue(data.getValidateText());
                Assert.assertTrue(actualDropdwnGraphText);
                log.info("TC_Dashboard_011: Validating Graph text in DataStructures dropdown. Expected: {}", data.getValidateText());
                break;

            case "TC_Dashboard_012":
                String actualRegisterText = pageObjectManager.getDashboardPage().validateregisterText();
                Assert.assertEquals(actualRegisterText, data.getValidateText());
                log.info("TC_Dashboard_012: Validating Register text. Expected: {}", data.getValidateText());
                break;

            case "TC_Dashboard_013":
                String actualSignInText = pageObjectManager.getDashboardPage().validateSignInText();
                Assert.assertEquals(actualSignInText, data.getValidateText());
                log.info("TC_Dashboard_013: Validating SignIn text. Expected: {}", data.getValidateText());
                break;

            case "TC_Dashboard_014":
                String[] validateText =data.getValidateText().split(",");
                String DSIntroText=validateText[0];
                System.out.println(DSIntroText);
                String DsGetStartedText=validateText[1];
                System.out.println(DsGetStartedText);
                String actualDSIntroText = pageObjectManager.getDashboardPage().getModuleText(DSIntroText);
                String actualDSIntroGetStartedText = pageObjectManager.getDashboardPage().getModuleButtonText(DSIntroText);
                Assert.assertEquals(actualDSIntroText.trim(), DSIntroText.trim());
                Assert.assertEquals(actualDSIntroGetStartedText, DsGetStartedText);
                log.info("TC_Dashboard_014: Validating DS Introduction text with Get Started Button. Expected: {}", DSIntroText +" and "+ DsGetStartedText);
                break;

            case "TC_Dashboard_015":
                String[] validateArrayText =data.getValidateText().split(",");
                String arrayText=validateArrayText[0];
                System.out.println(arrayText);
                String arrGetStartedText=validateArrayText[1];
                System.out.println(arrGetStartedText);
                String actualArrayText = pageObjectManager.getDashboardPage().getModuleText(arrayText);
                String actualArrayGetStartedText = pageObjectManager.getDashboardPage().getModuleButtonText(arrayText);
                Assert.assertEquals(actualArrayText.trim(), arrayText.trim());
                Assert.assertEquals(actualArrayGetStartedText, arrGetStartedText);
                log.info("TC_Dashboard_015: Validating Array text with Get Started Button. Expected: {}", arrayText +" and "+ arrGetStartedText);
                break;

            case "TC_Dashboard_016":
                String[] validateListText =data.getValidateText().split(",");
                String listText=validateListText[0];
                String listGetStartedText=validateListText[1];
                String actualListText = pageObjectManager.getDashboardPage().getModuleText(listText);
                String actualListGetStartedText = pageObjectManager.getDashboardPage().getModuleButtonText(listText);
                Assert.assertEquals(actualListText, listText);
                Assert.assertEquals(actualListGetStartedText, listGetStartedText);
                log.info("TC_Dashboard_016: Validating Linked List text with Get Started Button. Expected: {}", listText +" and "+ listGetStartedText);
                break;

            case "TC_Dashboard_017":
                String[] validateStackText =data.getValidateText().split(",");
                String stackText=validateStackText[0];
                String stackGetStartedText=validateStackText[1];
                String actualStackText = pageObjectManager.getDashboardPage().getModuleText(stackText);
                String actualStackGetStartedText = pageObjectManager.getDashboardPage().getModuleButtonText(stackText);
                Assert.assertEquals(actualStackText, stackText);
                Assert.assertEquals(actualStackGetStartedText, stackGetStartedText);
                log.info("TC_Dashboard_017: Validating Stack text with Get Started Button. Expected: {}", stackText +" and "+ stackGetStartedText);
                break;

            case "TC_Dashboard_018":
                String[] validateQueueText =data.getValidateText().split(",");
                String queueText=validateQueueText[0];
                String queueGetStartedText=validateQueueText[1];
                String actualQueueText = pageObjectManager.getDashboardPage().getModuleText(queueText);
                String actualQueueGetStartedText = pageObjectManager.getDashboardPage().getModuleButtonText(queueText);
                Assert.assertEquals(actualQueueText, queueText);
                Assert.assertEquals(actualQueueGetStartedText, queueGetStartedText);
                log.info("TC_Dashboard_018: Validating Queue text with Get Started Button. Expected: {}", queueText +" "+ queueGetStartedText);
                break;

            case "TC_Dashboard_019":
                String[] validateTreeText =data.getValidateText().split(",");
                String treeText=validateTreeText[0];
                String treeGetStartedText=validateTreeText[1];
                String actualTreeText = pageObjectManager.getDashboardPage().getModuleText(treeText);
                String actualTreeGetStartedText = pageObjectManager.getDashboardPage().getModuleButtonText(treeText);
                Assert.assertEquals(actualTreeText, treeText);
                Assert.assertEquals(actualTreeGetStartedText, treeGetStartedText);
                log.info("TC_Dashboard_019: Validating Tree text with Get Started Button. Expected: {}", treeText +" and "+ treeGetStartedText);
                break;

            case "TC_Dashboard_020":
                String[] validateGraphText =data.getValidateText().split(",");
                String graphText=validateGraphText[0];
                String graphGetStartedText=validateGraphText[1];
                String actualGraphText = pageObjectManager.getDashboardPage().getModuleText(graphText);
                String actualGraphGetStartedText = pageObjectManager.getDashboardPage().getModuleButtonText(graphText);
                Assert.assertEquals(actualGraphText, graphText);
                Assert.assertEquals(actualGraphGetStartedText, graphGetStartedText);
                log.info("TC_Dashboard_020: Validating Graph text with Get Started Button. Expected: {}", graphText +" and "+ graphGetStartedText);
                break;

            default:
                throw new IllegalArgumentException("Unknown test case: " + data.getTestCaseId());
        }
    }
}
