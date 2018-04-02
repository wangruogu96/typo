Feature: Create/edit Categories
  As an administator
  In order to manage my categories
  I wish to create/rdit categories

  Background:
      Given the blog is set up
      And I am logged into the admin panel
      And I follow "Categories"

    Scenario: Create new category
      Given I am on the categories page
      When I fill in "category_name" with "new"
      And I fill in "category_keywords" with "new"
      And I press "Save"
      Then I should see "test"


    Scenario: Edit category
        Given I am on the edit page for "General"
        Then the "category_name" field should contain "General"
        And I fill in "category_description" with "test-edit"
        And I press "Save"
        Then I should see "test-edit"
