Feature: Array Module Navigation and Execution in DsAlgo Portal

  Background:
    Given the user is logged into the "dsAlgoportal" application
    And the user is on the Home page

  Scenario Outline: Navigate to module, access Try Editor, and run code
    Given the user is on the "Array" page after sign-in
    When the user clicks the "<Module Button>" button
    Then the user should be redirected to the "<Module Name>" page
    And the user clicks the "Try Here" button
    Then the user should be redirected to the "Try Editor" page
    When the user enters "<Code>" in the editor and clicks the "Run" button
    Then the system should display "<Result>"

    Examples:
      | Module Name                | Module Button              | Code         | Result              |
      | Arrays in Python           | Arrays in Python           | ""           | error alert message |
      | Arrays in Python           | Arrays in Python           | invalid_code | error alert message |
      | Arrays in Python           | Arrays in Python           | print("Hi")  | Hi output           |
      | Arrays Using List          | Arrays Using List          | ""           | error alert message |
      | Arrays Using List          | Arrays Using List          | invalid_code | error alert message |
      | Arrays Using List          | Arrays Using List          | print("Hi")  | Hi output           |
      | Basic Operations in Lists  | Basic Operations in Lists  | ""           | error alert message |
      | Basic Operations in Lists  | Basic Operations in Lists  | invalid_code | error alert message |
      | Basic Operations in Lists  | Basic Operations in Lists  | print("Hi")  | Hi output           |
      | Applications of Array      | Applications of Array      | ""           | error alert message |
      | Applications of Array      | Applications of Array      | invalid_code | error alert message |
      | Applications of Array      | Applications of Array      | print("Hi")  | Hi output           |

  Scenario Outline: Navigate to Practice Questions from Array-related pages
    Given the user is on the "<array_page>" page
    When the user clicks the "Practice Questions" button
    Then the user should be redirected to the "Practice" page

    Examples:
      | array_page                |
      | Arrays in Python          |
      | Arrays Using List         |
      | Basic Operations in Lists |
      | Applications of Array     |

  Scenario Outline: Navigate to practice question and run/submit code
    Given the user is on the "Practice" page
    When the user selects the "<question>" link
    Then the user should be redirected to the "Question" page

    When the user enters "<code>" in the editor and Clickss the "Run" button
    Then the system should display "<run_result>"

    When the user enters "<submit_code>" in the editor and Clickss the "Submit" button
    Then the system should display "<submit_result>"

    Examples:
      | question                      | code         | run_result            | submit_code   | submit_result                    |
      | Search the array              | invalid_code | error alert message   | invalid_code  | Error occurred during submission |
      | Search the array              | valid_code   | output                | valid_code    | Submission successful            |
      | Max Consecutive Ones          | invalid_code | error alert message   | invalid_code  | Error occurred during submission |
      | Max Consecutive Ones          | valid_code   | output                | valid_code    | Submission successful            |
      | Find Numbers with Even Digits | invalid_code | error alert message   | invalid_code  | Error occurred during submission |
      | Find Numbers with Even Digits | valid_code   | output                | valid_code    | Submission successful            |
      | Squares of a Sorted Array     | invalid_code | error alert message   | invalid_code  | Error occurred during submission |
      | Squares of a Sorted Array     | valid_code   | output                | valid_code    | Submission successful            |
















