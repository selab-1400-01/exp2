Feature: Calculator
  Scenario: Getting square root
    Given Input value of 9
    When I press button "sqr"
    Then I expect the result 3