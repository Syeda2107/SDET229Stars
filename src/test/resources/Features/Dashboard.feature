Feature: Dashboard Functionality in DsAlgo Portal

  Background:
    Given User launches the browser and enters the DsAlgo application url

  Scenario: Verify that the user opens the DsAlgo portal
    Then the page title should be displayed as "Numpy Ninja"

  Scenario: Verify the Dashboard page text in the DsAlgo portal
    Then the user should see text on DsAlgo portal as "Preparing for the Interviews"

  Scenario: Verify the Get Started button in the DsAlgo portal
    Then the user should see "Get Started" button on the DsAlgo portal

  Scenario: Verify that the NumpyNinja is displayed after clicking on the Get Started button of DsAlgo portal
    When the user clicks on Get Started button in the DsAlgo Portal
    Then the user should be navigated to the Home page which displays the "NumpyNinja" on the top left corner

  Scenario: Verify that the DataStructures-dropdown is displayed after clicking on the Get Started button of DsAlgo portal
    When the user clicks on Get Started button in the DsAlgo Portal
    Then the user should be navigated to the Home page which displays the DataStructures - dropdown with the following options on the top left corner
      | Arrays      |
      | Linked List |
      | Stack       |
      | Queue       |
      | Tree        |
      | Graph       |

  Scenario: Verify that the Register link is displayed after clicking on the Get Started button of DsAlgo portal
    When the user clicks on Get Started button in the DsAlgo Portal
    Then the user should be navigated to the Home page which displays the "Register" link on the top right corner

  Scenario: Verify that the Sign in link is displayed after clicking on the "Get Started" button of DsAlgo portal
    When the user clicks on Get Started button in the DsAlgo Portal
    Then the user should be navigated to the Home page which displays the "Sign in" link on the top right corner

  Scenario: Verify that the DataStructures - Introduction Module with Get Started button is displayed after clicking on the Get Started button of DsAlgo portal
    When the user clicks on Get Started button in the DsAlgo Portal
    Then the user should be navigated to the Home page which displays the "Data Structures-Introduction" module with "Get Started" button

  Scenario: Verify that the Array Module with Get Started button is displayed after clicking on the Get Started button of DsAlgo portal
    When the user clicks on Get Started button in the DsAlgo Portal
    Then the user should be navigated to the Home page which displays the "Array" module with "Get Started" button

  Scenario: Verify that the Linked List Module with Get Started button is displayed after clicking on the Get Started button of DsAlgo portal
    When the user clicks on Get Started button in the DsAlgo Portal
    Then the user should be navigated to the Home page which displays the "Linked List" module with "Get Started" button

  Scenario: Verify that the Stack Module with Get Started button is displayed after clicking on the Get Started button of DsAlgo portal
    When the user clicks on Get Started button in the DsAlgo Portal
    Then the user should be navigated to the Home page which displays the "Stack" module with "Get Started" button

  Scenario: Verify that the Queue Module with Get Started button is displayed after clicking on the Get Started button of DsAlgo portal
    When the user clicks on Get Started button in the DsAlgo Portal
    Then the user should be navigated to the Home page which displays the "Queue" module with "Get Started" button

  Scenario: Verify that the Tree Module with Get Started button is displayed after clicking on the Get Started button of DsAlgo portal
    When the user clicks on Get Started button in the DsAlgo Portal
    Then the user should be navigated to the Home page which displays the "Tree" module with "Get Started" button

  Scenario: Verify that the Graph Module with Get Started button is displayed after clicking on the Get Started button of DsAlgo portal
    When the user clicks on Get Started button in the DsAlgo Portal
    Then the user should be navigated to the Home page which displays the "Graph" module with "Get Started" button