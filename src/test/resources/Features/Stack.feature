Feature: Stack - Functionality of DsAlgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When the user clicks on Get Started button in the DsAlgo Portal
    And user clicks on Sign in link in the Home page
    When the user enters valid Username and Password in the Login form
    And user clicks on Login button
    Then The page title should be displayed as "NumpyNinja"
    When The user clicks Getting Started button in Stack

  Scenario: Verify that user is able to navigate to "Operations in Stack" on Stack Submodule
    When The user clicks Operations in Stack button
    Then The user should be redirected to "Operations in Stack" on Stack Submodule

  Scenario: Verify that user is able to navigate to "Implementation" on Stack Submodule
    When The user clicks Implementation button
    Then The user should be redirected to "Implementation" page on Stack Submodule

  Scenario: Verify that user is able to navigate to "Applications" page on Stack Submodule
    When The user clicks Applications button
    Then The user should be redirected to "Applications" page on Stack Submodule

  Scenario: Verify that user navigates to "Try editor" for "Operations in Stack" page on Stack Submodule
    When The user clicks Operations in Stack button
    And The user clicks on Try here link in Stack submodule
    Then The user should be redirected to a page having a try editor with a Run button on Stack Submodule

  Scenario: Verify that user navigates to "Try editor" for "Implementation" page on Stack Submodule
    When The user clicks Implementation button
    And The user clicks on Try here link in Stack submodule
    Then The user should be redirected to a page having a try editor with a Run button on Stack Submodule

  Scenario Outline: Navigate to Stack submodule, access Try Editor, enter code and run
    When The user clicks Applications button
    And The user clicks on Try here link in Stack submodule
    And The user enters code from "<SheetName>" and <RowNumber> in Try Editor on Stack submodule and clicks Run
    Then The Try Editor on Stack submodule should display result from "<SheetName>" and <RowNumber>

    Examples:
      | SheetName  | RowNumber |
      | StackQueue | 1         |
      | StackQueue | 2         |
