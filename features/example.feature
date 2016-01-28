Feature: Example feature

  Background:
    Given I am on the home page

  Scenario: It's reddit
    Then I should see "hot"
    And I should see "new"
    When I click "wiki"
    Then I should see "The essentials"
