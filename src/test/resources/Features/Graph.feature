Feature:Graph Functionality of Dsalgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When  the user clicks on Get Started button in the DsAlgo Portal
    And   user clicks on Sign in link in the Home page
    Then  the page title should be displayed as "Login"
    When  the user enters valid Username and Password in the Login form
    And user clicks on Login button

# Graph page

  Scenario: Verify that user is navigated to Graph page
    When  the user clicks the Get Started button after scrolling down in Graph Panel
    Then  the page title should be displayed as "Graph"

  Scenario: Verify that user is able to navigate to Graph link in Graph page
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When  the user clicks Graph link in Graph page
    Then  the page title should be displayed as "Graph"

  Scenario Outline: Verify that the user is navigated to the try editor page in Graph page
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph link in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks on Try here button in Graph page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                |
      | https://dsportalapp.herokuapp.com/tryEditor |

  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph link in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks on Try here button in Graph page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph link in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks on Try here button in Graph page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 1         |

  Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph link in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks on Try here button in Graph page
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
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph link in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks on Try here button in Graph page
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
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph link in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks on Try here button in Graph page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 4        |

  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph link in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks on Try here button in Graph page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 5         |

  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph link in Graph page
    Then the page title should be displayed as "Graph"
    When the user clicks on Try here button in Graph page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 6         |

  Scenario Outline: Verify that user is able to navigate to Practice Questions Page for Graph Representations page
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When  the user clicks Graph Representations link in Graph page
    Then  the page title should be displayed as "Graph Representations"
    When the user clicks on Practice Questions link in Graph Representations page
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                     |
      | https://dsportalapp.herokuapp.com/graph/practice |

#  Graph Representations

  Scenario: Verify that user is able to navigate to Graph Representations link in Graph page
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When  the user clicks Graph Representations link in Graph page
    Then  the page title should be displayed as "Graph Representations"

  Scenario Outline: Verify that the user is navigated to the try editor page in Graph Representations page
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph Representations link in Graph page
    Then the page title should be displayed as "Graph Representations"
    When the user clicks on Try here button in Graph Representations page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "<Expected Url>"
    Examples:
      | Expected Url                                |
      | https://dsportalapp.herokuapp.com/tryEditor |


  Scenario Outline: Verify that the user is able to see an output for valid python code
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph Representations link in Graph page
    Then the page title should be displayed as "Graph Representations"
    When the user clicks on Try here button in Graph Representations page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get output from "<SheetName>" and <RowNumber> below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 0         |

  Scenario Outline: Verify that the popup is displayed with error message for invalid python code with spaces in try editor
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph Representations link in Graph page
    Then the page title should be displayed as "Graph Representations"
    When the user clicks on Try here button in Graph Representations page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> with prefix space
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 1         |

  Scenario Outline: Verify that the popup is displayed with error message after entering invalid code with characters in try editor
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph Representations link in Graph page
    Then the page title should be displayed as "Graph Representations"
    When the user clicks on Try here button in Graph Representations page
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
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph Representations link in Graph page
    Then the page title should be displayed as "Graph Representations"
    When the user clicks on Try here button in Graph Representations page
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
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph Representations link in Graph page
    Then the page title should be displayed as "Graph Representations"
    When the user clicks on Try here button in Graph Representations page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should get pop up message from "<SheetName>" and <RowNumber>
    And user clicks on OK button in the popup
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 4        |

  Scenario Outline: Verify that the user is not able to see output after entering "12345" in try editor
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph Representations link in Graph page
    Then the page title should be displayed as "Graph Representations"
    When the user clicks on Try here button in Graph Representations page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 5         |

  Scenario Outline: Verify that the user is not able to see output without entering code in the try editor
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When the user clicks Graph Representations link in Graph page
    Then the page title should be displayed as "Graph Representations"
    When the user clicks on Try here button in Graph Representations page
    Then the page title should be displayed as "Assessment"
    And  the page url should be displayed as "<Expected Url>"
    When the user enters Python Code from "<SheetName>" and <RowNumber> in try editor
    And user clicks on Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | SheetName       | RowNumber |
      | https://dsportalapp.herokuapp.com/tryEditor | DS-Introduction | 6         |

  Scenario Outline: Verify that user is able to navigate to Practice Questions Page for Graph Representations page
    When the user clicks the Get Started button after scrolling down in Graph Panel
    Then the page title should be displayed as "Graph"
    When  the user clicks Graph Representations link in Graph page
    Then  the page title should be displayed as "Graph Representations"
    When the user clicks on Practice Questions link in Graph Representations page
    Then the page title should be displayed as "Practice Questions"
    And the page url should be displayed as "<Expected Url>"
    When the user clicks on Sign out link
    Then the user should be able to logged out and get success message as "<Success Message>"
    Examples:
      | Expected Url                                     | Success Message         |
      | https://dsportalapp.herokuapp.com/graph/practice | Logged out successfully |



