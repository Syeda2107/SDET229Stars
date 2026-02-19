Feature: Data Structures-Introduction Functionality of DsAlgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When the user clicks on Get Started button in the DsAlgo Portal
    And user clicks on Sign in link in the Home page
    When the user enters valid Username and Password in the Login form
    And user clicks on Login button
    When the user clicks on Get Started button below Data Structures - Introduction module

  Rule: Functional Validation of Data-structures Introduction Module

    Scenario: Verify that the user is navigated to the Data Structures-Introduction page
      Then the page title should be displayed as "Data Structures-Introduction"

    Scenario: Verify that the user is navigated to the time-complexity page
      Then the page title should be displayed as "Data Structures-Introduction"
      When the user clicks on time-complexity link in Data Structures - Introduction page
      Then the page title should be displayed as "Time Complexity"

    Scenario Outline: Verify that the user is navigated to the try editor page
      Then the page title should be displayed as "Data Structures-Introduction"
      When the user clicks on time-complexity link in Data Structures - Introduction page
      Then the page title should be displayed as "Time Complexity"
      When the user clicks on Try here button after scrolling down in time-complexity page
      Then the page title should be displayed as "Assessment"
      And the page url should be displayed from "<SheetName>" and <RowNumber>
      Examples:
        | SheetName       | RowNumber |
        | DS-Introduction | 0         |

    Scenario Outline: Verify that the user is able to see an output for valid python code
      Then the page title should be displayed as "Data Structures-Introduction"
      When the user clicks on time-complexity link in Data Structures - Introduction page
      Then the page title should be displayed as "Time Complexity"
      When the user clicks on Try here button after scrolling down in time-complexity page
      Then the page title should be displayed as "Assessment"
      And the page url should be displayed from "<SheetName>" and <RowNumber>
      When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
      And user clicks on Run button
      Then the user should get output from "<SheetName>" and <RowNumber> below Run button
      Examples:
        | SheetName       | RowNumber |
        | DS-Introduction | 0         |

    Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
      Then the page title should be displayed as "Data Structures-Introduction"
      When the user clicks on time-complexity link in Data Structures - Introduction page
      Then the page title should be displayed as "Time Complexity"
      When the user clicks on Try here button after scrolling down in time-complexity page
      Then the page title should be displayed as "Assessment"
      And the page url should be displayed from "<SheetName>" and <RowNumber2>
      When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
      And user clicks on Run button
      Then the user should get pop up message from "<SheetName>" and <RowNumber>
      And user clicks on OK button in the popup
      Examples:
        | SheetName       | RowNumber | RowNumber2 |
        | DS-Introduction | 1         | 0          |

    Scenario Outline: Verify that the popup is displayed with error message after entering letters or any characters in try editor
      Then the page title should be displayed as "Data Structures-Introduction"
      When the user clicks on time-complexity link in Data Structures - Introduction page
      Then the page title should be displayed as "Time Complexity"
      When the user clicks on Try here button after scrolling down in time-complexity page
      Then the page title should be displayed as "Assessment"
      And the page url should be displayed from "<SheetName>" and <RowNumber2>
      When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
      And user clicks on Run button
      Then the user should get pop up message from "<SheetName>" and <RowNumber>
      And user clicks on OK button in the popup
      Examples:
        | SheetName       | RowNumber | RowNumber2 |
        | DS-Introduction | 2         | 0          |

    Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
      Then the page title should be displayed as "Data Structures-Introduction"
      When the user clicks on time-complexity link in Data Structures - Introduction page
      Then the page title should be displayed as "Time Complexity"
      When the user clicks on Try here button after scrolling down in time-complexity page
      Then the page title should be displayed as "Assessment"
      And the page url should be displayed from "<SheetName>" and <RowNumber2>
      When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
      And user clicks on Run button
      Then the user should get pop up message from "<SheetName>" and <RowNumber>
      And user clicks on OK button in the popup
      Examples:
        | SheetName       | RowNumber | RowNumber2 |
        | DS-Introduction | 3         | 0          |

    Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
      Then the page title should be displayed as "Data Structures-Introduction"
      When the user clicks on time-complexity link in Data Structures - Introduction page
      Then the page title should be displayed as "Time Complexity"
      When the user clicks on Try here button after scrolling down in time-complexity page
      Then the page title should be displayed as "Assessment"
      And the page url should be displayed from "<SheetName>" and <RowNumber2>
      When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
      And user clicks on Run button
      Then the user should get pop up message from "<SheetName>" and <RowNumber>
      And user clicks on OK button in the popup
      Examples:
        | SheetName       | RowNumber | RowNumber2 |
        | DS-Introduction | 4         | 0          |

    Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
      Then the page title should be displayed as "Data Structures-Introduction"
      When the user clicks on time-complexity link in Data Structures - Introduction page
      Then the page title should be displayed as "Time Complexity"
      When the user clicks on Try here button after scrolling down in time-complexity page
      Then the page title should be displayed as "Assessment"
      And the page url should be displayed from "<SheetName>" and <RowNumber2>
      When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
      And user clicks on Run button
      Then the user should not able to see output below Run button
      Examples:
        | SheetName       | RowNumber | RowNumber2 |
        | DS-Introduction | 5         | 0          |

    Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
      Then the page title should be displayed as "Data Structures-Introduction"
      When the user clicks on time-complexity link in Data Structures - Introduction page
      Then the page title should be displayed as "Time Complexity"
      When the user clicks on Try here button after scrolling down in time-complexity page
      Then the page title should be displayed as "Assessment"
      And the page url should be displayed from "<SheetName>" and <RowNumber2>
      When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
      And user clicks on Run button
      Then the user should not able to see output below Run button
      Examples:
        | SheetName       | RowNumber | RowNumber2 |
        | DS-Introduction | 6         | 0          |

    Scenario Outline: Verify that the user is navigated to the Practice page url
      Then the page title should be displayed as "Data Structures-Introduction"
      When the user clicks on time-complexity link in Data Structures - Introduction page
      Then the page title should be displayed as "Time Complexity"
      When the user clicks on Practice Questions link in Time Complexity page
      Then the page title should be displayed as "Practice Questions"
      And the page url should be displayed from "<SheetName>" and <RowNumber>
      When the user clicks on Sign out link
      Then the user should be able to logged out and get success message as "<Success Message>"
      Examples:
        | SheetName       | RowNumber | Success Message         |
        | DS-Introduction | 1         | Logged out successfully |

  Rule: Non Functional Validation of Data-structures Introduction page

    @Performance
    Scenario: Verify that the Data-structures Introduction page load time
      Then the Data-structures Introduction page should load within 5 secs

    @Security
    Scenario: Verify that the Data-structures Introduction page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify Data-structures Introduction page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Time Complexity page

    Background:
      When the user clicks on time-complexity link in Data Structures - Introduction page

    @Performance
    Scenario: Verify that the time complexity page load time
      Then the time complexity page should load within 5 secs

    @Security
    Scenario: Verify that the time complexity page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify time complexity page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Try Editor page

    Background:
      When the user clicks on time-complexity link in Data Structures - Introduction page
      When the user clicks on Try here button after scrolling down in time-complexity page

    @Performance
    Scenario: Verify that the try editor page load time
      Then the try editor page should load within 5 secs

    @Security
    Scenario: Verify that the try editor page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify try editor page loads without errors
      Then the page should load without any errors

  Rule: Non-Functional Validation of Practice page

    Background:
      When the user clicks on time-complexity link in Data Structures - Introduction page
      When the user clicks on Practice Questions link in Time Complexity page

    @Performance
    Scenario: Verify that the practice page load time
      Then the practice page should load within 5 secs

    @Security
    Scenario: Verify that the practice page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify practice page loads without errors
      Then the page should load without any errors





