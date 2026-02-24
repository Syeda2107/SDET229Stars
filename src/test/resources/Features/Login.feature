Feature: Login Functionality of DsAlgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When the user clicks on Get Started button in the DsAlgo Portal
    And user clicks on Sign in link in the Home page
    Then the page title should be displayed as "Login"

  Scenario Outline: Verify that the user can able to logged in successfully after entering valid username and password
    When the user enters valid Username and Password from "<SheetName>" and <RowNumber> in the Login form
    And user clicks on Login button
    Then the page title should be displayed as "NumpyNinja"
    And user should successfully logged in and get success message from "<SheetName>" and <RowNumber>
    Then the user should see the username in the top right corner
    When the user clicks on Sign out link in home page after successful logged in
    Then the user should be able to logged out and get success message from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName | RowNumber |
      | Login     | 0         |

  Scenario Outline: Verify that the error message is displayed when the user enters an invalid username and password
    When the user enters invalid Username and Password from "<SheetName>" and <RowNumber> in the Login form
    And user clicks on Login button
    Then the user should get invalid error message from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName | RowNumber |
      | Login     | 1         |

  Scenario Outline: Verify that the tooltip message is displayed when user clicks on Login button by leaving Username and Password fields empty
    When the user enters Username and Password from "<SheetName>" and <RowNumber> in the Login form
    And user clicks on Login button
    Then the user should get tooltip message below Username textbox and data fetch from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName | RowNumber |
      | Login     | 2         |

  Scenario Outline: Verify that the tooltip message is displayed when user clicks on Login button after entering Username field and leaving Password field empty
    When the user enters Username and Password from "<SheetName>" and <RowNumber> in the Login form
    And user clicks on Login button
    Then the user should get tooltip message below Password textbox and data fetch from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName | RowNumber |
      | Login     | 3         |

  Scenario Outline: Verify that the tooltip message is displayed when user clicks on Login button after entering valid Username field and invalid Password field
    When the user enters Username and Password from "<SheetName>" and <RowNumber> in the Login form
    And user clicks on Login button
    Then the user should get invalid error message from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName | RowNumber |
      | Login     | 4         |

  Scenario Outline: Verify that the tooltip message is displayed when user clicks on Login button after entering invalid Username field and valid Password field
    When the user enters Username and Password from "<SheetName>" and <RowNumber> in the Login form
    And user clicks on Login button
    Then the user should get invalid error message from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName | RowNumber |
      | Login     | 5         |

  Scenario: Verify that the user navigates to the Register page from Login page
    When the user clicks on Register link from login page
    Then the page title should be displayed as "Registration"

    @Performance
    Scenario: Verify that the login page load time
      Then the login page should load within 10 secs

    @Security
    Scenario: Verify that the login page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify login page loads without errors
      Then the page should load without any errors
