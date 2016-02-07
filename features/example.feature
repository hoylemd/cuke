Feature: Example feature

  Background:
    Given I am on the home page

  Scenario: It's my website
    Then I should see "Michael D. Hoyle"
    And I should see "his github"
    When I click "his stuff"
    Then I should see "A password generator"

  Scenario: Sprunge example
    When I submit "Hello, world!" to flask_rest
    Then The response should be successful
    When I recall my last message
    Then The response should contain "Hello, world!"
