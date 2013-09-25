Feature: Create  blog post
  As a human with an opinion
  I would like to share my information with the world
  So that others will hear my voice

  Scenario: Creating a blog post
    Given I am on the new post page
    And I fill in "Title" with "I seriously like hummus"
    And I fill in "Body" with "Let me tell you garbo.."
    When I press "Create"
    Then I should see "Post created successfully!"
    And I should see "I seriously like hummus"
