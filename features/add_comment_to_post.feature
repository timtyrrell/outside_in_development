Feature: Add comment to post
  As a human with an opinion
  I want to share my experiences
  So that others will hear my voice

  Background:
    Given the following post:
      | title | Let me tell you about Spandex |
      | body  | Lorem ipsum                   |

  @javascript
  Scenario: Adding a comment
    Given I am on the home page
    When I follow "Let me tell you about Spandex"
    And I fill in "Retort" with "BEST. POST. EVA."
    And I press "Add Comment"
    Then I should see "BEST. POST. EVA."
