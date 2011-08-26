Feature: Pushing to the git repository triggers deployment
  In order to facilitate continuous deployment
  As a systems administrator
  I want an application to be deployed what a git push is received

  Scenario: Push application to repository
    Given a user with an account and a public key
    When I git push to the applications repository
    Then the application should be deployed

  Scenario: Push invalid application to repository
    Given a user with an account and a public key
    When I git push and invalid application to the applications repository
    Then the application should not be deployed
    And an error message should be displayed