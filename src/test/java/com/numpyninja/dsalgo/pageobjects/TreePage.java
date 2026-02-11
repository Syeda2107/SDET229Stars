package com.numpyninja.dsalgo.pageobjects;

import com.numpyninja.dsalgo.testbase.BasePage;
import com.numpyninja.dsalgo.testbase.TestContext;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class TreePage extends BasePage {
    public TreePage(WebDriver driver, TestContext context) { super(driver, context); // constructor
    }
    @FindBy(xpath ="//a[@href='tree' and text()='Get Started']")   // tree panel get started button
    WebElement treegetstartedbtn;

    @FindBy(xpath = "//h4[text()='Graph']") // tree page inside tree panel
    WebElement treeheader;

    @FindBy(xpath ="//a[contains(text(),'Overview of Trees')]")  // inside tree panel for Overviews of tree page link
    WebElement overviewoftrees;

    @FindBy(xpath ="//a[contains(text(),'Terminologies')]")  // inside tree panel for terminologies page link
    WebElement terminologies;

    @FindBy(xpath ="//a[contains(text(),'Types of Trees')]")  // inside tree panel for typesofTrees page link
    WebElement typesofTrees;

    @FindBy(xpath ="//a[contains(text(),'Tree Traversals')]")  // inside tree panel for treetraversals page link
    WebElement treetraversals;

    @FindBy(xpath ="//a[contains(text(),'Traversals-Illustration')]")  // inside tree panel for traversalsillustration page link
    WebElement traversalsillustration;

    @FindBy(xpath ="//a[contains(text(),'Binary Trees')]")  // inside tree panel for binarytrees page link
    WebElement binarytrees;

    @FindBy(xpath ="//a[contains(text(),'Types of Binary Trees')]")  // inside tree panel for typesofbinarytrees page link
    WebElement typesofbinarytrees;

    @FindBy(xpath ="//a[contains(text(),'Implementation in Python')]")  // inside tree panel for implementationinpython page link
    WebElement implementationinpython;

    @FindBy(xpath ="//a[contains(text(),'Binary Tree Traversals')]")  // inside tree panel for binarytreetraversals page link
    WebElement binarytreetraversals;

    @FindBy(xpath ="//a[contains(text(),'Implementation of Binary Tree')]")  // inside tree panel for implementationofbinarytree page link
    WebElement implementationofbinarytree;

    @FindBy(xpath ="//a[contains(text(),'Applications of Binary trees')]")  // inside tree panel for applicationofbinarytrees page link
    WebElement applicationofbinarytrees;

    @FindBy(xpath ="//a[contains(text(),'Binary Search Trees')]")  // inside tree panel for binarysearchtrees page link
    WebElement binarysearchtrees;

    @FindBy(xpath ="//a[contains(text(),'Implementation Of BST')]")  // inside tree panel for implementationofbst page link
    WebElement implementationofbst;

    public void ClickTreeGetstartedbtn() {
        waitForElementToClick(treegetstartedbtn, 10); // clicks getstarted btn on graph panael
    } // can also inject with context pg,dashboard pg to find getstartedbtn element and click.



    public void ClickOverviewofTrees() {
        waitForElementToClick(overviewoftrees, 10);
    } // waits 10 sec to click overviewoftrees link inside graph panel

    public void ClickTerminologies() {
        waitForElementToClick(terminologies, 10);
    } // waits 10 sec to click terminologies link inside graph panel

    public void TypesofTrees() {
        waitForElementToClick(typesofTrees, 10);
    } // waits 10 sec to click typesofTrees link inside graph panel

    public void TreeTraversals() {
        waitForElementToClick(treetraversals, 10);
    } // waits 10 sec to click treetraversals link inside graph panel

    public void ClickTraversalsIllustration() {
        waitForElementToClick(traversalsillustration, 10);
    }// waits 10 sec to click traversalsillustration link inside graph panel

    public void ClickBinaryTrees() {
            waitForElementToClick(binarytrees, 10);
        } // waits 10 sec to click binarytrees link inside graph panel

    public void ClickTypesofBinaryTrees() {
            waitForElementToClick(typesofbinarytrees, 10);
        } // waits 10 sec to click typesofbinarytrees link inside graph panel

        public void ImplementationinPython() {
            waitForElementToClick(implementationinpython, 10);
        } // waits 10 sec to click implementationinpython link inside graph panel

        public void ClickBinaryTreeTraversals() {
            waitForElementToClick(binarytreetraversals, 10);
        } // waits 10 sec to click binarytreetraversals link inside graph panel

        public void ClickImplementationofBinaryTree() {
            waitForElementToClick(implementationofbinarytree, 10);
        } // waits 10 sec to click implementationofbinarytree link inside graph panel

    public void ClickApplicationofBinaryTrees() {
        waitForElementToClick(applicationofbinarytrees, 10);
    } // waits 10 sec to click applicationofbinarytrees link inside graph panel

    public void ClickBinarySearchTrees() {
        waitForElementToClick(binarysearchtrees, 10);
    } // waits 10 sec to click binarysearchtrees link inside graph panel

    public void ClickImplementationofBST() {
        waitForElementToClick(implementationofbst, 10);
    } // waits 10 sec to click implementationofbst link inside graph panel

}
