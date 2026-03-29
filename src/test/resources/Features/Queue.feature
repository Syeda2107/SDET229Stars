
Feature: Queue - Functionality of DsAlgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When the user clicks on Get Started button in the DsAlgo Portal
    And user clicks on Sign in link in the Home page
    When the user enters valid Username and Password in the Login form
    And user clicks on Login button
    When The user clicks Getting Started button in Queue


  Scenario: Verify that user is able to navigate to "Queue" page on Queue Submodule
    Then The user should be directed to "Queue" page on Queue Submodule

  Scenario: Verify that user is able to navigate to "Implementation of Queue in Python" page on Queue Submodule
    When The user clicks Implementation of Queue in Python button
    Then The user should be directed to "Implementation of Queue in Python" page on Queue Submodule

  Scenario: Verify that user is able to navigate to "Implementation using collections queue" page on Queue Submodule
    When The user clicks Implementation using collections queue button
    Then The user should be directed to "Implementation using collections.deque" page on Queue Submodule

  Scenario: Verify that user is able to navigate to "Implementation using Arrays" page on Queue Submodule
    When The user clicks Implementation using Arrays button
    Then The user should be directed to "Implementation using array" page on Queue Submodule

  Scenario: Verify that user is able to navigate to "Queue Operations" page on Queue Submodule
    When The user clicks Queue Operations button
    Then The user should be directed to "Queue Operations" page on Queue Submodule

  Scenario: Verify that user navigates to "Try editor" for "Implementation of Queue in Python" page on Queue Submodule
    When The user clicks Implementation of Queue in Python button
    And The user clicks on Try here link in Queue Submodule
    Then The user should be redirected to a page having a try editor with a Run button on Queue Submodule

  Scenario: Verify that user navigates to "Try editor" for "Implementation using collections.deque" page on Queue Submodule
    When The user clicks Implementation using collections queue button
    And The user clicks on Try here link in Queue Submodule
    Then The user should be redirected to a page having a try editor with a Run button on Queue Submodule

  Scenario: Verify that user navigates to "Try editor" for "Implementation using array" page on Queue Submodule
    When The user clicks Implementation using Arrays button
    And The user clicks on Try here link in Queue Submodule
    Then The user should be redirected to a page having a try editor with a Run button on Queue Submodule

  Scenario: Verify that user navigates to "Try editor" for "Queue Operations" page on Queue Submodule
    When The user clicks Queue Operations button
    And The user clicks on Try here link in Queue Submodule
    Then The user should be redirected to a page having a try editor with a Run button on Queue Submodule

    Scenario: Verify that user is able to navigate to "Practice Questions" page
    When The user clicks Implementation of Queue in Python button
    And The user clicks the Queue Submodule "Practice Questions" button
    Then The user should be redirected to "Practice Questions" page

    Scenario: Verify that user is redirected correctly for Tree from dropdown
    When The user selects "Tree" from Queue data structures dropdown
    Then The user should be redirected to "Tree" page

  Scenario: Verify that user is redirected correctly for Graph from dropdown
    When The user selects "Graph" from Queue data structures dropdown
    Then The user should be redirected to "Graph" page

  Scenario Outline: Verify output or error message for python code in Queue Try Editor
    When The user clicks Implementation of Queue in Python button
    And The user clicks on Try here link in Queue Submodule
    When The user enters Python Code from "<SheetName>" and <RowNumber> in Queue Try Editor
    Then the user should get output from "<SheetName>" and <RowNumber> in Queue Try Editor

    Examples:
      | SheetName  | RowNumber |
      | StackQueue | 1         |
      | StackQueue | 2         |
      | StackQueue | 3         |