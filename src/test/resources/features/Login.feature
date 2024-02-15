Feature: Login functionality

  @sprint1  @regression  @smoke @nipa
  Scenario: Valid admin login
    #Given user is navigated to HRMS application
    When user enters admin username and password
    And user clicks on login button
    Then user is successfully logged in

  @error @regression
  Scenario Outline: Validating the error message
    When user enters "<username>" and "<password>" and verify the "<errorMessage>"
    Examples:
      | username | password | errorMessage |
      |admin     |vnddd     |Invalid credentials|
      |vvnnfnf   |Hum@nhrm123|Invalid credentials|
      |          |Hum@nhrm123|Username cannot be empty|
      |admin     |           |Password cannot be empty|





  Scenario: the user is able to log in the SyntaxHRMS Application with correct credentials
    Given the user navigate to the website
    When user enters the username and password
    And clicks on login Button
    Then the user is logged in


  @smoke
  Scenario: the user is not able to login with incorrect credentials
    Given the user navigate to the website
    When user enters the incorrect username and password
    And clicks on login Button
    Then the user is not logged

  Scenario: the user is able to login using correct credentials
    Given the user navigate to the website
    When user enters the username "Admin" and the password "Hum@nhrm123"
    And user clicks login Button
    Then the user sees the message "Welcome Admin"

