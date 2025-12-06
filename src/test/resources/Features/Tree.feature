Feature: Tree Functionality of Dsalgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When  the user clicks on Get Started button in the DsAlgo Portal
    And   user clicks on Sign in link in the Home page
    Then  the page title should be displayed as "Login"
    When  the user enters valid Username and Password in the Login form
      | Username              | Password  |
      |sdet229stars@gmail.com | test@1234 |
    And  user clicks on Login button
    Then the page title should be displayed as "NumpyNinja"

#--------------------------------------------------------------------------------------------------------------

  Scenario: Verify that user is navigated to Tree page
    Given the user is in the Home page after Sign in
    When  the user clicks the Get Started button in Tree Panel
    Then  the user should be directed to the "Tree" Page

# "Overview of Trees" page

  Scenario: Verify that user is able to navigate to Overview of Trees page
    Given the user is in the "Tree page" after Sign in
    When  the user clicks the Overview of Trees link
    Then  the user should be directed to the "Overview of Trees" Page

  Scenario: Verify that user is able to navigate to try Editor page for Overview of Trees page
    Given the user is in the "overview of trees" after logged in
    When  the user clicks "Try here" button in the Overview of Trees page
    Then  the user should be redirected to a page having tryeditor with a Run button

  Scenario Outline: Verify that user is able to see output for valid python code for "Overview of Trees" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<output>" in the console
    Examples:
      |Python Code    | Output |
      |print("Hello") | Hello  |

  Scenario Outline: Verify that user is able to see output for invalid python code for "Overview of Trees" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<Popup Message>"
    Examples:
      | Python Code       | Popup Message                                   |
      | " print 'Hello'"  | SyntaxError: bad input on line 1                |
      | print  Hello      | NameError: name 'Hello' is not defined on line 1 |

  Scenario: Verify that user receives error when click on Run button without entering code for Overview of Trees page
    Given the user is in the tryeditor page
    When  the user clicks the Run button without entering code in the editor
    Then  the user should not be able to see output

  Scenario: Verify that user is able to navigate to Practice Questions Page for Overview of Trees page
    Given the user is in the "overview of trees" after logged in
    When  the user clicks Practice Questions button after scrolling down in the Overview of Trees page
    Then  the page title should be displayed as "Practice Questions"

#  Terminologies page

  Scenario: Verify that user is able to navigate to Terminologies page
    Given the user is in the "Tree page" after Sign in
    When  the user clicks the Terminologies link
    Then  the user should be directed to the "Terminologies" of tree Page

  Scenario: Verify that user is able to navigate to try Editor page for Terminologies page
    Given the user is in the "Terminologies" after logged in
    When  the user clicks "Try here" button in a Terminologies page
    Then  the user should be redirected to a page having try editor with a Run button

  Scenario Outline: Verify that user is able to see output for valid python code for "Terminologies" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<output>" in the console
    Examples:
      |Python Code    | Output |
      |print("Hello") | Hello  |

  Scenario Outline: Verify that user is able to see output for invalid python code for "Terminologies" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<Popup Message>"
    Examples:
      | Python Code       | Popup Message                                   |
      | " print 'Hello'"  | SyntaxError: bad input on line 1                |
      | print  Hello      | NameError: name 'Hello' is not defined on line 1 |

  Scenario: Verify that user receives error when click on Run button without entering code for Terminologies page
    Given the user is in the tryeditor page
    When  the user clicks the Run button without entering code in the editor
    Then  the user should not be able to see output

  Scenario: Verify that user is able to navigate to Practice Questions Page for Terminologies page
    Given the user is in the "Terminologies" after logged in
    When the user clicks Practice Questions button after scrolling down in the Terminologies page
    Then the page title should be displayed as "Practice Questions"

# Types of Trees page

  Scenario: Verify that user is able to navigate to Types of Trees page
    Given the user is in the "Tree page" after Sign in
    When  the user clicks the Types of Trees link
    Then  the user should be directed to the "Types of Trees" of tree Page

  Scenario: Verify that user is able to navigate to try Editor page for Types of Trees page
    Given the user is in the "Types of Trees" after logged in
    When  the user clicks "Try here" button after scrolling down in Types of Trees page
    Then  the user should be redirected to a page having tryeditor with a Run button

  Scenario Outline: Verify that user is able to see output for valid python code for "Types of Trees" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<output>" in the console
    Examples:
      |Python Code    | Output |
      |print("Hello") | Hello  |

  Scenario Outline: Verify that user is able to see output for invalid python code for "Types of Trees" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<Popup Message>"
    Examples:
      | Python Code       | Popup Message                                   |
      | " print 'Hello'"  | SyntaxError: bad input on line 1                |
      | print  Hello      | NameError: name 'Hello' is not defined on line 1 |

  Scenario: Verify that user receives error when click on Run button without entering code for Types of Trees page
    Given the user is in the tryeditor page
    When  the user clicks the Run button without entering code in the editor
    Then  the user should not be able to see output

  Scenario: Verify that user is able to navigate to Practice Questions Page for Types of Trees page
    Given the user is in the "Types of Trees" after logged in
    When the user clicks Practice Questions button after scrolling down in the Types of Trees page
    Then the page title should be displayed as "Practice Questions"

# Tree Traversals

  Scenario: Verify that user is able to navigate to Tree Traversals page
    Given the user is in the "Tree page" after Sign in
    When  the user clicks the Tree Traversals link after scrolling down in the Tree page
    Then  the user should be directed to the "Tree Traversals" of tree Page

  Scenario: Verify that user is able to navigate to try Editor page for Tree Traversals page
    Given the user is in the "Tree Traversals" after logged in
    When  the user clicks "Try here" button after scrolling down in Tree Traversals page
    Then  the user should be redirected to a page having tryeditor with a Run button

  Scenario Outline: Verify that user is able to see output for valid python code for "Tree Traversals" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<output>" in the console
    Examples:
      |Python Code    | Output |
      |print("Hello") | Hello  |

  Scenario Outline: Verify that user is able to see output for invalid python code for "Tree Traversals" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<Popup Message>"
    Examples:
      | Python Code       | Popup Message                                   |
      | " print 'Hello'"  | SyntaxError: bad input on line 1                |
      | print  Hello      | NameError: name 'Hello' is not defined on line 1 |

  Scenario: Verify that user receives error when click on Run button without entering code for Tree Traversals page
    Given the user is in the tryeditor page
    When  the user clicks the Run button without entering code in the editor
    Then  the user should not be able to see output

  Scenario: Verify that user is able to navigate to Practice Questions Page for Tree Traversals page
    Given the user is in the "Tree Traversals" after logged in
    When the user clicks Practice Questions button after scrolling down in the Tree Traversals page
    Then the page title should be displayed as "Practice Questions"

# Traversals-Illustration

  Scenario: Verify that user is able to navigate to Traversals-Illustration page
    Given the user is in the "Tree page" after Sign in
    When  the user clicks the Traversals-Illustration link after scrolling down in the Tree page
    Then  the user should be directed to the "Traversals-Illustration" of tree Page

  Scenario: Verify that user is able to navigate to try Editor page for Traversals-Illustration page
    Given the user is in the "Traversals-Illustration" after logged in
    When  the user clicks "Try here" button after scrolling down in Traversals-Illustration page
    Then  the user should be redirected to a page having tryeditor with a Run button

  Scenario Outline: Verify that user is able to see output for valid python code for "Traversals-Illustration" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<output>" in the console
    Examples:
      |Python Code    | Output |
      |print("Hello") | Hello  |

  Scenario Outline: Verify that user is able to see output for invalid python code for "Traversals-Illustration" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<Popup Message>"
    Examples:
      | Python Code       | Popup Message                                   |
      | " print 'Hello'"  | SyntaxError: bad input on line 1                |
      | print  Hello      | NameError: name 'Hello' is not defined on line 1 |

  Scenario: Verify that user receives error when click on Run button without entering code for Traversals-Illustration page
    Given the user is in the tryeditor page
    When  the user clicks the Run button without entering code in the editor
    Then  the user should not be able to see output

  Scenario: Verify that user is able to navigate to Practice Questions Page for Traversals-Illustration page
    Given the user is in the "Traversals-Illustration" after logged in
    When  the user clicks Practice Questions button after scrolling down in the Traversals-Illustration page
    Then the page title should be displayed as "Practice Questions"

# Binary Trees

  Scenario: Verify that user is able to navigate to Binary Trees page
    Given the user is in the "Tree page" after Sign in
    When  the user clicks the Binary Trees link after scrolling down in the Tree page
    Then  the user should be directed to the "Binary Trees" of tree Page

  Scenario: Verify that user is able to navigate to try Editor page for Binary Trees page
    Given the user is in the "Binary Trees" after logged in
    When  the user clicks "Try here" button after scrolling down in Binary Trees page
    Then  the user should be redirected to a page having tryeditor with a Run button

  Scenario Outline: Verify that user is able to see output for valid python code for "Binary Trees" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<output>" in the console
    Examples:
      |Python Code    | Output |
      |print("Hello") | Hello  |

  Scenario Outline: Verify that user is able to see output for invalid python code for "Binary Trees" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<Popup Message>"
    Examples:
      | Python Code       | Popup Message                                   |
      | " print 'Hello'"  | SyntaxError: bad input on line 1                |
      | print  Hello      | NameError: name 'Hello' is not defined on line 1 |

  Scenario: Verify that user receives error when click on Run button without entering code for Binary Trees page
    Given the user is in the tryeditor page
    When  the user clicks the Run button without entering code in the editor
    Then  the user should not be able to see output

  Scenario: Verify that user is able to navigate to Practice Questions Page for Binary Trees page
    Given the user is in the "Binary Trees" after logged in
    When  the user clicks Practice Questions button after scrolling down in the Binary Trees page
    Then the page title should be displayed as "Practice Questions"

#Types of Binary Trees

  Scenario: Verify that user is able to navigate to Types of Binary Trees page
    Given the user is in the "Tree page" after Sign in
    When  the user clicks the Types of Binary Trees link after scrolling down in the Tree page
    Then  the user should be directed to the "Types of Binary Trees" of tree Page

  Scenario: Verify that user is able to navigate to try Editor page for Types of Binary Trees page
    Given the user is in the "Types of Binary Trees" after logged in
    When  the user clicks "Try here" button after scrolling down in Types of Binary Trees page
    Then  the user should be redirected to a page having tryeditor with a Run button

  Scenario Outline: Verify that user is able to see output for valid python code for "Types of Binary Trees" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<output>" in the console
    Examples:
      |Python Code    | Output |
      |print("Hello") | Hello  |

  Scenario Outline: Verify that user is able to see output for invalid python code for "Types of Binary Trees" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<Popup Message>"
    Examples:
      | Python Code       | Popup Message                                   |
      | " print 'Hello'"  | SyntaxError: bad input on line 1                |
      | print  Hello      | NameError: name 'Hello' is not defined on line 1 |

  Scenario: Verify that user receives error when click on Run button without entering code for Types of Binary Trees page
    Given the user is in the tryeditor page
    When  the user clicks the Run button without entering code in the editor
    Then  the user should not be able to see output

  Scenario: Verify that user is able to navigate to Practice Questions Page for Types of Binary Trees page
    Given the user is in the "Types of Binary Trees" after logged in
    When  the user clicks Practice Questions button after scrolling down in the Types of Binary Trees page
    Then the page title should be displayed as "Practice Questions"

 #Implementation in Python

  Scenario: Verify that user is able to navigate to Implementation in Python page
    Given the user is in the "Tree page" after Sign in
    When  the user clicks the Implementation in Python link after scrolling down in the Tree page
    Then  the user should be directed to the "Implementation in Python" of tree Page

  Scenario: Verify that user is able to navigate to try Editor page for Implementation in Python page
    Given the user is in the "Implementation in Python" after logged in
    When  the user clicks "Try here" button after scrolling down in Implementation in Python page
    Then  the user should be redirected to a page having tryeditor with a Run button

  Scenario Outline: Verify that user is able to see output for valid python code for "Implementation in Python" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<output>" in the console
    Examples:
      |Python Code    | Output |
      |print("Hello") | Hello  |

  Scenario Outline: Verify that user is able to see output for invalid python code for "Implementation in Python" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<Popup Message>"
    Examples:
      | Python Code       | Popup Message                                   |
      | " print 'Hello'"  | SyntaxError: bad input on line 1                |
      | print  Hello      | NameError: name 'Hello' is not defined on line 1 |

  Scenario: Verify that user receives error when click on Run button without entering code for Implementation in Python page
    Given the user is in the tryeditor page
    When  the user clicks the Run button without entering code in the editor
    Then  the user should not be able to see output

  Scenario: Verify that user is able to navigate to Practice Questions Page for Implementation in Python page
    Given the user is in the "Implementation in Python" after logged in
    When  the user clicks Practice Questions button after scrolling down in the Implementation in Python page
    Then the page title should be displayed as "Practice Questions"

# Binary Tree Traversals

  Scenario: Verify that user is able to navigate to Binary Tree Traversals page
    Given the user is in the "Tree page" after Sign in
    When  the user clicks the Binary Tree Traversals link after scrolling down in the Tree page
    Then  the user should be directed to the "Binary Tree Traversals" of tree Page

  Scenario: Verify that user is able to navigate to try Editor page for Binary Tree Traversals page
    Given the user is in the "Binary Tree Traversals" after logged in
    When  the user clicks "Try here" button after scrolling down in Binary Tree Traversals page
    Then  the user should be redirected to a page having tryeditor with a Run button

  Scenario Outline: Verify that user is able to see output for valid python code for "Binary Tree Traversals" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<output>" in the console
    Examples:
      |Python Code    | Output |
      |print("Hello") | Hello  |

  Scenario Outline: Verify that user is able to see output for invalid python code for "Binary Tree Traversals" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<Popup Message>"
    Examples:
      | Python Code       | Popup Message                                   |
      | " print 'Hello'"  | SyntaxError: bad input on line 1                |
      | print  Hello      | NameError: name 'Hello' is not defined on line 1 |

  Scenario: Verify that user receives error when click on Run button without entering code for Binary Tree Traversals page
    Given the user is in the tryeditor page
    When  the user clicks the Run button without entering code in the editor
    Then  the user should not be able to see output

  Scenario: Verify that user is able to navigate to Practice Questions Page for Binary Tree Traversals page
    Given the user is in the "Binary Tree Traversals" after logged in
    When  the user clicks Practice Questions button after scrolling down in the Binary Tree Traversals page
    Then the page title should be displayed as "Practice Questions"

# Implementation of Binary Trees

  Scenario: Verify that user is able to navigate to Implementation of Binary Trees page
    Given the user is in the "Tree page" after Sign in
    When  the user clicks the Implementation of Binary Trees link after scrolling down in the Tree page
    Then  the user should be directed to the "Implementation of Binary Trees" of tree Page

  Scenario: Verify that user is able to navigate to try Editor page for Implementation of Binary Trees page
    Given the user is in the "Implementation of Binary Trees" after logged in
    When  the user clicks "Try here" button after scrolling down in Implementation of Binary Trees page
    Then  the user should be redirected to a page having tryeditor with a Run button

  Scenario Outline: Verify that user is able to see output for valid python code for "Implementation of Binary Trees" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<output>" in the console
    Examples:
      |Python Code    | Output |
      |print("Hello") | Hello  |

  Scenario Outline: Verify that user is able to see output for invalid python code for "Implementation of Binary Trees" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<Popup Message>"
    Examples:
      | Python Code       | Popup Message                                   |
      | " print 'Hello'"  | SyntaxError: bad input on line 1                |
      | print  Hello      | NameError: name 'Hello' is not defined on line 1 |

  Scenario: Verify that user receives error when click on Run button without entering code for Implementation of Binary Trees page
    Given the user is in the tryeditor page
    When  the user clicks the Run button without entering code in the editor
    Then  the user should not be able to see output

  Scenario: Verify that user is able to navigate to Practice Questions Page for Implementation of Binary Trees page
    Given the user is in the "Implementation of Binary Trees" after logged in
    When  the user clicks Practice Questions button after scrolling down in the Implementation of Binary Trees page
    Then the page title should be displayed as "Practice Questions"


#Applications of Binary trees

  Scenario: Verify that user is able to navigate to Applications of Binary trees page
    Given the user is in the "Tree page" after Sign in
    When  the user clicks the Applications of Binary trees link after scrolling down in the Tree page
    Then  the user should be directed to the "Applications of Binary trees" of tree Page

  Scenario: Verify that user is able to navigate to try Editor page for Applications of Binary trees page
    Given the user is in the "Applications of Binary trees" after logged in
    When  the user clicks "Try here" button in the Applications of Binary trees page
    Then  the user should be redirected to a page having tryeditor with a Run button

  Scenario Outline: Verify that user is able to see output for valid python code for "Applications of Binary trees" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<output>" in the console
    Examples:
      |Python Code    | Output |
      |print("Hello") | Hello  |

  Scenario Outline: Verify that user is able to see output for invalid python code for "Applications of Binary trees" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<Popup Message>"
    Examples:
      | Python Code       | Popup Message                                   |
      | " print 'Hello'"  | SyntaxError: bad input on line 1                |
      | print  Hello      | NameError: name 'Hello' is not defined on line 1 |

  Scenario: Verify that user receives error when click on Run button without entering code for Applications of Binary trees page
    Given the user is in the tryeditor page
    When  the user clicks the Run button without entering code in the editor
    Then  the user should not be able to see output

  Scenario: Verify that user is able to navigate to Practice Questions Page for Applications of Binary trees page
    Given the user is in the "Applications of Binary trees" after logged in
    When  the user clicks Practice Questions button after scrolling down in the Applications of Binary trees page
    Then the page title should be displayed as "Practice Questions"

#Binary Search Trees

  Scenario: Verify that user is able to navigate to Binary Search Trees page
    Given the user is in the "Tree page" after Sign in
    When  the user clicks the Binary Search Trees link after scrolling down in the Tree page
    Then  the user should be directed to the "Binary Search Trees" of tree Page

  Scenario: Verify that user is able to navigate to try Editor page for Binary Search Trees page
    Given the user is in the "Binary Search Trees" after logged in
    When  the user clicks "Try here" button after scrolling down in Binary Search Trees page
    Then  the user should be redirected to a page having tryeditor with a Run button

  Scenario Outline: Verify that user is able to see output for valid python code for "Binary Search Trees" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<output>" in the console
    Examples:
      |Python Code    | Output |
      |print("Hello") | Hello  |

  Scenario Outline: Verify that user is able to see output for invalid python code for "Binary Search Trees" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<Popup Message>"
    Examples:
      | Python Code       | Popup Message                                   |
      | " print 'Hello'"  | SyntaxError: bad input on line 1                |
      | print  Hello      | NameError: name 'Hello' is not defined on line 1 |

  Scenario: Verify that user receives error when click on Run button without entering code for Binary Search Trees page
    Given the user is in the tryeditor page
    When  the user clicks the Run button without entering code in the editor
    Then  the user should not be able to see output

  Scenario: Verify that user is able to navigate to Practice Questions Page for Binary Search Trees page
    Given the user is in the "Binary Search Trees" after logged in
    When  the user clicks Practice Questions button after scrolling down in the Binary Search Trees trees page
    Then the page title should be displayed as "Practice Questions"


#Implementation of BST

  Scenario: Verify that user is able to navigate to Implementation of BST page
    Given the user is in the "Tree page" after Sign in
    When  the user clicks the Implementation of BST link after scrolling down in the Tree page
    Then  the user should be directed to the "Implementation of BST" of tree Page

  Scenario: Verify that user is able to navigate to try Editor page for Implementation of BST page
    Given the user is in the "Implementation of BST" after logged in
    When  the user clicks "Try here" button in the Implementation of BST page
    Then  the user should be redirected to a page having tryeditor with a Run button

  Scenario Outline: Verify that user is able to see output for valid python code for "Implementation of BST" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<output>" in the console
    Examples:
      |Python Code    | Output |
      |print("Hello") | Hello  |

  Scenario Outline: Verify that user is able to see output for invalid python code for "Implementation of BST" page
    Given the user is in the tryeditor page
    When  the user enters "<Python Code >" in the editor
    And   the user clicks the Run button
    Then  the user should get "<Popup Message>"
    Examples:
      | Python Code       | Popup Message                                   |
      | " print 'Hello'"  | SyntaxError: bad input on line 1                |
      | print  Hello      | NameError: name 'Hello' is not defined on line 1 |

  Scenario: Verify that user receives error when click on Run button without entering code for Implementation of BST page
    Given the user is in the tryeditor page
    When  the user clicks the Run button without entering code in the editor
    Then  the user should not be able to see output

  Scenario: Verify that user is able to navigate to Practice Questions Page for Implementation of BST page
    Given the user is in the "Implementation of BST" after logged in
    When  the user clicks Practice Questions button after scrolling down in the Implementation of BST trees page
    Then the page title should be displayed as "Practice Questions"

