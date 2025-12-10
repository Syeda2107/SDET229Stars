Feature: Stack - Functionality of DsAlgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When the user clicks on Get Started button in the DsAlgo Portal
    And user clicks on Sign in link in the Home page
    Then the page title should be displayed as "Login"
    When the user enters valid Username and Password in the Login form
      | Username                  | Password |
      | sdet229stars@gmail.com    | test@1234 |
    And user clicks on Login button
    Then The page title should be displayed as "NumpyNinja"

  Scenario: Verify that user is able to navigate to "Stack" data structure page
    Given The user is in the Home page after Sign in
    When The user clicks the "Getting Started" button in Stack Panel
    Then The user should be directed to "Stack" Data Structure Page

  Scenario: Verify that user is able to navigate to "Operations in Stack" page
    Given The user is on "Stack" page after Sign in
    When The user clicks "Operations in Stack" button
    Then The user should be redirected to "Operations in Stack" page

  Scenario: Verify that user is able to navigate to "Implementation" page
    Given The user is on the "Stack" page
    When The user clicks "Implementation" button
    Then The user should be redirected to "Implementation" page

  Scenario: Verify that user is able to navigate to "Applications" page
    Given The user is on the "Stack" page
    When The user clicks "Applications" button
    Then The user should be redirected to "Applications" page

  Scenario: Verify that user navigates to "Try editor" for "Operations in Stack" page
    Given The user is in the "Operations in Stack" page
    When The user clicks "Try here" button
    Then The user should be redirected to a page having a try editor with a Run button

  Scenario: Verify that user navigates to "Try editor" for "Implementation" page
    Given The user is in the "Implementation" page
    When The user clicks "Try here" button
    Then The user should be redirected to a page having a try editor with a Run button

  Scenario: Verify that user navigates to "Try editor" for "Applications" page
    Given The user is
