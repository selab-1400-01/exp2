Feature: Calculator
  Scenario: Getting square root
    Given Input value of 9
    When I press button "sqr"
    Then I expect the result 3

    Given Input value of 25
    When I press button "sqr"
    Then I expect the result 5

    Given Input value of 1
    When I press button "sqr"
    Then I expect the result 1

    Given Input value of 0
    When I press button "sqr"
    Then I expect the result 0

    Given Input value of -1
    When I press button "sqr"
    Then I expect the result to be NaN
