Feature: Add comment to post
  As a human with an opinion
  I want to share my experiences
  So that others will hear my voice

  Background:
    Given the following post:
      | title                         | body        |
      | Let me tell you about Spandex | Lorem ipsum |

  Scenario: Adding a comment
    Given I am on the home page
    When I follow "Let me tell you about Spandex"
    Then I should be on that post's page
    And I fill in "Retort" with "BEST. POST. EVA."
    And I press "Add Comment"
    Then I should see "BEST. POST. EVA."
