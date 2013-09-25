Feature: Add comment to post
  As as opinioned person
  I want to share my insights with the world
  So that they will be better people

  Background:
    Given the following post:
      | title | Let me tell you something |
      | body  | lorem ipsum               |

  Scenario: Adding a comment to a post
    Given I am on the home page
    When I follow "Let me tell you something"
    And I fill in "Retort" with "That was a great post"
    When I press "Create comment"
    Then I should see "Comment created!"
    And I should see "That was a great post"

