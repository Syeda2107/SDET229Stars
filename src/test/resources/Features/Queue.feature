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
    When The user clicks the "Getting Started" button in Queue Panel
    Then The user should be directed to "Queue" Data Structure Page

  Scenario: Verify that user is able to navigate to "Operations in Stack" page
    When The user clicks "Operations in Stack" button
    Then The user should be redirected to "Operations in Stack" page

  Scenario: Verify that user is able to navigate to "Implementation of Queue in Python" page
    When The user clicks "Implementation of Queue in Python" button
    Then The user should be redirected to "Implementation of Queue in Python" page

  Scenario: Verify that user is able to navigate to "Implementation using collections queue" page
    When The user clicks "Implementation using collections queue" button
    Then The user should be redirected to "Implementation using collections queue" page

  Scenario: Verify that user is able to navigate to "Implementation using Arrays" page
    When The user clicks "Implementation using Arrays" button
    Then The user should be redirected to "Implementation using Arrays" page

  Scenario: Verify that user is able to navigate to "Queue Operations" page
    When The user clicks "Queue Operations" button
    Then The user should be redirected to "Queue Operations" page

  Scenario: Verify that user navigates to "Try editor" for "Implementation of Queue in Python" page
    When The user clicks "Try here" button
    Then The user should be redirected to a page having a try editor with a Run button

  Scenario: Verify that user navigates to "Try editor" for "Implementation using collections queue" page
    When The user clicks "Try here" button
    Then The user should be redirected to a page having a try editor with a Run button

  Scenario: Verify that user navigates to "Try editor" for "Implementation using Arrays" page
    When The user clicks "Try here" button
    Then The user should be redirected to a page having a try editor with a Run button

  Scenario: Verify that user navigates to "Try editor" for "Queue Operations" page
    When The user clicks "Try here" button
    Then The user should be redirected to a page having a try editor with a Run button

  Scenario: Verify the user gets error when clicking Run without entering code
    When The user clicks Run button without entering code
    Then The user should see an error message in alert window

  Scenario: Verify the user gets error on running invalid code
    When The user writes invalid code in Editor and clicks the Run Button
    Then The user should see an error message in alert window

  Scenario: Verify that user is able to see output for valid python code
    When The user writes valid code in Editor and clicks the Run Button
    Then The user should be able to see output in the console

  Scenario: Verify that user is able to navigate to "Practice Questions" page
    When The user clicks "Practice Questions" button
    Then The user should be redirected to "Practice" page

  Scenario: Verify that user is able to navigate to "Queue Operations" page
    When The user clicks on "Queue Operations" link
    Then The user should be redirected to "Queue Operations" page

  Scenario: Verify that user is redirected correctly for Tree from dropdown
    When The user selects "Tree" from data structures dropdown
    Then The user should be redirected to "Tree" page

  Scenario: Verify that user is redirected correctly for Graph from dropdown
    When The user selects "Graph" from data structures dropdown
    Then The user should be redirected to "Graph" page
#
#  Scenario Outline: Verify that the user is able to see an output for valid python code
#    When the user clicks on Get Started button below Queue module
#    Then the page title should be displayed as "Queue"
#    When the user clicks on Implementation of Queue in Python in Queue page
#    Then the page title should be displayed as "Implementation of Queue in Python"
#    When the user clicks on Try here button after scrolling down in Implementation of Queue in Python page
#    Then the page title should be displayed as "Assessment"
#    And  the page url should be displayed as "<Expected Url>"
#    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
#    And user clicks on Run button
#    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
#    Examples:
#      | Expected Url                                | SheetName       | RowNumber |
#      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |

  Scenario Outline: Verify output or error message for python code in Queue Try Editor
    When the user clicks on Get Started button in the DsAlgo Portal
    Then The user should be directed to "Queue" Data Structure Page
    When The user clicks "Implementation of Queue in Python" button
    Then the page title should be displayed as "Implementation of Queue in Python"
    When The user clicks "Try here" button
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber>
    And the user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName                           | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | StackQueue_Data_Driven_Testing.xlsx | 1         |

  Scenario Outline: Verify output or error message for python code in Queue Try Editor
    When the user clicks on Get Started button in the DsAlgo Portal
    Then The user should be directed to "Queue" Data Structure Page
    When The user clicks "Implementation of Queue in Python" button
    Then the page title should be displayed as "Implementation of Queue in Python"
    When The user clicks "Try here" button
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber>
    And the user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName                           | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | StackQueue_Data_Driven_Testing.xlsx | 2         |

  Scenario Outline: Verify output or error message for python code in Queue Try Editor
    When the user clicks on Get Started button in the DsAlgo Portal
    Then The user should be directed to "Queue" Data Structure Page
    When The user clicks "Implementation of Queue in Python" button
    Then the page title should be displayed as "Implementation of Queue in Python"
    When The user clicks "Try here" button
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber>
    And the user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName                           | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | StackQueue_Data_Driven_Testing.xlsx | 3         |



