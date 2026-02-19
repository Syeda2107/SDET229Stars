Feature: Tree Functionality of Dsalgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When  the user clicks on Get Started button in the DsAlgo Portal
    And   user clicks on Sign in link in the Home page
    Then  the page title should be displayed as "Login"
    When  the user enters valid Username and Password in the Login form
    And  user clicks on Login button

#--------------------------------------------------------------------------------------------------------------

  Scenario: Verify that user is navigated to Tree page
    When  the user clicks the Get Started button in Tree Panel
    Then  the page title should be displayed as "Tree"

# "Overview of Trees" page

  Scenario: Verify that user is able to navigate to Overview of Trees link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"

  Scenario Outline: Verify that the user is navigated to the try editor page in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks on Try here button in Overview of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                |
      | https://dsportalapp.herokuapp.com/tryEditor |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When the user clicks Overview of Trees link in Tree page
    Then the page title should be displayed as "Overview of Trees"
    When the user clicks on Try here button in Overview of Trees page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks on Try here button in Overview of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 1         |

  Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks on Try here button in Overview of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 2         |

  Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks on Try here button in Overview of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 3         |


  Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks on Try here button in Overview of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 4         |


  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks on Try here button in Overview of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 5         |


  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks on Try here button in Overview of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 6         |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Overview of Trees link in Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                     |
      | https://dsportalapp.herokuapp.com/tree/practice  |

#  Terminologies page

  Scenario: Verify that user is able to navigate to Terminologies page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Terminologies link in Tree page
    Then  the page title should be displayed as "Terminologies"

  Scenario Outline: Verify that the user is navigated to the try editor page in Terminologies page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Terminologies link in Tree page
    Then  the page title should be displayed as "Terminologies"
    When the user clicks on Try here button in Terminologies page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                |
      | https://dsportalapp.herokuapp.com/tryEditor |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When the user clicks Terminologies link in Tree page
    Then the page title should be displayed as "Terminologies"
    When the user clicks on Try here button in Terminologies page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |


  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When the user clicks Terminologies link in Tree page
    Then the page title should be displayed as "Terminologies"
    When the user clicks on Try here button in Terminologies page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 1         |


  Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When the user clicks Terminologies link in Tree page
    Then the page title should be displayed as "Terminologies"
    When the user clicks on Try here button in Terminologies page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 2         |


  Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When the user clicks Terminologies link in Tree page
    Then the page title should be displayed as "Terminologies"
    When the user clicks on Try here button in Terminologies page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 3         |


  Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When the user clicks Terminologies link in Tree page
    Then the page title should be displayed as "Terminologies"
    When the user clicks on Try here button in Terminologies page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 4         |


  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When the user clicks Terminologies link in Tree page
    Then the page title should be displayed as "Terminologies"
    When the user clicks on Try here button in Terminologies page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 5         |


  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When the user clicks Terminologies link in Tree page
    Then the page title should be displayed as "Terminologies"
    When the user clicks on Try here button in Terminologies page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 6         |


  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Terminologies link in Tree page
    Then  the page title should be displayed as "Terminologies"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                     |
      | https://dsportalapp.herokuapp.com/tree/practice  |

# Types of Trees page

  Scenario: Verify that user is able to navigate to Types of Trees page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"

  Scenario Outline: Verify that the user is navigated to the try editor page in Types of Trees page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user clicks on Try here button in Types of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                |
      | https://dsportalapp.herokuapp.com/tryEditor |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user clicks on Try here button in Types of Trees page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user clicks on Try here button in Types of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 1         |

  Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user clicks on Try here button in Types of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 2         |

  Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user clicks on Try here button in Types of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 3         |

  Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user clicks on Try here button in Types of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 4         |

  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user clicks on Try here button in Types of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 5         |

  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user clicks on Try here button in Types of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 6         |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Trees link in Tree page
    Then  the page title should be displayed as "Types of Trees"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                     |
      | https://dsportalapp.herokuapp.com/tree/practice  |

# Tree Traversals

  Scenario: Verify that user is able to navigate to Tree Traversals page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"

  Scenario Outline: Verify that the user is navigated to the try editor page in Tree Traversals page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user clicks on Try here button in Tree Traversals page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                |
      | https://dsportalapp.herokuapp.com/tryEditor |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user clicks on Try here button in Tree Traversals page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user clicks on Try here button in Tree Traversals page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 1         |

  Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user clicks on Try here button in Tree Traversals page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 2         |

  Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user clicks on Try here button in Tree Traversals page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 3         |


  Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user clicks on Try here button in Tree Traversals page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 4         |

  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user clicks on Try here button in Tree Traversals page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 5         |

  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user clicks on Try here button in Tree Traversals page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 6         |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Tree Traversals link in Tree page
    Then  the page title should be displayed as "Tree Traversals"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                     |
      | https://dsportalapp.herokuapp.com/tree/practice  |

# Traversals-Illustration

  Scenario: Verify that user is able to navigate to Traversals-Illustration page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"

  Scenario Outline: Verify that the user is navigated to the try editor page in Traversals-Illustration page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user clicks on Try here button in Traversals-Illustration page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                |
      | https://dsportalapp.herokuapp.com/tryEditor |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user clicks on Try here button in Traversals-Illustration page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user clicks on Try here button in Traversals-Illustration page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 1         |

  Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user clicks on Try here button in Traversals-Illustration page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 2         |

  Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user clicks on Try here button in Traversals-Illustration page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 3         |

  Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user clicks on Try here button in Traversals-Illustration page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 4         |

  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user clicks on Try here button in Traversals-Illustration page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 5         |

  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user clicks on Try here button in Traversals-Illustration page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 6         |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Traversals-Illustration link in Tree page
    Then  the page title should be displayed as "Traversals-Illustration"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                     |
      | https://dsportalapp.herokuapp.com/tree/practice  |

# Binary Trees

  Scenario: Verify that user is able to navigate to Binary Trees page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"

  Scenario Outline: Verify that the user is navigated to the try editor page in Binary Trees page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user clicks on Try here button in Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                |
      | https://dsportalapp.herokuapp.com/tryEditor |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user clicks on Try here button in Binary Trees
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user clicks on Try here button in Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 1         |

  Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user clicks on Try here button in Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 2         |

  Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user clicks on Try here button in Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 3         |


  Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user clicks on Try here button in Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 4         |

  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user clicks on Try here button in Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 5         |

  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user clicks on Try here button in Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 6         |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Trees link in Tree page
    Then  the page title should be displayed as "Binary Trees"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                     |
      | https://dsportalapp.herokuapp.com/tree/practice  |

#Types of Binary Trees

  Scenario: Verify that user is able to navigate to Types of Binary Trees page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"

  Scenario Outline: Verify that the user is navigated to the try editor page in Types of Binary Trees page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user clicks on Try here button in Types of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                |
      | https://dsportalapp.herokuapp.com/tryEditor |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user clicks on Try here button in Types of Binary Trees
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user clicks on Try here button in Types of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 1         |

  Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user clicks on Try here button in Types of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 2         |

  Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user clicks on Try here button in Types of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 3         |


  Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user clicks on Try here button in Types of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 4         |

  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user clicks on Try here button in Types of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 5         |

  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user clicks on Try here button in Types of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 6         |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Types of Binary Trees link in Tree page
    Then  the page title should be displayed as "Types of Binary Trees"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                     |
      | https://dsportalapp.herokuapp.com/tree/practice  |

 # Implementation in Python

  Scenario: Verify that user is able to navigate to Implementation in Python page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"

  Scenario Outline: Verify that the user is navigated to the try editor page in Implementation in Python page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user clicks on Try here button in Implementation in Python
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                |
      | https://dsportalapp.herokuapp.com/tryEditor |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user clicks on Try here button in Implementation in Python
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user clicks on Try here button in Implementation in Python
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 1         |

  Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user clicks on Try here button in Implementation in Python
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 2         |

  Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user clicks on Try here button in Implementation in Python
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 3         |


  Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user clicks on Try here button in Implementation in Python
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 4         |

  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user clicks on Try here button in Implementation in Python
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 5         |

  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user clicks on Try here button in Implementation in Python
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 6         |

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation in Python link in Tree page
    Then  the page title should be displayed as "Implementation in Python"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                     |
      | https://dsportalapp.herokuapp.com/tree/practice  |

# Binary Tree Traversals
  @T
  Scenario: Verify that user is able to navigate to Binary Tree Traversals page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
  @T
  Scenario Outline: Verify that the user is navigated to the try editor page in Binary Tree Traversals page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user clicks on Try here button in Binary Tree Traversals
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                |
      | https://dsportalapp.herokuapp.com/tryEditor |
  @T
  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user clicks on Try here button in Binary Tree Traversals
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |
  @T
  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user clicks on Try here button in Binary Tree Traversals
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 1         |
  @T
  Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user clicks on Try here button in Binary Tree Traversals
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 2         |
  @T
  Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user clicks on Try here button in Binary Tree Traversals
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 3         |
  @T

  Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user clicks on Try here button in Binary Tree Traversals
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 4         |
  @T
  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user clicks on Try here button in Binary Tree Traversals
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 5         |
  @T
  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user clicks on Try here button in Binary Tree Traversals
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 6         |
  @T
  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Tree Traversals link in Tree page
    Then  the page title should be displayed as "Binary Tree Traversals"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                     |
      | https://dsportalapp.herokuapp.com/tree/practice  |
  @T
# Implementation of Binary Trees

  Scenario: Verify that user is able to navigate to Implementation of Binary Trees page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
  @T
  Scenario Outline: Verify that the user is navigated to the try editor page in Implementation of Binary Trees page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user clicks on Try here button in Implementation of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                |
      | https://dsportalapp.herokuapp.com/tryEditor |
  @T
  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user clicks on Try here button in Implementation of Binary Trees
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |
  @T
  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user clicks on Try here button in Implementation of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 1         |
  @T
  Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user clicks on Try here button in Implementation of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 2         |
  @T
  Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user clicks on Try here button in Implementation of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 3         |
  @T

  Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user clicks on Try here button in Implementation of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 4         |
  @T
  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user clicks on Try here button in Implementation of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 5         |
  @T
  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user clicks on Try here button in Implementation of Binary Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 6         |
  @T
  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of Binary Trees link in Tree page
    Then  the page title should be displayed as "Implementation of Binary Trees"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                     |
      | https://dsportalapp.herokuapp.com/tree/practice  |
  @T
# Applications of Binary trees

  Scenario: Verify that user is able to navigate to Applications of Binary trees page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
  @T
  Scenario Outline: Verify that the user is navigated to the try editor page in Applications of Binary trees page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user clicks on Try here button in Applications of Binary trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                |
      | https://dsportalapp.herokuapp.com/tryEditor |
  @T
  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user clicks on Try here button in Applications of Binary trees
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |
  @T
  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user clicks on Try here button in Applications of Binary trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 1         |
  @T
  Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user clicks on Try here button in Applications of Binary trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 2         |
  @T
  Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user clicks on Try here button in Applications of Binary trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 3         |
  @T

  Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user clicks on Try here button in Applications of Binary trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 4         |
  @T
  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user clicks on Try here button in Applications of Binary trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 5         |
  @T
  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user clicks on Try here button in Applications of Binary trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 6         |
  @T
  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Applications of Binary trees link in Tree page
    Then  the page title should be displayed as "Applications of Binary trees"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                    |
      | https://dsportalapp.herokuapp.com/tree/practice |


# Binary Search Trees
  @T
  Scenario: Verify that user is able to navigate to Binary Search Trees link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
  @T
  Scenario Outline: Verify that the user is navigated to the try editor page in Binary Search Trees page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user clicks on Try here button in Binary Search Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                |
      | https://dsportalapp.herokuapp.com/tryEditor |
  @T
  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user clicks on Try here button in Binary Search Trees
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |
  @T
  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user clicks on Try here button in Binary Search Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 1         |
  @T
  Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user clicks on Try here button in Binary Search Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 2         |
  @T
  Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user clicks on Try here button in Binary Search Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 3         |

  @T
  Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user clicks on Try here button in Binary Search Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 4         |
@T
  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user clicks on Try here button in Binary Search Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 5         |
  @T
  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user clicks on Try here button in Binary Search Trees
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 6         |
  @T
  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Binary Search Trees link in Tree page
    Then  the page title should be displayed as "Binary Search Trees"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed as "<Expected Url>"
    @T
    Examples:
      | Expected Url                                     |
      | https://dsportalapp.herokuapp.com/tree/practice  |

# Implementation of BST
  @T
  Scenario: Verify that user is able to navigate to Implementation of BST page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
  @T
  Scenario Outline: Verify that the user is navigated to the try editor page in Implementation of BST page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user clicks on Try here button in Implementation of BST
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                |
      | https://dsportalapp.herokuapp.com/tryEditor |
  @T
  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user clicks on Try here button in Implementation of BST
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |
  @T
  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user clicks on Try here button in Implementation of BST
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 1         |
  @T
  Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user clicks on Try here button in Implementation of BST
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 2         |
  @T
  Scenario Outline: Verify that the popup is displayed with error message after entering "$$$$$" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user clicks on Try here button in Implementation of BST
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 3         |
  @T

  Scenario Outline: Verify that the popup is displayed with error message after entering "((((((" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user clicks on Try here button in Implementation of BST
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 4         |
  @T
  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user clicks on Try here button in Implementation of BST
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 5         |
  @T
  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user clicks on Try here button in Implementation of BST
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 6         |
  @T

  Scenario Outline: Verify that user is able to navigate to Practice Questions page link in Tree page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When  the user clicks Implementation of BST link in Tree page
    Then  the page title should be displayed as "Implementation Of BST"
    When the user scrolls down and clicks Practice Question link
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed as "<Expected Url>"
    When the user clicks on Sign out link
    Then the user should be able to logged out and get success message as "<Success Message>"
    Examples:
      | Expected Url                                     | Success Message         |
      | https://dsportalapp.herokuapp.com/tree/practice  | Logged out successfully |
