Feature: Sign Up
  As a new User
  I want to Sign Up
  So that I can be a Member of the UKSA

  Scenario: New User Sign Up Page
    Given I'm on the Member Registration page
    Then I will be able to Sign Up to the UKSA

  Scenario: New User Sign Up
    Given I'm a new User
    And I'm on the Member Registration page
    When I Sign Up to the UKSA
    Then my Email will be displayed

  Scenario: New user requires Member Associate
    Given I'm a new User
    And I'm on the Member Registration page
    When I do not provide the Member Associate
    Then I my Sign Up will be rejected
