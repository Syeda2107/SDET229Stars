Feature: Home Page Functionality of DsAlgo Application

  Background:
    Given User launches the browser and enters the DsAlgo application url
    When the user clicks on "Get Started" button in the DsAlgo Portal
    Then the page title should be displayed as "NumpyNinja"

  Scenario: Verify that the user can view the Data Structures dropdown options
    When the user clicks on Data Structures dropdown in the Home page
    Then the user should able to see 6 options - "Arrays","LinkedList","Stack","Queue","Tree","Graph" in dropdown menu

  Scenario: Verify that the warning message is displayed when selecting Arrays option from the Data Structures dropdown without signin
    When the user selects "Arrays" option from Data Structures dropdown
    Then the user should able to see the warning message as "You are not logged in"

  Scenario: Verify that the warning message is displayed when selecting Linked List option from the Data Structures dropdown without signin
    When the user selects "Linked List" option from Data Structures dropdown
    Then the user should able to see the warning message as "You are not logged in"

  Scenario: Verify that the warning message is displayed when selecting Stack option from the Data Structures dropdown without signin
    When the user selects "Stack" option from Data Structures dropdown
    Then the user should able to see the warning message as "You are not logged in"

  Scenario: Verify that the warning message is displayed when selecting Queue option from the Data Structures dropdown without signin
    When the user selects "Queue" option from Data Structures dropdown
    Then the user should able to see the warning message as "You are not logged in"

  Scenario: Verify that the warning message is displayed when selecting Tree option from the Data Structures dropdown without signin
    When the user selects "Tree" option from Data Structures dropdown
    Then the user should able to see the warning message as "You are not logged in"

  Scenario: Verify that the warning message is displayed when selecting Graph option from the Data Structures dropdown without signin
    When the user selects "Graph" option from Data Structures dropdown
    Then the user should able to see the warning message as "You are not logged in"

  Scenario: Verify that the warning message is displayed when user clicks on Get Started button of Data Structures - Introduction module without signin
    When the user clicks on Get Started button of "Data Structures - Introduction" module
    Then the user should able to see the warning message as "You are not logged in"

  Scenario: Verify that the warning message is displayed when user clicks on Get Started button of Array module without signin
    When the user clicks on Get Started button of "Array" module
    Then the user should able to see the warning message as "You are not logged in"

  Scenario: Verify that the warning message is displayed when user clicks on Get Started button of Linked List module without signin
    When the user clicks on Get Started button of "Linked List" module
    Then the user should able to see the warning message as "You are not logged in"

  Scenario: Verify that the warning message is displayed when user clicks on Get Started button of Stack module without signin
    When the user clicks on Get Started button of "Stack" module
    Then the user should able to see the warning message as "You are not logged in"

  Scenario: Verify that the warning message is displayed when user clicks on Get Started button of Queue module without signin
    When the user clicks on Get Started button of "Queue" module
    Then the user should able to see the warning message as "You are not logged in"

  Scenario: Verify that the warning message is displayed when user clicks on Get Started button of Tree module without signin
    When the user clicks on Get Started button of "Tree" module
    Then the user should able to see the warning message as "You are not logged in"

  Scenario: Verify that the warning message is displayed when user clicks on Get Started button of Graph module without signin
    When the user clicks on Get Started button of "Graph" module
    Then the user should able to see the warning message as "You are not logged in"