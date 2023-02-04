@data_tables
Feature: data_table

  Scenario Outline: TC_Create_And_Verify_Test_data_Creation

    Given user is on "https://editor.datatables.net/" page
    When user clicks on New button
    And user enters the first name in "<firstname>" input
    And user enters the last name in "<lastname>" input
    And user enters the position in "<position>" input
    And user enters the office in "<office>" input
    And user enters the extension in "<extension>" input
    And user enters the start date in "<start_date>" input
    And user enters the salary in "<salary>" input
    And user clicks on create button
    And user search for the first name "<firstname>"
    Then verify the name field contains the "<firstname>"
    Then close the application
    Examples:
      | firstname | lastname | position | office | extension | start_date | salary |
      | John      | doe      | QA       | NYC    | 12345     | 2023-01-23 | 80000  |
      | Sam       | Walton   | Tester   | NYC    | 345567    | 2023-07-24 | 50000  |
      | Laura     | Bush     | QA       | Dallas | 7664433   | 2023-04-30 | 40000  |
      | Lily      | Watson   | doctor   | La     | 987765    | 2023-02-28 | 70000  |
