Feature: Create blog post
  As a talented author
  I want to share my stories with the world
  So that I can be adored

  Scenario: Creating a blog post
    Given I am on the new post page
    When I fill in "Title" with "I Heart Hummus"
    And I fill in "Body" with "I seriously like hummus a lot, I am not kidding"
    And I press "Create"
    And I should see "New post created!"
    And I should see "I Heart Hummus"
