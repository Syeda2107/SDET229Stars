Feature:Graph Functionality of Dsalgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When the user clicks on Get Started button in the DsAlgo Portal
    And user clicks on Sign in link in the Home page
    Then the page title should be displayed as "Login"
    When the user enters valid Username and Password in the Login form
      | Username         | Password  |
      |sdet229stars@gmail.com | test@1234 |
    And user clicks on Login button
    Then the page title should be displayed as "NumpyNinja"

# Graph page

  Scenario: Verify that user is able to navigate to "Graph" data structure page
    Given The user is in the Home page after Sign in
    When The user clicks the "Getting Started" button in Graph Panel
    Then The user be directed to "Graph" Data Structure Page

  Scenario: Verify that user is able to navigate to "Graph" page
    Given The user is in the "Graph" page after Sign in
    When The user clicks "Graph" button
    Then The user should be redirected to "Graph" page

  Scenario: Verify that user is able to navigate to "try Editor" page for "Graph" page
    Given The user is on the "Graph" page
    When The user clicks "Try Here" button in Graph page
    Then The user should be redirected to a page having an try Editor with a Run button to test

  Scenario: Verify that user receives error when click on Run button without entering code for "Graph" page
    Given The user is in the tryEditor page
    When The user clicks the Run Button without entering the code in the Editor
    Then The user should able to see an error message in alert window

  Scenario: Verify that user receives error for invalid python code for "Graph" page
    Given The user is in the tryEditor page
    When The user write the invalid code in Editor and click the Run Button
    Then The user should able to see an error message in alert window

  Scenario: Verify that user is able to see output for valid python code for "Graph" page
    Given The user is in the tryEditor page
    When The user write the valid code in Editor and click the Run Button
    Then The user should able to see output in the console

#  Graph Representations

  Scenario: Verify that user is able to navigate to " Graph Representations" data structure page
    Given The user is in the Home page after Sign in
    When The user clicks the "Getting Started" button in Graph Panel
    Then The user be directed to "Graph" Data Structure Page

  Scenario: Verify that user is able to navigate to "Graph" page
    Given The user is in the "Graph" page after Sign in
    When The user clicks " Graph Representations" button
    Then The user should be redirected to " Graph Representations" page

  Scenario: Verify that user is able to navigate to "try Editor" page for " Graph Representations" page
    Given The user is on the " Graph Representations" page
    When The user clicks "Try Here" button in  Graph Representations page
    Then The user should be redirected to a page having an try Editor with a Run button to test

  Scenario: Verify that user receives error when click on Run button without entering code for " Graph Representations" page
    Given The user is in the tryEditor page
    When The user clicks the Run Button without entering the code in the Editor
    Then The user should able to see an error message in alert window

  Scenario: Verify that user receives error for invalid python code for " Graph Representations" page
    Given The user is in the tryEditor page
    When The user write the invalid code in Editor and click the Run Button
    Then The user should able to see an error message in alert window

  Scenario: Verify that user is able to see output for valid python code for " Graph Representations" page
    Given The user is in the tryEditor page
    When The user write the valid code in Editor and click the Run Button
    Then The user should able to see output in the console