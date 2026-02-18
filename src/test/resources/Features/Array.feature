Feature: Array module navigation and Try Editor

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

  Scenario Outline: Navigate to Array submodule, access Try Editor, and run code
    When the user clicks on Get Started button Array
    And the user clicks on the Array submodule "<Submodule>"
    And the user clicks on Try Here button on Array submodule
    And the user enters code from "<SheetName>" and <RowNumber> in Try Editor on Array submodule and clicks Run
    Then the Try Editor on Array submodule should display result from "<SheetName>" and <RowNumber>

    Examples:
      | Submodule                 | SheetName     | RowNumber |
      | Arrays in Python          | Array_Try     | 0         |
      | Arrays in Python          | Array_Try     | 1         |
      | Arrays Using List         | Array_Try     | 2         |
      | Arrays Using List         | Array_Try     | 3         |
      | Basic Operations in Lists | Array_Try     | 4         |
      | Basic Operations in Lists | Array_Try     | 5         |
      | Applications of Array     | Array_Try     | 6         |
      | Applications of Array     | Array_Try     | 7         |

  Scenario Outline: Practice questions on Array submodule run and submit
    When the user clicks on Get Started button Array
    Given the user is on the "<Submodule Name>" page for Array module
    When the user clicks the Array Practice question "Practice Questions" button
    And the user selects the Array Practice question "<Question>" link

    When the user enters run code from "<SheetName>" and <RowNumber> and clicks Run on Array Practice question
    Then the Practice Question system should display run result from "<SheetName>" and <RowNumber> for on Array Practice question

    When the user enters submit code from "<SheetName>" and <RowNumber> and clicks the "Submit" button
    Then the system should display submit result from "<SheetName>" and <RowNumber> for on Array Practice question

    Examples:
      | Submodule Name            | Question                                | SheetName              | RowNumber |
      | Arrays in Python          | Search the array                        | arrayPracticeQuestion  | 0         |
      | Arrays in Python          | Search the array                        | arrayPracticeQuestion  | 1         |
      | Arrays Using List         | Max Consecutive Ones                    | arrayPracticeQuestion  | 2         |
      | Arrays Using List         | Max Consecutive Ones                    | arrayPracticeQuestion  | 3         |
      | Basic Operations in Lists | Find Numbers with Even Number of Digits | arrayPracticeQuestion  | 4         |
      | Basic Operations in Lists | Find Numbers with Even Number of Digits | arrayPracticeQuestion  | 5         |
      | Applications of Array     | Squares of a Sorted Array               | arrayPracticeQuestion  | 6         |
      | Applications of Array     | Squares of a Sorted Array               | arrayPracticeQuestion  | 7         |

