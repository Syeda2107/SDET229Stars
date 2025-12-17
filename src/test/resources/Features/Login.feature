Feature: Login Functionality of DsAlgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When the user clicks on Get Started button in the DsAlgo Portal
    And user clicks on Sign in link in the Home page
    Then the page title should be displayed as "Login"

  Scenario Outline: Verify that the user can able to logged in successfully after entering valid username and password
    When the user enters valid "<Username>" and "<Password>" in the Login form
    And user clicks on Login button
    Then the page title should be displayed as "NumpyNinja"
    And user should successfully logged in and get success message as "<Success Message>"
    Then the user should see the username in the top right corner
    When the user clicks on Sign out link in home page after successful logged in
    Then the user should be able to logged out and get success message as "<Logout Message>"
    Examples:
      | Username         | Password  | Success Message   | Logout Message          |
      | sgs123@gmail.com | Stars@123 | You are logged in | Logged out successfully |

  Scenario Outline: Verify that the error message is displayed when the user enters an invalid username and password
    When the user enters invalid "<Username>" and "<Password>" in the Login form
    And user clicks on Login button
    Then the user should get invalid error message as "<Error Message>"
    Examples:
      | Username      | Password  | Error Message                 |
      | yth@gmail.com | kkk[[@123 | Invalid Username and Password |

  Scenario Outline: Verify that the tooltip message is displayed when user clicks on Login button by leaving Username and Password fields empty
    When the user enters "<Username>" and "<Password>" in the Login form
    And user clicks on Login button
    Then the user should get tooltip message as "<Tooltip Message>" below Username textbox
    Examples:
      | Username | Password | Tooltip Message             |
      |          |          | Please fill out this field. |

  Scenario Outline: Verify that the tooltip message is displayed when user clicks on Login button after entering Username field and leaving Password field empty
    When the user enters "<Username>" and "<Password>" in the Login form
    And user clicks on Login button
    Then the user should get tooltip message as "<Tooltip Message>" below the Password textbox
    Examples:
      | Username         | Password | Tooltip Message             |
      | sgs123@gmail.com |          | Please fill out this field. |

  Scenario Outline: Verify that the tooltip message is displayed when user clicks on Login button after entering valid Username field and invalid Password field
    When the user enters "<Username>" and "<Password>" in the Login form
    And user clicks on Login button
    Then the user should get invalid error message as "<Error Message>"
    Examples:
      | Username         | Password      | Error Message                 |
      | sgs123@gmail.com | KK%%EEE!!!### | Invalid Username and Password |

  Scenario Outline: Verify that the tooltip message is displayed when user clicks on Login button after entering invalid Username field and valid Password field
    When the user enters "<Username>" and "<Password>" in the Login form
    And user clicks on Login button
    Then the user should get invalid error message as "<Error Message>"
    Examples:
      | Username        | Password  | Error Message                 |
      | UU***))))$$$$$$ | Stars@123 | Invalid Username and Password |

  Scenario: Verify that the user navigates to the Register page from Login page
    When the user clicks on Register link from login page
    Then the page title should be displayed as "Registration"

