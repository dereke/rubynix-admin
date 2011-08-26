Feature: Create Application
  In order to allow users create application
  As a systems administrator
  I want an application to be created when a user posts to the REST API

  Scenario: Create Application
    Given a user with an account
    When I data post to the '/application' endpoint:
    | name                |
    | test-application |
    Then a new application should be created

  Scenario: Creating an application also creates a git repository
    Given a user with an account
    When I create an application
    Then a git repository is also created