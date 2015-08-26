Feature: Member Details
  In order to view my Member Details
  As a User
  I want Login and see my account

  Scenario: Member Details Default Sections
    Given I'm a Logged in Standard User
    When I'm on the Member Details section
    Then I will see a section for:
    """
    Email
    Full Name
    Brief Summary
    Testing Expertise
    Tel Contacts
    Git Account
    """

  Scenario: Member Details User Email
    Given I'm a Logged in Standard User
    When I'm on the Member Details section
    Then my Email will be displayed