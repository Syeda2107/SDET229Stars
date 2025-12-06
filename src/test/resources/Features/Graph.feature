Feature:Graph Functionality of Dsalgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When  the user clicks on Get Started button in the DsAlgo Portal
    And   user clicks on Sign in link in the Home page
    Then  the page title should be displayed as "Login"
    When  the user enters valid Username and Password in the Login form
      | Username         | Password  |
      |sdet229stars@gmail.com | test@1234 |
    And user clicks on Login button
    Then the page title should be displayed as "NumpyNinja"

# Graph page

  Scenario: Verify that user is navigated to Graph page
    Given the user is in the Home page after Sign in
    When  the user clicks the Get Started button after scrolling down in Graph Panel
    Then  the user should be directed to the "Graph page" Page

  Scenario: Verify that user is able to navigate to "Graph" page
    Given the user is in the "Graph" page after Sign in
    When  the user clicks "Graph" link
    Then  the user should be redirected to "Graph" page

  Scenario: Verify that user is able to navigate to "try Editor" page for "Graph" page
    Given the user is the the "Graph" page after logged in
    When  the user clicks "Try here" button in Graph page
    Then  the user should be redirected to a page having an tryeditor with a Run button

  Scenario Outline: Outline: Verify that user is able to see output for valid python code for "Graph" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<output>" in the console
    Examples:
      |Python Code    | Output |
      |print("Hello") | Hello  |

  Scenario Outline: Verify that user is able to see output for invalid python code for "Graph" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<Popup Message>"
    Examples:
      | Python Code       | Popup Message                                   |
      | " print 'Hello'"  | SyntaxError: bad input on line 1                |
      | print  Hello      | NameError: name 'Hello' is not defined on line 1 |


  Scenario: Verify that user receives error when click on Run button without entering code for Graph page
    Given the user is in the tryeditor page
    When  the user clicks the Run button without entering code in the editor
    Then  the user should not be able to see output

  Scenario: Verify that user is able to navigate to Practice Questions Page for Graph page
    Given the user is in the "Graph" after logged in
    When  the user clicks Practice Questions button after scrolling down in the Graph page
    Then  the page title should be displayed as "Practice Questions"

#  Graph Representations

  Scenario: Verify that user is able to navigate to "Graph Representations" page
    Given the user is in the "Graph Representations" page after Sign in
    When  the user clicks "Graph Representations" link
    Then  the user should be redirected to "Graph Representations" page

  Scenario: Verify that user is able to navigate to "try Editor" page for "Graph Representations" page
    Given the user is the the "Graph Representations" page after logged in
    When  the user clicks "Try here" button after scrolling down in Graph Representations page
    Then  the user should be redirected to a page having an tryeditor with a Run button

  Scenario Outline: Outline: Verify that user is able to see output for valid python code for "Graph Representations" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<output>" in the console
    Examples:
      |Python Code    | Output |
      |print("Hello") | Hello  |

  Scenario Outline: Verify that user is able to see output for invalid python code for "Graph Representations" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<Popup Message>"
    Examples:
      | Python Code       | Popup Message                                   |
      | " print 'Hello'"  | SyntaxError: bad input on line 1                |
      | print  Hello      | NameError: name 'Hello' is not defined on line 1 |


  Scenario: Verify that user receives error when click on Run button without entering code for Graph Representations page
    Given the user is in the tryeditor page
    When  the user clicks the Run button without entering code in the editor
    Then  the user should not be able to see output

  Scenario: Verify that user is able to navigate to Practice Questions Page for Graph Representations page
    Given the user is in the "Graph Representations" after logged in
    When  the user clicks Practice Questions button after scrolling down in the Graph Representations page
    Then  the page title should be displayed as "Practice Questions"