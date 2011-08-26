Feature: Create account
  In order to gain access to the system
  As a systems administrator
  I want anyone to be able to create an account

  Scenario: Signup for account
    Given I am on the signup page
    When I fill out the email address and password
    Then I can use that to login

  Scenario: Adding a public key gives access to git
    Given I have logged in
    And I have created an application
    When I visit the 'keys' page
    And I add my public key
    Then I can push to my applications git repository