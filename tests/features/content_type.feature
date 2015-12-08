@api @lightning @content_types
  Feature: Lightning Content Types
    Makes sure that the article, basic page and landing page content types are present.

  Scenario: Make sure that the content types provided by Lightning at installation are present.
    Given I am logged in as a user with the "administrator" role
    When I visit "/admin/structure/types"
    Then I should see "Basic page"

  Scenario: Ensure that meta tag fields are present.
  Given I am logged in as a user with the "administrator" role
  When I visit "node/add/page"
  Then I should see a "input[name='field_meta_tags[0][basic][title]']" element
  And I should see a "input[name='field_meta_tags[0][basic][description]']" element