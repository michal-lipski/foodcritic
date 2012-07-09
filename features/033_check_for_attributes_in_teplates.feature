Feature: Check Attributes usage in  templates

  As a developer
  In order to write templates which can be used outside the cookbook
  I want to identify if in templates there is no direct use of node attributes

  Scenario: Cookbook template accesses attributes directly
    Given a cookbook with a template that does not have node attribute accessed via variables
    When I check the cookbook
    Then the node access warning 033 should be displayed



  Scenario: Cookbook template access attributes via variables
    Given a cookbook with a template that have node attribute accessed via variables
    When I check the cookbook
    Then the node access warning 033 should not be displayed

