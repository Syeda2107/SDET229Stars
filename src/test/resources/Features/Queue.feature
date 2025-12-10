Feature: Queue - Functionality of DsAlgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When the user clicks on Get Started button in the DsAlgo Portal
    And user clicks on Sign in link in the Home page
    Then the page title should be displayed as "Login"
    When the user enters valid Username and Password in the Login form
      | Username                | Password   |
      | sdet229stars@gmail.com | test@1234  |
    And user clicks on Login button
    Then the page title should be displayed as "NumpyNinja"

  Scenario: Verify that user is able to navigate to "Queue" data structure page
    Given The user is in the Home page after Sign in
    When The user clicks the "Getting Started" button in Queue Panel
    Then The user should be directed to "Queue" Data Structure Page

  Scenario: Verify that user is able to navigate to "Operations in Stack" page
    Given The user is on the "Stack" page after Sign in
    When The user clicks "Operations in Stack" button
    Then The user should be redirected to "Operations in Stack" page

  Scenario: Verify that user is able to navigate to "Implementation of Queue in Python" page
    Given The user is on the "Queue" page after sign in
    When The user clicks "Implementation of Queue in Python" button
    Then The user should be redirected to "Implementation of Queue in Python" page

  Scenario: Verify that user is able to navigate to "Implementation using collections queue" page
    Given The user is on the "Queue" page
    When The user clicks "Implementation using collections queue" button
    Then The user should be redirected to "Implementation using collections queue" page

  Scenario: Verify that user is able to navigate to "Implementation using Arrays" page
    Given The user is on the "Queue" page
    When The user clicks "Implementation using Arrays" button
    Then The user should be redirected to "Implementation using Arrays" page

  Scenario: Verify that user is able to navigate to "Queue Operations" page
    Given The user is on the "Queue" page
    When The user clicks "Queue Operations" button
    Then The user should be redirected to "Queue Operations" page

  Scenario: Verify that user navigates to "Try editor" for "Implementation of Queue in Python" page
    Given The user is in the "Implementation of Queue in Python" page
    When The user clicks "Try here" button
    Then The user should be redirected to a page having a try editor with a Run button

  Scenario: Verify that user navigates to "Try editor" for "Implementation using collections queue" page
    Given The user is in the "Implementation using collections queue" page
    When The user clicks "Try here" button
    Then The user should be redirected to a page having a try editor with a Run button

  Scenario: Verify that user navigates to "Try editor" for "Implementation using Arrays" page
    Given The user is in the "Implementation using Arrays" page
    When The user clicks "Try here" button
    Then The user should be redirected to a page having a try editor with a Run button

  Scenario: Verify that user navigates to "Try editor" for "Queue Operations" page
    Given The user is in the "Queue Operations" page
    When The user clicks "Try here" button
    Then The user should be redirected to a page having a try editor with a Run button

  Scenario: Verify the user gets error when clicking Run without entering code
    Given The user is in the tryEditor page
    When The user clicks Run button without entering code
    Then The user should see an error message in alert window

  Scenario: Verify the user gets error on running invalid code
    Given The user is in the tryEditor page
    When The user writes invalid code in Editor and clicks the Run Button
    Then The user should see an error message in alert window

  Scenario: Verify that user is able to see output for valid python code
    Given The user is in the tryEditor page
    When The user writes valid code in Editor and clicks the Run Button
    Then The user should be able to see output in the console

  Scenario: Verify that user is able to navigate to "Practice Questions" page
    Given The user is in the "Implementation of Queue in Python" page
    When The user clicks "Practice Questions" button
    Then The user should be redirected to "Practice" page

  Scenario: Verify that user is able to navigate to "Queue Operations" page
    Given The user is in the "Implementation using Arrays" page
    When The user clicks on "Queue Operations" link
    Then The user should be redirected to "Queue Operations" page

  Scenario: Verify that user is redirected correctly for Tree from dropdown
    Given The user is on the Queue page
    When The user selects "Tree" from data structures dropdown
    Then The user should be redirected to "Tree" page

  Scenario: Verify that user is redirected correctly for Graph from dropdown
    Given The user is on the Queue page
    When The user selects "Graph" from data structures dropdown
    Then The user should be redirected to "Graph" page
