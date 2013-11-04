Feature: Article Merging
  As a blog admin
  In order to organize my content
  I want to merge articles

  Scenario: Non-admins should not see the merge button
    Given the blog is set up
  	And I am logged into the normal user panel
   	And I am on the new article page
  	When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
  	And I follow "Foobar"
  	Then I should not see "Merge Articles"

  Scenario: Merging articles as an admin
    Given the blog is set up
    And I am logged into the admin panel
    And I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    And I follow "Foobar"
    And I fill in "merge_with" with "1"
    And I press "Merge"
    Then I should see "Publish settings"
    And I should see "Lorem Ipsum" 
    And I should see "Welcome to Typo"


 