Feature: Sign In
  In order to access my UKSA Account
  As a User
  I want to Sign In

  Scenario: Failed Username Sign in attempt
    Given my Username credentials are unknown
    When I attempt to Sign in
    Then my Sign In attempt will be rejected with the message, "Incorrect User name or Password"


