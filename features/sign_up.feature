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
    And I Sign Up to the UKSA
    When I'm on the Member Details section
    Then my Email will be displayed
