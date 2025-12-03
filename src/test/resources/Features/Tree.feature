Feature:Tree Functionality of Dsalgo Application

Background:
  Given User launches the browser and enters the DsAlgo application url
  When the user clicks on Get Started button in the DsAlgo Portal
  And user clicks on Sign in link in the Home page
  Then the page title should be displayed as "Login"
  When the user enters valid Username and Password in the Login form
  | Username         | Password  |
  |sdet229stars@gmail.com | test@1234 |
  And user clicks on Login button
  Then the page title should be displayed as "NumpyNinja"

  Scenario: Verify that user is able to navigate to Tree data structure page
    Given the user is in the Home page after Sign in
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"

    # "Overview of Trees" page

  Scenario: Verify that user is able to navigate to Overview of Trees page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When the user clicks Overview of Trees button in the Tree page
    Then  the page title should be displayed as "Overview of Trees"

  Scenario: Verify that user is able to navigate to try Editor page for Overview of Trees page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When the user clicks Overview of Trees button in the Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks Try Here button in Overview of Trees page
    Then the page title should be displayed as "Assessment"
    And the page url should be displayed as "https://dsportalapp.herokuapp.com/tryEditor"

  Scenario: Verify that user is able to see output for valid python code for "Overview of Trees" page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When the user clicks Overview of Trees button in the Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks Try Here button in Overview of Trees page
    Then the page title should be displayed as "Assessment"
    When the user enters "print ("Hello")" in the Editor
    And  click the Run Button
    Then the user should get output as "Hello" in the console

  Scenario Outline: Verify that user receives error message for invalid python code for Overview of Trees page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When the user clicks Overview of Trees button in the Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks Try Here button in Overview of Trees page
    Then the page title should be displayed as "Assessment"
    When  the user enters "<Python Code>" in the editor
    And  click the Run Button
    Then the user should get pop up message as "<Popup Message>"
    Examples:
      | Python Code      | Popup Message                                   |
      | " print 'Hello'" | SyntaxError: bad input on line 1                |
      | print  Hello     | NameError: name 'Hello' is not defined on line 1|
      | $$$$             | NameError: name 'Hello' is not defined on line 1|

  Scenario Outline: Verify that user receives error when click on Run button without entering code for Overview of Trees page
    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When the user clicks Overview of Trees button in the Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks Try Here button in Overview of Trees page
    Then the page title should be displayed as "Assessment"
    And  page url should be displayed as "<Expected Url>"
    When the user enters "<Python Code>" in the editor
    And  user click the Run button
    Then the user should not able to see output below Run button
    Examples:
      | Expected Url                                | Python Code | Popup Message                    |
      | https://dsportalapp.herokuapp.com/tryEditor | Python Code | SyntaxError: bad input on line 1 |

  Scenario: Verify that user is able to navigate to Practice Questions Page for Overview of Trees page

    When the user clicks the Get Started button in Tree Panel
    Then the page title should be displayed as "Tree"
    When the user clicks Overview of Trees button in the Tree page
    Then  the page title should be displayed as "Overview of Trees"
    When the user clicks Practice Questions button after scrolling down in the Overview of Trees page
    Then the page title should be displayed as "Practice Questions"

# Terminologies page

  Scenario: Verify that user is able to navigate to "Tree" data structure page
    Given The user is in the Home page after Sign in
    When The user clicks the "Getting Started" button in Tree Panel
    Then The user be directed to "Tree" Data Structure Page

  Scenario: Verify that user is able to navigate to "Terminologies" page
    Given The user is in the "Tree" page after Sign in
    When The user clicks "Terminologies" button
    Then The user should be redirected to "Terminologies" page

  Scenario: Verify that user is able to navigate to "try Editor" page for "Terminologies" page
    Given The user is on the "Terminologies" page
    When The user clicks "Try Here" button in Terminologies page
    Then The user should be redirected to a page having an try Editor with a Run button to test

  Scenario: Verify that user receives error when click on Run button without entering code for "Terminologies" page
    Given The user is in the tryEditor page
    When The user clicks the Run Button without entering the code in the Editor
    Then The user should be able to see an error message in alert window below

  Scenario: Verify that user receives error for invalid python code for "Terminologies" page
    Given The user is in the tryEditor page
    When The user write the invalid code in Editor and click the Run Button
    Then The user should able to see an error message in alert window

  Scenario: Verify that user is able to see output for valid python code for "Terminologies" page
    Given The user is in the tryEditor page
    When The user write the valid code in Editor and click the Run Button
    Then user should able to see output in the console

  Scenario: Verify that user is able to navigate to "Practice Questions" Page for "Terminologies" page
    Given The user is in the Tree page after Sign in
    When The user clicks "Practice Questions" button
    Then The user should be redirected to "Practice" page

# Types of Trees page

  Scenario: Verify that user is able to navigate to "Tree" data structure page
    Given The user is in the Home page after Sign in
    When The user clicks the "Getting Started" button in Tree Panel
    Then The user be directed to "Tree" Data Structure Page

  Scenario: Verify that user is able to navigate to "Types of Trees" page
    Given The user is in the "Tree" page after Sign in
    When The user clicks "Types of Trees" button
    Then The user should be redirected to "Types of Trees" page

  Scenario: Verify that user is able to navigate to "try Editor" page for "Types of Trees" page
    Given The user is on the "Types of Trees" page
    When The user clicks "Try Here" button in Types of Trees page
    Then The user should be redirected to a page having an try Editor with a Run button to test

  Scenario: Verify that user receives error when click on Run button without entering code for "Types of Trees" page
    Given The user is in the tryEditor page
    When The user clicks the Run Button without entering the code in the Editor
    Then The user should be able to see an error message in alert window below

  Scenario: Verify that user receives error for invalid python code for "Types of Trees" page
    Given The user is in the tryEditor page
    When The user write the invalid code in Editor and click the Run Button
    Then The user should able to see an error message in alert window

  Scenario: Verify that user is able to see output for valid python code for "Types of Trees" page
    Given The user is in the tryEditor page
    When The user write the valid code in Editor and click the Run Button
    Then user should able to see output in the console

  Scenario: Verify that user is able to navigate to "Practice Questions" Page for "Types of Trees" page
    Given The user is in the Tree page after Sign in
    When The user clicks "Practice Questions" button
    Then The user should be redirected to "Practice" page

# Tree Traversals

  Scenario: Verify that user is able to navigate to "Tree" data structure page
    Given The user is in the Home page after Sign in
    When The user clicks the "Getting Started" button in Tree Panel
    Then The user be directed to "Tree" Data Structure Page

  Scenario: Verify that user is able to navigate to "Tree Traversals" page
    Given The user is in the "Tree" page after Sign in
    When The user clicks "Tree Traversals" button
    Then The user should be redirected to "Tree Traversals" page

  Scenario: Verify that user is able to navigate to "try Editor" page for "Tree Traversals" page
    Given The user is on the "Tree Traversals" page
    When The user clicks "Try Here" button in Tree Traversals page
    Then The user should be redirected to a page having an try Editor with a Run button to test

  Scenario: Verify that user receives error when click on Run button without entering code for "Tree Traversals" page
    Given The user is in the tryEditor page
    When The user clicks the Run Button without entering the code in the Editor
    Then The user should be able to see an error message in alert window below

  Scenario: Verify that user receives error for invalid python code for "Tree Traversals" page
    Given The user is in the tryEditor page
    When The user write the invalid code in Editor and click the Run Button
    Then The user should able to see an error message in alert window

  Scenario: Verify that user is able to see output for valid python code for "Tree Traversals" page
    Given The user is in the tryEditor page
    When The user write the valid code in Editor and click the Run Button
    Then user should able to see output in the console

  Scenario: Verify that user is able to navigate to "Practice Questions" Page for "Tree Traversals" page
    Given The user is in the Tree page after Sign in
    When The user clicks "Practice Questions" button
    Then The user should be redirected to "Practice" page

# Traversals-Illustration

  Scenario: Verify that user is able to navigate to "Tree" data structure page
    Given The user is in the Home page after Sign in
    When The user clicks the "Getting Started" button in Tree Panel
    Then The user be directed to "Tree" Data Structure Page

  Scenario: Verify that user is able to navigate to "Traversals-Illustration" page
    Given The user is in the "Tree" page after Sign in
    When The user clicks "Traversals-Illustration" button
    Then The user should be redirected to "Tree Traversals" page

  Scenario: Verify that user is able to navigate to "try Editor" page for "Traversals-Illustration" page
    Given The user is on the "Traversals-Illustration" page
    When The user clicks "Try Here" button in Traversals-Illustration page
    Then The user should be redirected to a page having an try Editor with a Run button to test

  Scenario: Verify that user receives error when click on Run button without entering code for "Traversals-Illustration" page
    Given The user is in the tryEditor page
    When The user clicks the Run Button without entering the code in the Editor
    Then The user should be able to see an error message in alert window below

  Scenario: Verify that user receives error for invalid python code for "Traversals-Illustration" page
    Given The user is in the tryEditor page
    When The user write the invalid code in Editor and click the Run Button
    Then The user should able to see an error message in alert window

  Scenario: Verify that user is able to see output for valid python code for "Traversals-Illustration" page
    Given The user is in the tryEditor page
    When The user write the valid code in Editor and click the Run Button
    Then user should able to see output in the console

  Scenario: Verify that user is able to navigate to "Practice Questions" Page for "Traversals-Illustration" page
    Given The user is in the Tree page after Sign in
    When The user clicks "Practice Questions" button
    Then The user should be redirected to "Practice" page

# Binary Trees

  Scenario: Verify that user is able to navigate to "Tree" data structure page
    Given The user is in the Home page after Sign in
    When The user clicks the "Getting Started" button in Tree Panel
    Then The user be directed to "Tree" Data Structure Page

  Scenario: Verify that user is able to navigate to "Binary Trees" page
    Given The user is in the "Tree" page after Sign in
    When The user clicks "Binary Trees" button
    Then The user should be redirected to "Binary Trees" page

  Scenario: Verify that user is able to navigate to "try Editor" page for "Binary Trees" page
    Given The user is on the "Binary Trees" page
    When The user clicks "Try Here" button in Binary Trees page
    Then The user should be redirected to a page having an try Editor with a Run button to test

  Scenario: Verify that user receives error when click on Run button without entering code for "Binary Trees" page
    Given The user is in the tryEditor page
    When The user clicks the Run Button without entering the code in the Editor
    Then The user should be able to see an error message in alert window below

  Scenario: Verify that user receives error for invalid python code for "Binary Trees" page
    Given The user is in the tryEditor page
    When The user write the invalid code in Editor and click the Run Button
    Then The user should able to see an error message in alert window

  Scenario: Verify that user is able to see output for valid python code for "Binary Trees" page
    Given The user is in the tryEditor page
    When The user write the valid code in Editor and click the Run Button
    Then user should able to see output in the console

  Scenario: Verify that user is able to navigate to "Practice Questions" Page for "Binary Trees" page
    Given The user is in the Tree page after Sign in
    When The user clicks "Practice Questions" button
    Then The user should be redirected to "Practice" page

#Types of Binary Trees

  Scenario: Verify that user is able to navigate to "Tree" data structure page
    Given The user is in the Home page after Sign in
    When The user clicks the "Getting Started" button in Tree Panel
    Then The user be directed to "Tree" Data Structure Page

  Scenario: Verify that user is able to navigate to "Types of Binary Trees" page
    Given The user is in the "Tree" page after Sign in
    When The user clicks "Types of Binary Trees" button
    Then The user should be redirected to "Types of Binary Trees" page

  Scenario: Verify that user is able to navigate to "try Editor" page for "Types of Binary Trees" page
    Given The user is on the "Types of Binary Trees" page
    When The user clicks "Try Here" button in Types of Binary Trees page
    Then The user should be redirected to a page having an try Editor with a Run button to test

  Scenario: Verify that user receives error when click on Run button without entering code for "Binary Trees" page
    Given The user is in the tryEditor page
    When The user clicks the Run Button without entering the code in the Editor
    Then The user should be able to see an error message in alert window below

  Scenario: Verify that user receives error for invalid python code for "Types of Binary Trees" page
    Given The user is in the tryEditor page
    When The user write the invalid code in Editor and click the Run Button
    Then The user should able to see an error message in alert window

  Scenario: Verify that user is able to see output for valid python code for "Types of Binary Trees" page
    Given The user is in the tryEditor page
    When The user write the valid code in Editor and click the Run Button
    Then user should able to see output in the console

  Scenario: Verify that user is able to navigate to "Practice Questions" Page for "Types of Binary Trees" page
    Given The user is in the Tree page after Sign in
    When The user clicks "Practice Questions" button
    Then The user should be redirected to "Practice" page

# Implementation in Python

  Scenario: Verify that user is able to navigate to "Tree" data structure page
    Given The user is in the Home page after Sign in
    When The user clicks the "Getting Started" button in Tree Panel
    Then The user be directed to "Tree" Data Structure Page

  Scenario: Verify that user is able to navigate to "Implementation in Python" page
    Given The user is in the "Tree" page after Sign in
    When The user clicks "Implementation in Python" button
    Then The user should be redirected to "Implementation in Python" page

  Scenario: Verify that user is able to navigate to "try Editor" page for "Implementation in Python" page
    Given The user is on the "Implementation in Python" page
    When The user clicks "Try Here" button in Implementation in Python page
    Then The user should be redirected to a page having an try Editor with a Run button to test

  Scenario: Verify that user receives error when click on Run button without entering code for "Implementation in Python" page
    Given The user is in the tryEditor page
    When The user clicks the Run Button without entering the code in the Editor
    Then The user should be able to see an error message in alert window below

  Scenario: Verify that user receives error for invalid python code for "Implementation in Python" page
    Given The user is in the tryEditor page
    When The user write the invalid code in Editor and click the Run Button
    Then The user should able to see an error message in alert window

  Scenario: Verify that user is able to see output for valid python code for "Implementation in Python" page
    Given The user is in the tryEditor page
    When The user write the valid code in Editor and click the Run Button
    Then user should able to see output in the console

  Scenario: Verify that user is able to navigate to "Practice Questions" Page for "Implementation in Python" page
    Given The user is in the Tree page after Sign in
    When The user clicks "Practice Questions" button
    Then The user should be redirected to "Practice" page

# Binary Tree Traversals

  Scenario: Verify that user is able to navigate to "Tree" data structure page
    Given The user is in the Home page after Sign in
    When The user clicks the "Getting Started" button in Tree Panel
    Then The user be directed to "Tree" Data Structure Page

  Scenario: Verify that user is able to navigate to "Binary Tree Traversals" page
    Given The user is in the "Tree" page after Sign in
    When The user clicks "Binary Tree Traversals" button
    Then The user should be redirected to "Binary Tree Traversals" page

  Scenario: Verify that user is able to navigate to "try Editor" page for "Binary Tree Traversals" page
    Given The user is on the "Binary Tree Traversals" page
    When The user clicks "Try Here" button in Binary Tree Traversals page
    Then The user should be redirected to a page having an try Editor with a Run button to test

  Scenario: Verify that user receives error when click on Run button without entering code for "Binary Tree Traversals" page
    Given The user is in the tryEditor page
    When The user clicks the Run Button without entering the code in the Editor
    Then The user should be able to see an error message in alert window below

  Scenario: Verify that user receives error for invalid python code for "Binary Tree Traversals" page
    Given The user is in the tryEditor page
    When The user write the invalid code in Editor and click the Run Button
    Then The user should able to see an error message in alert window

  Scenario: Verify that user is able to see output for valid python code for "Binary Tree Traversals" page
    Given The user is in the tryEditor page
    When The user write the valid code in Editor and click the Run Button
    Then user should able to see output in the console

  Scenario: Verify that user is able to navigate to "Practice Questions" Page for "Binary Tree Traversals" page
    Given The user is in the Tree page after Sign in
    When The user clicks "Practice Questions" button
    Then The user should be redirected to "Practice" page

# Implementation of Binary Trees

  Scenario: Verify that user is able to navigate to "Tree" data structure page
    Given The user is in the Home page after Sign in
    When The user clicks the "Getting Started" button in Tree Panel
    Then The user be directed to "Tree" Data Structure Page

  Scenario: Verify that user is able to navigate to "Implementation of Binary Trees" page
    Given The user is in the "Tree" page after Sign in
    When The user clicks "Implementation of Binary Trees" button
    Then The user should be redirected to "Implementation of Binary Trees" page

  Scenario: Verify that user is able to navigate to "try Editor" page for "Implementation of Binary Trees" page
    Given The user is on the "Implementation of Binary Trees" page
    When The user clicks "Try Here" button in Implementation of Binary Trees page
    Then The user should be redirected to a page having an try Editor with a Run button to test

  Scenario: Verify that user receives error when click on Run button without entering code for "Implementation of Binary Trees" page
    Given The user is in the tryEditor page
    When The user clicks the Run Button without entering the code in the Editor
    Then The user should be able to see an error message in alert window below

  Scenario: Verify that user receives error for invalid python code for "Implementation of Binary Trees" page
    Given The user is in the tryEditor page
    When The user write the invalid code in Editor and click the Run Button
    Then The user should able to see an error message in alert window

  Scenario: Verify that user is able to see output for valid python code for "Implementation of Binary Trees" page
    Given The user is in the tryEditor page
    When The user write the valid code in Editor and click the Run Button
    Then user should able to see output in the console

  Scenario: Verify that user is able to navigate to "Practice Questions" Page for "Implementation of Binary Trees" page
    Given The user is in the Tree page after Sign in
    When The user clicks "Practice Questions" button
    Then The user should be redirected to "Practice" page

# Applications of Binary trees

  Scenario: Verify that user is able to navigate to "Tree" data structure page
    Given The user is in the Home page after Sign in
    When The user clicks the "Getting Started" button in Tree Panel
    Then The user be directed to "Tree" Data Structure Page

  Scenario: Verify that user is able to navigate to "Applications of Binary trees" page
    Given The user is in the "Tree" page after Sign in
    When The user clicks "Applications of Binary trees" button
    Then The user should be redirected to "Applications of Binary trees" page

  Scenario: Verify that user is able to navigate to "try Editor" page for "Applications of Binary trees" page
    Given The user is on the "Applications of Binary trees" page
    When The user clicks "Try Here" button in Applications of Binary trees page
    Then The user should be redirected to a page having an try Editor with a Run button to test

  Scenario: Verify that user receives error when click on Run button without entering code for "Applications of Binary trees" page
    Given The user is in the tryEditor page
    When The user clicks the Run Button without entering the code in the Editor
    Then The user should be able to see an error message in alert window below

  Scenario: Verify that user receives error for invalid python code for "Applications of Binary trees" page
    Given The user is in the tryEditor page
    When The user write the invalid code in Editor and click the Run Button
    Then The user should able to see an error message in alert window

  Scenario: Verify that user is able to see output for valid python code for "Applications of Binary trees" page
    Given The user is in the tryEditor page
    When The user write the valid code in Editor and click the Run Button
    Then user should able to see output in the console

  Scenario: Verify that user is able to navigate to "Practice Questions" Page for "Applications of Binary trees" page
    Given The user is in the Tree page after Sign in
    When The user clicks "Practice Questions" button
    Then The user should be redirected to "Practice" page

# Binary Search Trees

  Scenario: Verify that user is able to navigate to "Tree" data structure page
    Given The user is in the Home page after Sign in
    When The user clicks the "Getting Started" button in Tree Panel
    Then The user be directed to "Tree" Data Structure Page

  Scenario: Verify that user is able to navigate to "Binary Search Trees" page
    Given The user is in the "Tree" page after Sign in
    When The user clicks "Binary Search Trees" button
    Then The user should be redirected to "Binary Search Trees" page

  Scenario: Verify that user is able to navigate to "try Editor" page for "Binary Search Trees" page
    Given The user is on the "Binary Search Trees" page
    When The user clicks "Try Here" button in Binary Search Trees page
    Then The user should be redirected to a page having an try Editor with a Run button to test

  Scenario: Verify that user receives error when click on Run button without entering code for "Binary Search Trees" page
    Given The user is in the tryEditor page
    When The user clicks the Run Button without entering the code in the Editor
    Then The user should be able to see an error message in alert window below

  Scenario: Verify that user receives error for invalid python code for "Binary Search Trees" page
    Given The user is in the tryEditor page
    When The user write the invalid code in Editor and click the Run Button
    Then The user should able to see an error message in alert window

  Scenario: Verify that user is able to see output for valid python code for "Binary Search Trees" page
    Given The user is in the tryEditor page
    When The user write the valid code in Editor and click the Run Button
    Then user should able to see output in the console

  Scenario: Verify that user is able to navigate to "Practice Questions" Page for "Binary Search Trees" page
    Given The user is in the Tree page after Sign in
    When The user clicks "Practice Questions" button
    Then The user should be redirected to "Practice" page

# Implementation of BST

  Scenario: Verify that user is able to navigate to "Tree" data structure page
    Given The user is in the Home page after Sign in
    When The user clicks the "Getting Started" button in Tree Panel
    Then The user be directed to "Tree" Data Structure Page

  Scenario: Verify that user is able to navigate to "Implementation of BST" page
    Given The user is in the "Tree" page after Sign in
    When The user clicks "Implementation of BST" button
    Then The user should be redirected to "Implementation of BST" page

  Scenario: Verify that user is able to navigate to "try Editor" page for "Implementation of BST" page
    Given The user is on the "Implementation of BST" page
    When The user clicks "Try Here" button in Implementation of BST page
    Then The user should be redirected to a page having an try Editor with a Run button to test

  Scenario: Verify that user receives error when click on Run button without entering code for "Implementation of BST" page
    Given The user is in the tryEditor page
    When The user clicks the Run Button without entering the code in the Editor
    Then The user should be able to see an error message in alert window below

  Scenario: Verify that user receives error for invalid python code for "Implementation of BST" page
    Given The user is in the tryEditor page
    When The user write the invalid code in Editor and click the Run Button
    Then The user should able to see an error message in alert window

  Scenario: Verify that user is able to see output for valid python code for "Implementation of BST" page
    Given The user is in the tryEditor page
    When The user write the valid code in Editor and click the Run Button
    Then user should able to see output in the console

  Scenario: Verify that user is able to navigate to "Practice Questions" Page for "Implementation of BST" page
    Given The user is in the Tree page after Sign in
    When The user clicks "Practice Questions" button
    Then The user should be redirected to "Practice" page





