Feature: Data Structures-Introduction Functionality of DsAlgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When the user clicks on Get Started button in the DsAlgo Portal
    And user clicks on Sign in link in the Home page
    Then the page title should be displayed as "Login"
    When the user enters valid Username and Password in the Login form
      | Username | sgs123@gmail.com |
      | Password | Stars@123        |
    And user clicks on Login button
    Then the page title should be displayed as "NumpyNinja"

  Scenario: Verify that the user is navigated to the Data Structures-Introduction page
    When the user clicks on Get Started button below Data Structures - Introduction module
    Then the page title should be displayed as "Data Structures-Introduction"

  Scenario: Verify that the user is navigated to the time-complexity page
    When the user clicks on Get Started button below Data Structures - Introduction module
    Then the page title should be displayed as "Data Structures-Introduction"
    When the user clicks on time-complexity link in Data Structures - Introduction page
    Then the page title should be displayed as "Time Complexity"

  Scenario Outline: Verify that the user is navigated to the try editor page
    When the user clicks on Get Started button below Data Structures - Introduction module
    Then the page title should be displayed as "Data Structures-Introduction"
    When the user clicks on time-complexity link in Data Structures - Introduction page
    Then the page title should be displayed as "Time Complexity"
    When the user clicks on Try here button after scrolling down in time-complexity page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                |
      | https://dsportalapp.herokuapp.com/tryEditor |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks on Get Started button below Data Structures - Introduction module
    Then the page title should be displayed as "Data Structures-Introduction"
    When the user clicks on time-complexity link in Data Structures - Introduction page
    Then the page title should be displayed as "Time Complexity"
    When the user clicks on Try here button after scrolling down in time-complexity page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    When the user clicks on Get Started button below Data Structures - Introduction module
    Then the page title should be displayed as "Data Structures-Introduction"
    When the user clicks on time-complexity link in Data Structures - Introduction page
    Then the page title should be displayed as "Time Complexity"
    When the user clicks on Try here button after scrolling down in time-complexity page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 1         |

  Scenario Outline: Verify that the popup is displayed with error message after entering letters or any characters in try editor
    When the user clicks on Get Started button below Data Structures - Introduction module
    Then the page title should be displayed as "Data Structures-Introduction"
    When the user clicks on time-complexity link in Data Structures - Introduction page
    Then the page title should be displayed as "Time Complexity"
    When the user clicks on Try here button after scrolling down in time-complexity page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 2         |

  Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
    When the user clicks on Get Started button below Data Structures - Introduction module
    Then the page title should be displayed as "Data Structures-Introduction"
    When the user clicks on time-complexity link in Data Structures - Introduction page
    Then the page title should be displayed as "Time Complexity"
    When the user clicks on Try here button after scrolling down in time-complexity page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 3         |

  Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
    When the user clicks on Get Started button below Data Structures - Introduction module
    Then the page title should be displayed as "Data Structures-Introduction"
    When the user clicks on time-complexity link in Data Structures - Introduction page
    Then the page title should be displayed as "Time Complexity"
    When the user clicks on Try here button after scrolling down in time-complexity page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 4         |

  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    When the user clicks on Get Started button below Data Structures - Introduction module
    Then the page title should be displayed as "Data Structures-Introduction"
    When the user clicks on time-complexity link in Data Structures - Introduction page
    Then the page title should be displayed as "Time Complexity"
    When the user clicks on Try here button after scrolling down in time-complexity page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 5         |

  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    When the user clicks on Get Started button below Data Structures - Introduction module
    Then the page title should be displayed as "Data Structures-Introduction"
    When the user clicks on time-complexity link in Data Structures - Introduction page
    Then the page title should be displayed as "Time Complexity"
    When the user clicks on Try here button after scrolling down in time-complexity page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 6         |

  Scenario Outline: Verify that the user is navigated to the Practice page url
    When the user clicks on Get Started button below Data Structures - Introduction module
    Then the page title should be displayed as "Data Structures-Introduction"
    When the user clicks on time-complexity link in Data Structures - Introduction page
    Then the page title should be displayed as "Time Complexity"
    When the user clicks on Practice Questions link in Time Complexity page
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed as "<Expected Url>"
    When the user clicks on Sign out link
    Then the user should be able to logged out and get success message as "<Success Message>"
    Examples:
      | Expected Url                                                            | Success Message         |
      | https://dsportalapp.herokuapp.com/data-structures-introduction/practice | Logged out successfully |





