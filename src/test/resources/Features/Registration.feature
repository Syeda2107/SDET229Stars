Feature: Registration Functionality of DsAlgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When the user clicks on Get Started button in the DsAlgo Portal
    And  user clicks on Register link in the Home page
    Then the page title should be displayed as "Registration"

  Rule: Functional Validation of Registration page

  Scenario Outline: Verify that the tooltip message is displayed when user clicks on Register button by leaving all the fields empty
    When the user enters "<Username>","<Password>" and "<Password confirmation>" in the register form
    And user clicks on Register button
    Then the user should get tooltip message as "<Tooltip Message>" below Username textbox
    Examples:
      | Username | Password | Password confirmation | Tooltip Message             |
      |          |          |                       | Please fill out this field. |

  Scenario Outline: Verify that the tooltip message is displayed when user clicks on Register button after entering Username field and leaving other fields empty
    When the user enters only "<Username>" field in the register form
    And user clicks on Register button
    Then the user should get tooltip message as "<Tooltip Message>" below Password textbox
    Examples:
      | Username  | Tooltip Message             |
      | Sgs@gmail | Please fill out this field. |

  Scenario Outline: Verify that the tooltip message is displayed when user clicks on Register button after entering Username field and Password field by leaving Password confirmation field empty
    When the user enters only "<Username>" and "<Password>" fields in the register form
    And user clicks on Register button
    Then the user should get tooltip message as "<Tooltip Message>" below Password confirmation textbox
    Examples:
      | Username  | Password | Tooltip Message             |
      | Sgs@gmail | Stars123 | Please fill out this field. |

  Scenario Outline: Verify that the error message is displayed when user clicks on Register button after entering mismatched passwords in the password and password confirmation fields
    When the user enters "<Username>","<Password>" and "<Password confirmation>" in the register form
    And user clicks on Register button
    Then the user should get invalid error message as "<Error Message>"
    Examples:
      | Username  | Password | Password confirmation | Error Message                                           |
      | Sgs@gmail | Stars123 | strr234               | password_mismatch:The two password fields didn’t match. |

  Scenario Outline: Verify that the error message is displayed when user clicks on Register button after entering invalid values in Username field with matched password and password confirmation values
    When the user enters "<Username>","<Password>" and "<Password confirmation>" in the register form
    And user clicks on Register button
    Then the user should get invalid error message as "<Error Message>"
    Examples:
      | Username        | Password                | Password confirmation   | Error Message                                           |
      | }}}}}}}}}}}}}}} | Stars@123               | Stars@123               | password_mismatch:The two password fields didn’t match. |
      | **************  | Stars@123               | Stars@123               | password_mismatch:The two password fields didn’t match. |
      | %%%!!!!4555     | Stars@123               | Stars@123               | password_mismatch:The two password fields didn’t match. |
      | ?????????]]]]   | **&^{{{{{Stars@123}}}}} | **&^{{{{{Stars@123}}}}} | password_mismatch:The two password fields didn’t match. |

  Scenario Outline: Verify that the user can able to create a new account successfully after entering valid Username,Password and Password Confirmation
    When the user enters "<Username>","<Password>" and "<Password confirmation>" in the register form
    And user clicks on Register button
    Then the user should be redirected to home page with success message "<SuccessMessage>"
    Examples:
      | Username | Password  | Password confirmation | SuccessMessage                                       |
      | auto     | Stars@456 | Stars@456             | New Account Created. You are logged in as <Username> |

  Scenario: Verify that the user navigates to Login page from Register Page
    When the user clicks on Login link below Register button
    Then the page title should be displayed as "Login"

  Rule: Non Functional Validation of Registration page

    @Performance
    Scenario: Verify that the registration page load time
      Then the registration page should load within 10 secs

    @Security
    Scenario: Verify that the registration page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify registration page loads without errors
      Then the page should load without any errors

