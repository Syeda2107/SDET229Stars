Feature: LinkedList navigation and Try Editor execution in DsAlgo Portal

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When the user clicks on Get Started button in the DsAlgo Portal
    And user clicks on Sign in link in the Home page
    Then the page title should be displayed as "Login"
    When the user enters valid Username and Password in the Login form
    And user clicks on Login button

  Scenario Outline: Navigate to LinkedList submodule, access Try Editor, and run code
    When the user clicks on Get Started button LinkedList
    And the user clicks on the LinkedList submodule "<Submodule>"
    And the user clicks on Try Here button on LinkedList submodule
    And the user enters code from "<SheetName>" and <RowNumber> in Try Editor on LinkedList and clicks Run
    Then the Try Editor system on LinkedList should display result from "<SheetName>" and <RowNumber>

    Examples:
      | Submodule                        | SheetName      | RowNumber |
      | Introduction                     | LinkedList_Try | 0        |
      | Introduction                     | LinkedList_Try | 1        |
      | Creating Linked LIst             | LinkedList_Try | 2        |
      | Creating Linked LIst             | LinkedList_Try | 3        |
      | Types of Linked List             | LinkedList_Try | 4        |
      | Types of Linked List             | LinkedList_Try | 5        |
      | Implement Linked List in Python  | LinkedList_Try | 6        |
      | Implement Linked List in Python  | LinkedList_Try | 7        |
      | Traversal                        | LinkedList_Try | 8        |
      | Traversal                        | LinkedList_Try | 9        |
      | Insertion                        | LinkedList_Try | 10       |
      | Insertion                        | LinkedList_Try | 11       |
      | Deletion                         | LinkedList_Try | 12       |
      | Deletion                         | LinkedList_Try | 13       |


  Scenario Outline: Practice questions on LinkedList run and submit
    When the user clicks on Get Started button LinkedList
    Given the user is on the "<Submodule Name>" page on LinkedList
    When the user clicks the LinkedList Submodule "Practice Questions" button
    Then the Practice Question LinkedList Submodule system should display blank page with the url from "LinkedList_Practice" and <RowNumber>

    Examples:
      | Submodule Name                  | RowNumber |
      | Introduction                    | 0         |
      | Creating Linked LIst            | 1         |
      | Types of Linked List            | 2         |
      | Implement Linked List in Python | 3         |
      | Traversal                       | 4         |
      | Insertion                       | 5         |
      | Deletion                        | 6         |
