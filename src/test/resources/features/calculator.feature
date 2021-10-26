Feature: Calculator
  Scenario: Getting square root
    # basic tests, test special cases
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
    
    Given  Input value of -0
    When I press button "sqr"
    Then I expect the result 0

    Given Input value of -1
    When I press button "sqr"
    Then I expect the result to be NaN
    
    Given Input value of 27
    When I press button "sqr"
    Then I expect the result 5.196152422706632

#    Bulk test
  Scenario Outline: Getting square root
    Given Input value of <input>
    When I press button "sqr"
    Then I expect the result <result>

  Examples:
    | input | result |
    | 1219 | 34.91418050019218 |
    | 5599 | 74.82646590612174 |
    | 720 | 26.832815729997478 |
    | 7372 | 85.86035173466273 |
    | 6217 | 78.84795495128583 |
    | 2765 | 52.583267300539625 |
    | 6515 | 80.71554992688831 |
    | 2079 | 45.59605246071199 |
    | 7039 | 83.89874850079708 |
    | 3506 | 59.21148537234985 |
    | 1551 | 39.382737335030434 |
    | 3582 | 59.84981202978001 |
    | 6796 | 82.4378553820998 |
    | 7511 | 86.66602563865497 |
    | 4002 | 63.26136261573884 |
    | 7979 | 89.32524839036273 |
    | 3267 | 57.15767664977295 |
    | 8295 | 91.0768905925098 |
    | 8803 | 93.82430388763883 |
    | 842 | 29.017236257093817 |



