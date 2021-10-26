Feature: Calculator
#    basic tests, test special cases
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
      | input | result             |
      | 1219  | 34.91418050019218  |
      | 5599  | 74.82646590612174  |
      | 720   | 26.832815729997478 |
      | 7372  | 85.86035173466273  |
      | 6217  | 78.84795495128583  |
      | 2765  | 52.583267300539625 |
      | 6515  | 80.71554992688831  |
      | 2079  | 45.59605246071199  |
      | 7039  | 83.89874850079708  |
      | 3506  | 59.21148537234985  |
      | 1551  | 39.382737335030434 |
      | 3582  | 59.84981202978001  |
      | 6796  | 82.4378553820998   |
      | 7511  | 86.66602563865497  |
      | 4002  | 63.26136261573884  |
      | 7979  | 89.32524839036273  |
      | 3267  | 57.15767664977295  |
      | 8295  | 91.0768905925098   |
      | 8803  | 93.82430388763883  |
      | 842   | 29.017236257093817 |
    
#    basic tests, test special cases
  Scenario: Getting reverse of the input
    Given Input value of 1
    When I press button "rvs"
    Then I expect the result 1

    Given Input value of 2
    When I press button "rvs"
    Then I expect the result 0.5

    Given Input value of -1
    When I press button "rvs"
    Then I expect the result -1

    Given Input value of -2
    When I press button "rvs"
    Then I expect the result -0.5

    Given Input value of -10
    When I press button "rvs"
    Then I expect the result -0.1

    Given Input value of 0
    When I press button "rvs"
    Then I expect the result to be Infinity

    Given Input value of -0
    When I press button "rvs"
    Then I expect the result to be Infinity
    
#   Bulk test 
  
  Scenario Outline: Getting reverse of the inpu
    Given Input value of <input>
    When I press button "rvs" 
    Then I expect the result <result>
  Examples:
    | input | result |
    | 1212 | 0.0008250825082508251 |
    | 9137 | 0.00010944511327569225 |
    | 497 | 0.002012072434607646 |
    | 337 | 0.002967359050445104 |
    | 4424 | 0.0002260397830018083 |
    | 3176 | 0.00031486146095717883 |
    | 3721 | 0.0002687449610319806 |
    | 7929 | 0.0001261193088661874 |
    | 9869 | 0.0001013273887931908 |
    | 9075 | 0.00011019283746556474 |
    | 6256 | 0.00015984654731457802 |
    | 3448 | 0.0002900232018561485 |
    | 389 | 0.002570694087403599 |
    | 4765 | 0.0002098635886673662 |
    | 3635 | 0.0002751031636863824 |
    | 5626 | 0.00017774617845716317 |
    | 1920 | 0.0005208333333333333 |
    | 8311 | 0.0001203224642040669 |
    | 5309 | 0.00018835938971557733 |
    | 8252 | 0.0001211827435773146 |

