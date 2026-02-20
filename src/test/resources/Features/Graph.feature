Feature:Graph Functionality of Dsalgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When the user clicks on Get Started button in the DsAlgo Portal
    And user clicks on Sign in link in the Home page
    When the user enters valid Username and Password in the Login form
    And user clicks on Login button
    When the user clicks the Get Started button after scrolling down in Graph Panel

# Graph page
  Rule: Functional Validation of Graph module

    Scenario: Verify that the user is navigated to the Graph page
      Then the page title should be displayed as "Graph"

    Scenario: Verify that the user is navigated to the Graph link in Graph page
      Then the page title should be displayed as "Graph"
      When the user clicks Graph link in Graph page
      Then the page title should be displayed as "Graph"

  Scenario Outline: Verify that the user is navigated to the try editor page in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks Graph link in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks on Try here button in Graph page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph link in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks on Try here button in Graph page
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    Then the page title should be displayed as "Graph"
    When the user clicks Graph link in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks on Try here button in Graph page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 1         | 0          |

    Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    Then the page title should be displayed as "Graph"
    When the user clicks Graph link in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks on Try here button in Graph page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber2> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
      Examples:
        | SheetName       | RowNumber | RowNumber2 |
        | DS-Introduction | 2         | 0          |

  Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
    Then the page title should be displayed as "Graph"
    When the user clicks Graph link in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks on Try here button in Graph page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber2> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 3        | 0          |

  Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
    Then the page title should be displayed as "Graph"
    When the user clicks Graph link in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks on Try here button in Graph page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber2> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 4         | 0          |

  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    Then the page title should be displayed as "Graph"
    When the user clicks Graph link in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks on Try here button in Graph page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber2> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 5        | 0          |

  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    Then the page title should be displayed as "Graph"
    When the user clicks Graph link in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks on Try here button in Graph page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 6         | 0          |

  Scenario Outline: Verify that user is able to navigate to Practice Questions Page for Graph Representations page
    Then the page title should be displayed as "Graph"
    When  the user clicks Graph Representations link in Graph page
    Then  the page title should be displayed as "Graph Representations"
    When the user clicks on Practice Questions link in Graph Representations page
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction |  3        |

#  Graph Representations

  Scenario: Verify that user is able to navigate to Graph Representations link in Graph page
    Then the page title should be displayed as "Graph"
    When  the user clicks Graph Representations link in Graph page
    Then  the page title should be displayed as "Graph Representations"

  Scenario Outline: Verify that the user is navigated to the try editor page in Graph Representations page
    Then the page title should be displayed as "Graph"
    When the user clicks Graph Representations link in Graph page
    Then the page title should be displayed as "Graph Representations"
    When the user clicks on Try here button in Graph Representations page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |


  Scenario Outline: Verify that the user is able to see an output for valid python code
    Then the page title should be displayed as "Graph"
    When the user clicks Graph Representations link in Graph page
    Then the page title should be displayed as "Graph Representations"
    When the user clicks on Try here button in Graph Representations page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    Then the page title should be displayed as "Graph"
    When the user clicks Graph Representations link in Graph page
    Then the page title should be displayed as "Graph Representations"
    When the user clicks on Try here button in Graph Representations page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 1         | 0          |

  Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    Then the page title should be displayed as "Graph"
    When the user clicks Graph Representations link in Graph page
    Then the page title should be displayed as "Graph Representations"
    When the user clicks on Try here button in Graph Representations page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber2> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 2         | 0          |

  Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
    Then the page title should be displayed as "Graph"
    When the user clicks Graph Representations link in Graph page
    Then the page title should be displayed as "Graph Representations"
    When the user clicks on Try here button in Graph Representations page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber2> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 3        | 0          |

  Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
    Then the page title should be displayed as "Graph"
    When the user clicks Graph Representations link in Graph page
    Then the page title should be displayed as "Graph Representations"
    When the user clicks on Try here button in Graph Representations page
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
    Then the page title should be displayed as "Graph"
    When the user clicks Graph Representations link in Graph page
    Then the page title should be displayed as "Graph Representations"
    When the user clicks on Try here button in Graph Representations page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber2> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 5        | 0           |

  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    Then the page title should be displayed as "Graph"
    When the user clicks Graph Representations link in Graph page
    Then the page title should be displayed as "Graph Representations"
    When the user clicks on Try here button in Graph Representations page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 6         | 0          |

  Scenario Outline: Verify that user is able to navigate to Practice Questions Page for Graph Representations page
    Then the page title should be displayed as "Graph"
    When  the user clicks Graph Representations link in Graph page
    Then  the page title should be displayed as "Graph Representations"
    When the user clicks on Practice Questions link in Graph Representations page
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    When the user clicks on Sign out link
    Then the user should be able to logged out and get success message as "<Success Message>"
    Examples:
      | SheetName       | RowNumber | Success Message         |
      | DS-Introduction | 3         | Logged out successfully |


  Rule: Non Functional Validation of Graph page

    @Performance
    Scenario: Verify the Graph page load time
      Then the Graph page should load within 5 secs

    @Security
    Scenario: Verify that the Graph page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify Graph page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Graph Link in Graph page

    Background:
      When  the user clicks Graph link in Graph page

    @Performance
    Scenario: Verify the Graph link page load time
      Then the Graph link in Graph page should load within 5 secs

    @Security
    Scenario: Verify that the Graph link in Graph page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify the Graph link in Graph page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Try Editor page in Graph Link

    Background:
      When the user clicks Graph link in Graph page
      When the user clicks on Try here button in Graph page

    @Performance
    Scenario: Verify the try editor page load time
      Then the try editor page should load within 5 secs

    @Security
    Scenario: Verify that the try editor page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify try editor page loads without errors
      Then the page should load without any errors

  Rule: Non-Functional Validation of Practice page in Graph link

    Background:
      When the user clicks Graph link in Graph page
      When the user clicks on Practice Questions link in Graph page

    @Performance
    Scenario: Verify the practice page load time
      Then the practice page should load within 5 secs

    @Security
    Scenario: Verify that the practice page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify practice page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Graph Representation Link in Graph page

    Background:
      When the user clicks Graph Representations link in Graph page

    @Performance
    Scenario: Verify the Graph Representations link page load time
      Then the Graph Representation link in Graph page should load within 5 secs

    @Security
    Scenario: Verify that the Graph Representation link in Graph page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify the Graph Representation link in Graph page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Try Editor page in Graph Representation Link

    Background:
      When the user clicks Graph Representations link in Graph page
      When the user clicks on Try here button in Graph page

    @Performance
    Scenario: Verify that the try editor page load time in Graph Representation Link
      Then the try editor page should load within 5 secs

    @Security
    Scenario: Verify that the try editor page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify try editor page loads without errors
      Then the page should load without any errors

  Rule: Non-Functional Validation of Practice page in Graph Representation link

    Background:
      When the user clicks Graph Representations link in Graph page
      When the user clicks on Practice Questions link in Graph page

    @Performance
    Scenario: Verify that the practice page load time in Graph Representation Link
      Then the practice page should load within 5 secs

    @Security
    Scenario: Verify that the practice page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify practice page loads without errors
      Then the page should load without any errors


