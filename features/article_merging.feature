Feature: Article Merging
  As a blog manager
  In order to organize my content
  I want to merge articles

  Scenario: Merge articles as admin
    Given I am on the home page
    And I am an admin
    When I click on "All Articles"
    I should see "merge_with"