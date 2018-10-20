Feature: When starting a devspace, output the storage folder to the console/terminal

  Background:
    Given DevSpaces client of user is running
    And user is logged in to DevSpaces


  Scenario: Starts a stopped devspace that has no binding folder
    Given a devspace with no binding folder in Stopped status
    When a user starts that devspace in the terminal/console
    Then a message with the path where devpsace is being synchronized is shown in the terminal/console
    And the starting status message of the devspace appears
    And a notification about the path for synchronization is also shown on the GUI


  Scenario: Starts a a stopped devspace that has binding folder
    Given a devspace with binding folder in Stopped status
    When a user starts that devspace in the terminal/console
    Then a message with binding folder path where devpsace is being synchronized is shown in the terminal/console
    And the starting status message of the devspace appears
    And a notification about the path for synchronization is also shown on the GUI


  Scenario: Starts a devspace that is in starting status
    Given a devspace in Starting status
    When a user starts that devspace in the terminal/console
    Then a message with the path where devpsace is being synchronized is shown in the terminal/console
    And the starting status message of the devspace appears
    And a notification about the path for synchronization is also shown on the GUI


  Scenario: Starts a devspace that is in Running status
    Given a devspace in Running  status
    When a user starts that devspace in the terminal/console
    Then a message with the path where devpsace is being synchronized is shown in the terminal/console
    And the started status message of the devspace appears
    And a notification about the path for synchronization is also shown on the GUI


  Scenario: Starts a devpsace that doesn't exist
    Given a non-existing devspace
    When a user starts that devspace in the terminal/console
    Then a message about an undefined devpsace is shown in the terminal/console

  Scenario: Starts a a stopped devspace that has binding folder that was deleted
    Given a devspace with binding folder in Stopped status
    When the binding folder is deleted
    And a user starts that devspace in the terminal/console
    Then a message with binding folder path where devpsace is being synchronized is shown in the terminal/console
    And the starting status message of the devspace appears
    And a notification about the path for synchronization is also shown on the GUI
	
