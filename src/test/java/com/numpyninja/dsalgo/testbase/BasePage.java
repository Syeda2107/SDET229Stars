package com.numpyninja.dsalgo.testbase;

import com.numpyninja.dsalgo.utilities.ExcelReader;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.IOException;
import java.time.Duration;
import java.util.List;
import java.util.Map;

public class BasePage {
    protected WebDriver driver;
    protected TestContext context;
    String filePath = System.getProperty("user.dir")
            + "/TestData/DSAlgo_Data_Driven_Testing.xlsx";

    public BasePage(WebDriver driver, TestContext context) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
        this.context = context;
    }

    public WebDriverWait getWait(long timeOut) {
        return new WebDriverWait(driver, Duration.ofSeconds(timeOut));
    }

    public void waitForElementToClick(WebElement element, long timeOutInSec) {
        getWait(timeOutInSec).until(ExpectedConditions.elementToBeClickable(element)).click();
    }

    public String getTooltipMsg(WebElement element) {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        String toolTipMsg = (String) js.executeScript("return arguments[0].validationMessage;", element);
        return toolTipMsg;
    }

    public void waitForUrl(String urlText, long timeOutInSec) {
        getWait(timeOutInSec).until(ExpectedConditions.urlToBe(urlText));
    }

    public void enterCodeInEditor(String code) {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript(
                "document.querySelector('.CodeMirror').CodeMirror.setValue(arguments[0]);",
                code
        );
    }

    public void waitForTitle(String title, long timeOutInSec) {
        getWait(timeOutInSec).until(ExpectedConditions.or(ExpectedConditions.titleIs(title),
                ExpectedConditions.titleContains(title)));
    }

    public List<Map<String, String>> readDataFromExcel(String sheetName, Integer rowNumber) throws IOException, InvalidFormatException {
        ExcelReader reader = new ExcelReader();
        return reader.getData(filePath, sheetName);
    }

    public void waitForElementToDisplayed(WebElement element, long timeOutInSec) {
        getWait(timeOutInSec).until(ExpectedConditions.visibilityOf(element));
    }

    public boolean waitForPageToLoad() {
        return getWait(15).until(
                webDriver -> ((JavascriptExecutor) webDriver).executeScript("return document.readyState")
                        .equals("complete")
        );
    }
}
