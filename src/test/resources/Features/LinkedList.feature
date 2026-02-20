Feature: LinkedList navigation and Execution in DsAlgo Portal

  Background:
    Given the user is logged into the "dsAlgoportal" application
    And the user is on the Home page
  Scenario Outline: Navigate to module, access Try Editor and run code
    Given the user is on the "Linked List" data structure page after signin
    When the user clicks the "<Module Button>" button
    Then the user should be redirected to the "<Module Name>" page
    And the user clicks the "Try Here" button
    Then the user should be redirected to the "Try Editor" page
    When the user enters "<Code>" in the editor and clicks the "Run" button
    Then the system should display "<Result>"

    Examples:
      | Module Name                      | Module Button              | Code         | Result              |
      | Introduction                     | Arrays in Python           | ""           | error alert message |
      | Introduction                     | Arrays in Python           | invalid_code | error alert message |
      | Introduction                     | Arrays in Python           | print("Hi")  | Hi output           |
      | Creating Linked LIst             | Arrays Using List          | ""           | error alert message |
      | Creating Linked LIst             | Arrays Using List          | invalid_code | error alert message |
      | Creating Linked LIst             | Arrays Using List          | print("Hi")  | Hi output           |
      | Types of Linked List             | Basic Operations in Lists  | ""           | error alert message |
      | Types of Linked List             | Basic Operations in Lists  | invalid_code | error alert message |
      | Types of Linked List             | Basic Operations in Lists  | print("Hi")  | Hi output           |
      | Implement Linked List in Python  | Applications of Array      | ""           | error alert message |
      | Implement Linked List in Python  | Applications of Array      | invalid_code | error alert message |
      | Implement Linked List in Python  | Applications of Array      | print("Hi")  | Hi output           |
      | Traversal                        | Applications of Array      | ""           | error alert message |
      | Traversal                        | Applications of Array      | invalid_code | error alert message |
      | Traversal                        | Applications of Array      | print("Hi")  | Hi output           |
      | Insertion                        | Applications of Array      | ""           | error alert message |
      | Insertion                        | Applications of Array      | invalid_code | error alert message |
      | Insertion                        | Applications of Array      | print("Hi")  | Hi output           |
      | Deletion                         | Applications of Array      | ""           | error alert message |
      | Deletion                         | Applications of Array      | invalid_code | error alert message |
      | Deletion                         | Applications of Array      | print("Hi")  | Hi output           |

  Scenario: navigate to "Linked List" and click on the Practice questions
    Given the user is is on the "linked list" page
    When the user clicks on "Practice Questions"
    Then the user redirected to blank practice page from "Linked list" page