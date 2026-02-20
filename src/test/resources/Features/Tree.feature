Feature: Tree Functionality of Dsalgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When the user clicks on Get Started button in the DsAlgo Portal
    And user clicks on Sign in link in the Home page
    When the user enters valid Username and Password in the Login form
    And user clicks on Login button
    When the user clicks the Get Started button in Tree Panel
#--------------------------------------------------------------------------------------------------------------
  Rule: Functional Validation of Tree module

  Scenario: Verify that user is navigated to Tree page
    Then  the page title should be displayed as "Tree"

# "Overview of Trees" page

  Scenario: Verify that user is able to navigate to Overview of Trees link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"

  Scenario Outline: Verify that the user is navigated to the try editor page in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks on Try here button in Overview of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

    Scenario Outline: Verify that the user is able to see an output for valid python code
    Then the page title should be displayed as "Tree"
    When the user clicks Overview of Trees link in Tree page
    Then the page title should be displayed as "Overview of Trees"
    When the user clicks on Try here button in Overview of Trees page
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks on Try here button in Overview of Trees page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks on Try here button in Overview of Trees page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks on Try here button in Overview of Trees page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks on Try here button in Overview of Trees page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks on Try here button in Overview of Trees page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks on Try here button in Overview of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 6         | 0          |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction |  2        |

#  Terminologies page

  Scenario: Verify that user is able to navigate to Terminologies page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Terminologies link in Tree page
    Then  the page title should be displayed as "Terminologies"

  Scenario Outline: Verify that the user is navigated to the try editor page in Terminologies page
    Then the page title should be displayed as "Tree"
    When  the user clicks Terminologies link in Tree page
    Then  the page title should be displayed as "Terminologies"
    When the user clicks on Try here button in Terminologies page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    Then the page title should be displayed as "Tree"
    When the user clicks Terminologies link in Tree page
    Then the page title should be displayed as "Terminologies"
    When the user clicks on Try here button in Terminologies page
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    Then the page title should be displayed as "Tree"
    When the user clicks Terminologies link in Tree page
    Then the page title should be displayed as "Terminologies"
    When the user clicks on Try here button in Terminologies page
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
    Then the page title should be displayed as "Tree"
    When the user clicks Terminologies link in Tree page
    Then the page title should be displayed as "Terminologies"
    When the user clicks on Try here button in Terminologies page
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
    Then the page title should be displayed as "Tree"
    When the user clicks Terminologies link in Tree page
    Then the page title should be displayed as "Terminologies"
    When the user clicks on Try here button in Terminologies page
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
    Then the page title should be displayed as "Tree"
    When the user clicks Terminologies link in Tree page
    Then the page title should be displayed as "Terminologies"
    When the user clicks on Try here button in Terminologies page
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
    Then the page title should be displayed as "Tree"
    When the user clicks Terminologies link in Tree page
    Then the page title should be displayed as "Terminologies"
    When the user clicks on Try here button in Terminologies page
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
    Then the page title should be displayed as "Tree"
    When the user clicks Terminologies link in Tree page
    Then the page title should be displayed as "Terminologies"
    When the user clicks on Try here button in Terminologies page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 6         | 0          |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Terminologies link in Tree page
    Then  the page title should be displayed as "Terminologies"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction |  2        |

# Types of Trees page

  Scenario: Verify that user is able to navigate to Types of Trees page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"

  Scenario Outline: Verify that the user is navigated to the try editor page in Types of Trees page
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user clicks on Try here button in Types of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user clicks on Try here button in Types of Trees page
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user clicks on Try here button in Types of Trees page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user clicks on Try here button in Types of Trees page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user clicks on Try here button in Types of Trees page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user clicks on Try here button in Types of Trees page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user clicks on Try here button in Types of Trees page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user clicks on Try here button in Types of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 6         | 0          |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction |  2        |

# Tree Traversals

  Scenario: Verify that user is able to navigate to Tree Traversals page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"

  Scenario Outline: Verify that the user is navigated to the try editor page in Tree Traversals page
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user clicks on Try here button in Tree Traversals page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user clicks on Try here button in Tree Traversals page
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user clicks on Try here button in Tree Traversals page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user clicks on Try here button in Tree Traversals page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user clicks on Try here button in Tree Traversals page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user clicks on Try here button in Tree Traversals page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user clicks on Try here button in Tree Traversals page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user clicks on Try here button in Tree Traversals page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 6         | 0          |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction |  2        |

# Traversals-Illustration

  Scenario: Verify that user is able to navigate to Traversals-Illustration page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"

  Scenario Outline: Verify that the user is navigated to the try editor page in Traversals-Illustration page
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user clicks on Try here button in Traversals-Illustration page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user clicks on Try here button in Traversals-Illustration page
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user clicks on Try here button in Traversals-Illustration page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user clicks on Try here button in Traversals-Illustration page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user clicks on Try here button in Traversals-Illustration page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user clicks on Try here button in Traversals-Illustration page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user clicks on Try here button in Traversals-Illustration page
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user clicks on Try here button in Traversals-Illustration page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 6         | 0          |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction |  2        |

# Binary Trees

  Scenario: Verify that user is able to navigate to Binary Trees page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"

  Scenario Outline: Verify that the user is navigated to the try editor page in Binary Trees page
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user clicks on Try here button in Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user clicks on Try here button in Binary Trees
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user clicks on Try here button in Binary Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user clicks on Try here button in Binary Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user clicks on Try here button in Binary Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user clicks on Try here button in Binary Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user clicks on Try here button in Binary Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user clicks on Try here button in Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 6         | 0          |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction |  2        |

#Types of Binary Trees

  Scenario: Verify that user is able to navigate to Types of Binary Trees page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"

  Scenario Outline: Verify that the user is navigated to the try editor page in Types of Binary Trees page
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user clicks on Try here button in Types of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user clicks on Try here button in Types of Binary Trees
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user clicks on Try here button in Types of Binary Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user clicks on Try here button in Types of Binary Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user clicks on Try here button in Types of Binary Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user clicks on Try here button in Types of Binary Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user clicks on Try here button in Types of Binary Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user clicks on Try here button in Types of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 6         | 0          |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction |  2        |

 # Implementation in Python

  Scenario: Verify that user is able to navigate to Implementation in Python page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"

  Scenario Outline: Verify that the user is navigated to the try editor page in Implementation in Python page
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user clicks on Try here button in Implementation in Python
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user clicks on Try here button in Implementation in Python
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user clicks on Try here button in Implementation in Python
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user clicks on Try here button in Implementation in Python
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user clicks on Try here button in Implementation in Python
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user clicks on Try here button in Implementation in Python
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user clicks on Try here button in Implementation in Python
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user clicks on Try here button in Implementation in Python
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 6         | 0          |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction |  2        |

# Binary Tree Traversals

  Scenario: Verify that user is able to navigate to Binary Tree Traversals page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"

  Scenario Outline: Verify that the user is navigated to the try editor page in Binary Tree Traversals page
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user clicks on Try here button in Binary Tree Traversals
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user clicks on Try here button in Binary Tree Traversals
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user clicks on Try here button in Binary Tree Traversals
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user clicks on Try here button in Binary Tree Traversals
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user clicks on Try here button in Binary Tree Traversals
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user clicks on Try here button in Binary Tree Traversals
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user clicks on Try here button in Binary Tree Traversals
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user clicks on Try here button in Binary Tree Traversals
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 6         | 0          |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction |  2        |

# Implementation of Binary Trees

  Scenario: Verify that user is able to navigate to Implementation of Binary Trees page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"

  Scenario Outline: Verify that the user is navigated to the try editor page in Implementation of Binary Trees page
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user clicks on Try here button in Implementation of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user clicks on Try here button in Implementation of Binary Trees
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user clicks on Try here button in Implementation of Binary Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user clicks on Try here button in Implementation of Binary Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user clicks on Try here button in Implementation of Binary Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user clicks on Try here button in Implementation of Binary Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user clicks on Try here button in Implementation of Binary Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user clicks on Try here button in Implementation of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 6         | 0          |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction |  2        |

# Applications of Binary trees

  Scenario: Verify that user is able to navigate to Applications of Binary trees page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"

  Scenario Outline: Verify that the user is navigated to the try editor page in Applications of Binary trees page
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user clicks on Try here button in Applications of Binary trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user clicks on Try here button in Applications of Binary trees
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user clicks on Try here button in Applications of Binary trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user clicks on Try here button in Applications of Binary trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user clicks on Try here button in Applications of Binary trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user clicks on Try here button in Applications of Binary trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user clicks on Try here button in Applications of Binary trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user clicks on Try here button in Applications of Binary trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 6         | 0          |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction |  2        |

# Binary Search Trees

  Scenario: Verify that user is able to navigate to Binary Search Trees link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"

  Scenario Outline: Verify that the user is navigated to the try editor page in Binary Search Trees page
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user clicks on Try here button in Binary Search Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user clicks on Try here button in Binary Search Trees
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user clicks on Try here button in Binary Search Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user clicks on Try here button in Binary Search Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user clicks on Try here button in Binary Search Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user clicks on Try here button in Binary Search Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user clicks on Try here button in Binary Search Trees
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user clicks on Try here button in Binary Search Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 6         | 0          |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction |  2        |

# Implementation of BST

  Scenario: Verify that user is able to navigate to Implementation of BST page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"

  Scenario Outline: Verify that the user is navigated to the try editor page in Implementation of BST page
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user clicks on Try here button in Implementation of BST
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user clicks on Try here button in Implementation of BST
    Then the page title should be displayed as "Assessment"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | SheetName       | RowNumber |
      | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user clicks on Try here button in Implementation of BST
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user clicks on Try here button in Implementation of BST
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user clicks on Try here button in Implementation of BST
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user clicks on Try here button in Implementation of BST
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
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user clicks on Try here button in Implementation of BST
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber2> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 5         | 0          |

  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user clicks on Try here button in Implementation of BST
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed from "<SheetName>" and <RowNumber2>
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | SheetName       | RowNumber | RowNumber2 |
      | DS-Introduction | 6         | 0          |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed from "<SheetName>" and <RowNumber>
    When the user clicks on Sign out link
    Then the user should be able to logged out and get success message as "<Success Message>"
    Examples:
      | SheetName       | RowNumber | Success Message         |
      | DS-Introduction | 2         | Logged out successfully |

  Rule: Non Functional Validation of Tree page

    @Performance
    Scenario: Verify the Tree page load time
      Then the Tree page should load within 5 secs

    @Security
    Scenario: Verify that the Tree page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify Tree page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Overview of Trees Link in Tree page

    Background:
      When  the user clicks Overview of Trees link in Tree page

    @Performance
    Scenario: Verify the Overview of Trees link page load time
      Then the Overview of Trees link in Tree page should load within 5 secs

    @Security
    Scenario: Verify that the Overview of Trees link in Tree page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify the Overview of Trees link in Tree page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Try Editor page in Overview of Trees Link

    Background:
      When the user clicks Overview of Trees link in Tree page
      When the user clicks on Try here button in Overview of Trees page

    @Performance
    Scenario: Verify that the try editor page load time
      Then the try editor page should load within 5 secs

    @Security
    Scenario: Verify that the try editor page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify try editor page loads without errors
      Then the page should load without any errors

  Rule: Non-Functional Validation of Practice page in Overview of Trees link

    Background:
      When the user clicks Overview of Trees link in Tree page
      When the user scrolls down and clicks Practice Question link

    @Performance
    Scenario: Verify the practice page load time
      Then the practice page should load within 5 secs

    @Security
    Scenario: Verify that the practice page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify practice page loads without errors
      Then the page should load without any errors

  # Terminologies page

  Rule: Non Functional Validation of Terminologies Link in Tree page

    Background:
      When  the user clicks Terminologies link in Tree page

    @Performance
    Scenario: Verify the Terminologies link page load time
      Then the Terminologies link in Tree page should load within 5 secs

    @Security
    Scenario: Verify that the Terminologies link in Tree page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify the Terminologies link in Tree page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Try Editor page in Terminologies link

    Background:
      When the user clicks Terminologies link in Tree page
      When the user clicks on Try here button in Terminologies page

    @Performance
    Scenario: Verify the try editor page load time
      Then the try editor page should load within 5 secs

    @Security
    Scenario: Verify that the try editor page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify try editor page loads without errors
      Then the page should load without any errors

  Rule: Non-Functional Validation of Practice page in Terminologies link

    Background:
      When the user clicks Terminologies link in Tree page
      When the user scrolls down and clicks Practice Question link

    @Performance
    Scenario: Verify the practice page load time
      Then the practice page should load within 5 secs

    @Security
    Scenario: Verify the practice page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify practice page loads without errors
      Then the page should load without any errors

  #Types of Trees page

  Rule: Non Functional Validation of Types of Trees Link in Tree page

    Background:
      When  the user clicks Types of Trees link in Tree page

    @Performance
    Scenario: Verify the Types of Trees link page load time
      Then the Types of Trees link in Tree page should load within 5 secs

    @Security
    Scenario: Verify that the Types of Trees link in Tree page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify the Types of Trees link in Tree page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Try Editor page in Types of Trees link

    Background:
      When the user clicks Types of Trees link in Tree page
      When the user clicks on Try here button in Types of Trees page

    @Performance
    Scenario: Verify the try editor page load time
      Then the try editor page should load within 5 secs

    @Security
    Scenario: Verify that the try editor page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify try editor page loads without errors
      Then the page should load without any errors

  Rule: Non-Functional Validation of Practice page in Types of Trees link

    Background:
      When the user clicks Types of Trees link in Tree page
      When the user scrolls down and clicks Practice Question link

    @Performance
    Scenario: Verify the practice page load time
      Then the practice page should load within 5 secs

    @Security
    Scenario: Verify the practice page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify practice page loads without errors
      Then the page should load without any errors

# Tree Traversals

  Rule: Non Functional Validation of Tree Traversals Link in Tree page

    Background:
      When  the user clicks Tree Traversals link in Tree page

    @Performance
    Scenario: Verify the Tree Traversals link page load time
      Then the Tree Traversals link in Tree page should load within 5 secs

    @Security
    Scenario: Verify that the Tree Traversals link in Tree page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify the Tree Traversals link in Tree page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Try Editor page in Tree Traversals link

    Background:
      When the user clicks Tree Traversals link in Tree page
      When the user clicks on Try here button in Tree Traversals page

    @Performance
    Scenario: Verify the try editor page load time
      Then the try editor page should load within 5 secs

    @Security
    Scenario: Verify that the try editor page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify try editor page loads without errors
      Then the page should load without any errors

  Rule: Non-Functional Validation of Practice page in Tree Traversals link

    Background:
      When the user clicks Tree Traversals link in Tree page
      When the user scrolls down and clicks Practice Question link

    @Performance
    Scenario: Verify the practice page load time
      Then the practice page should load within 5 secs

    @Security
    Scenario: Verify the practice page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify practice page loads without errors
      Then the page should load without any errors

# Traversals-Illustration

  Rule: Non Functional Validation of Traversals-Illustration Link in Tree page

    Background:
      When  the user clicks Traversals-Illustration link in Tree page

    @Performance
    Scenario: Verify the Traversals-Illustration link page load time
      Then the Traversals-Illustration link in Tree page should load within 5 secs

    @Security
    Scenario: Verify that the Traversals-Illustration link in Tree page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify the Traversals-Illustration link in Tree page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Try Editor page in Traversals-Illustration link

    Background:
      When the user clicks Traversals-Illustration link in Tree page
      When the user clicks on Try here button in Traversals-Illustration page

    @Performance
    Scenario: Verify the try editor page load time
      Then the try editor page should load within 5 secs

    @Security
    Scenario: Verify that the try editor page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify try editor page loads without errors
      Then the page should load without any errors

  Rule: Non-Functional Validation of Practice page in Traversals-Illustration link

    Background:
      When the user clicks Traversals-Illustration link in Tree page
      When the user scrolls down and clicks Practice Question link

    @Performance
    Scenario: Verify the practice page load time
      Then the practice page should load within 5 secs

    @Security
    Scenario: Verify the practice page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify practice page loads without errors
      Then the page should load without any errors

# Binary Trees

  Rule: Non Functional Validation of Binary Trees Link in Tree page

    Background:
      When the user clicks Binary Trees link in Tree page

    @Performance
    Scenario: Verify the Binary Trees link page load time
      Then the Binary Trees link in Tree page should load within 5 secs

    @Security
    Scenario: Verify that the Binary Trees link in Tree page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify the Binary Trees link in Tree page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Try Editor page in Binary Trees link

    Background:
      When the user clicks Binary Trees link in Tree page
      When the user clicks on Try here button in Binary Trees

    @Performance
    Scenario: Verify the try editor page load time
      Then the try editor page should load within 5 secs

    @Security
    Scenario: Verify that the try editor page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify try editor page loads without errors
      Then the page should load without any errors

  Rule: Non-Functional Validation of Practice page in Binary Trees link

    Background:
      When the user clicks Binary Trees link in Tree page
      When the user scrolls down and clicks Practice Question link

    @Performance
    Scenario: Verify the practice page load time
      Then the practice page should load within 5 secs

    @Security
    Scenario: Verify the practice page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify practice page loads without errors
      Then the page should load without any errors

#Types of Binary Trees

  Rule: Non Functional Validation of Types of Binary Trees Link in Tree page

    Background:
      When the user clicks Types of Binary Trees link in Tree page

    @Performance
    Scenario: Verify the Types of Binary Trees link page load time
      Then the Types of Binary Trees link in Tree page should load within 5 secs

    @Security
    Scenario: Verify that the Types of Binary Trees link in Tree page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify the Types of Binary Trees link in Tree page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Try Editor page in Types of Binary Trees link

    Background:
      When the user clicks Types of Binary Trees link in Tree page
      When the user clicks on Try here button in Types of Binary Trees

    @Performance
    Scenario: Verify the try editor page load time
      Then the try editor page should load within 5 secs

    @Security
    Scenario: Verify that the try editor page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify try editor page loads without errors
      Then the page should load without any errors

  Rule: Non-Functional Validation of Practice page in Types of Binary Trees link

    Background:
      When the user clicks Types of Binary Trees link in Tree page
      When the user scrolls down and clicks Practice Question link

    @Performance
    Scenario: Verify the practice page load time
      Then the practice page should load within 5 secs

    @Security
    Scenario: Verify the practice page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify practice page loads without errors
      Then the page should load without any errors

# Implementation in Python

  Rule: Non Functional Validation of Implementation in Python Link in Tree page

    Background:
      When the user clicks Implementation in Python link in Tree page

    @Performance
    Scenario: Verify the Implementation in Python link page load time
      Then the Implementation in Python link in Tree page should load within 5 secs

    @Security
    Scenario: Verify that the Implementation in Python link in Tree page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify the Implementation in Python link in Tree page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Try Editor page in Implementation in Python link

    Background:
      When the user clicks Implementation in Python link in Tree page
      When the user clicks on Try here button in Implementation in Python

    @Performance
    Scenario: Verify the try editor page load time
      Then the try editor page should load within 5 secs

    @Security
    Scenario: Verify that the try editor page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify try editor page loads without errors
      Then the page should load without any errors

  Rule: Non-Functional Validation of Practice page in Implementation in Python link

    Background:
      When the user clicks Implementation in Python link in Tree page
      When the user scrolls down and clicks Practice Question link

    @Performance
    Scenario: Verify the practice page load time
      Then the practice page should load within 5 secs

    @Security
    Scenario: Verify the practice page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify practice page loads without errors
      Then the page should load without any errors

# Binary Tree Traversals

  Rule: Non Functional Validation of Binary Tree Traversals Link in Tree page

    Background:
      When the user clicks Binary Tree Traversals link in Tree page

    @Performance
    Scenario: Verify the Types of Binary Trees link page load time
      Then the Binary Tree Traversals link in Tree page should load within 5 secs

    @Security
    Scenario: Verify that the Binary Tree Traversals link in Tree page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify the Binary Tree Traversals link in Tree page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Try Editor page in Binary Tree Traversals link

    Background:
      When the user clicks Binary Tree Traversals link in Tree page
      When the user clicks on Try here button in Binary Tree Traversals

    @Performance
    Scenario: Verify the try editor page load time
      Then the try editor page should load within 5 secs

    @Security
    Scenario: Verify that the try editor page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify try editor page loads without errors
      Then the page should load without any errors

  Rule: Non-Functional Validation of Practice page in Binary Tree Traversals link

    Background:
      When the user clicks Binary Tree Traversals link in Tree page
      When the user scrolls down and clicks Practice Question link

    @Performance
    Scenario: Verify the practice page load time
      Then the practice page should load within 5 secs

    @Security
    Scenario: Verify the practice page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify practice page loads without errors
      Then the page should load without any errors

# Implementation of Binary Trees

  Rule: Non Functional Validation of Implementation of Binary Trees Link in Tree page

    Background:
      When the user clicks Implementation of Binary Trees link in Tree page

    @Performance
    Scenario: Verify the Implementation of Binary Trees link page load time
      Then the Implementation of Binary Trees link in Tree page should load within 5 secs

    @Security
    Scenario: Verify that the Implementation of Binary Trees link in Tree page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify the Implementation of Binary Trees link in Tree page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Try Editor page in Implementation of Binary Trees link

    Background:
      When the user clicks Implementation of Binary Trees link in Tree page
      When the user clicks on Try here button in Implementation of Binary Trees

    @Performance
    Scenario: Verify the try editor page load time
      Then the try editor page should load within 5 secs

    @Security
    Scenario: Verify that the try editor page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify try editor page loads without errors
      Then the page should load without any errors

  Rule: Non-Functional Validation of Practice page in Implementation of Binary Trees link

    Background:
      When the user clicks Implementation of Binary Trees link in Tree page
      When the user scrolls down and clicks Practice Question link

    @Performance
    Scenario: Verify the practice page load time
      Then the practice page should load within 5 secs

    @Security
    Scenario: Verify the practice page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify practice page loads without errors
      Then the page should load without any errors

# Applications of Binary trees

  Rule: Non Functional Validation of Applications of Binary trees Link in Tree page

    Background:
      When the user clicks Applications of Binary trees link in Tree page

    @Performance
    Scenario: Verify the Applications of Binary trees link page load time
      Then the Applications of Binary trees link in Tree page should load within 5 secs

    @Security
    Scenario: Verify that the Applications of Binary trees link in Tree page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify the Applications of Binary trees link in Tree page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Try Editor page in Applications of Binary trees link

    Background:
      When the user clicks Applications of Binary trees link in Tree page
      When the user clicks on Try here button in Applications of Binary trees

    @Performance
    Scenario: Verify the try editor page load time
      Then the try editor page should load within 5 secs

    @Security
    Scenario: Verify that the try editor page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify try editor page loads without errors
      Then the page should load without any errors

  Rule: Non-Functional Validation of Practice page in Applications of Binary trees link

    Background:
      When the user clicks Applications of Binary trees link in Tree page
      When the user scrolls down and clicks Practice Question link

    @Performance
    Scenario: Verify the practice page load time
      Then the practice page should load within 5 secs

    @Security
    Scenario: Verify the practice page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify practice page loads without errors
      Then the page should load without any errors

# Binary Search Trees

  Rule: Non Functional Validation of Binary Search Trees Link in Tree page

    Background:
      When the user clicks Binary Search Trees link in Tree page

    @Performance
    Scenario: Verify the Binary Search Trees link page load time
      Then the Binary Search Trees link in Tree page should load within 5 secs

    @Security
    Scenario: Verify that the Binary Search Trees link in Tree page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify the Binary Search Trees link in Tree page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Try Editor page in Binary Search Trees link

    Background:
      When the user clicks Binary Search Trees link in Tree page
      When the user clicks on Try here button in Binary Search Trees

    @Performance
    Scenario: Verify the try editor page load time
      Then the try editor page should load within 5 secs

    @Security
    Scenario: Verify that the try editor page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify try editor page loads without errors
      Then the page should load without any errors

  Rule: Non-Functional Validation of Practice page in Binary Search Trees link

    Background:
      When the user clicks Binary Search Trees link in Tree page
      When the user scrolls down and clicks Practice Question link

    @Performance
    Scenario: Verify the practice page load time
      Then the practice page should load within 5 secs

    @Security
    Scenario: Verify the practice page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify practice page loads without errors
      Then the page should load without any errors

# Implementation of BST

  Rule: Non Functional Validation of Implementation of BST Link in Tree page

    Background:
      When the user clicks Implementation of BST link in Tree page

    @Performance
    Scenario: Verify the Implementation of BST link page load time
      Then the Implementation of BST link in Tree page should load within 5 secs

    @Security
    Scenario: Verify that the Implementation of BST link in Tree page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify the Implementation of BST link in Tree page loads without errors
      Then the page should load without any errors

  Rule: Non Functional Validation of Try Editor page in Implementation of BST link

    Background:
      When the user clicks Implementation of BST link in Tree page
      When the user clicks on Try here button in Types of Binary Trees

    @Performance
    Scenario: Verify the try editor page load time
      Then the try editor page should load within 5 secs

    @Security
    Scenario: Verify that the try editor page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify try editor page loads without errors
      Then the page should load without any errors

  Rule: Non-Functional Validation of Practice page in Implementation of BST link

    Background:
      When the user clicks Implementation of BST link in Tree page
      When the user scrolls down and clicks Practice Question link

    @Performance
    Scenario: Verify the practice page load time
      Then the practice page should load within 5 secs

    @Security
    Scenario: Verify the practice page loads using Https protocol
      Then the page should load using Https

    @Reliability
    Scenario: Verify practice page loads without errors
      Then the page should load without any errors