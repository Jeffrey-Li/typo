Feature: Article Merging
  As a blog manager
  In order to organize my content
  I want to merge articles

Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Merging articles as an admin
    Given I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    And I follow "Foobar"
    And I fill in "merge_with" with "1"
    And I press "Merge"
    And I go to the home page
    Then I should see "Foobar"
    When I follow "Foobar"
    I should see "Lorem Ipsum" 
    And I should see "Welcome to Typo"


 