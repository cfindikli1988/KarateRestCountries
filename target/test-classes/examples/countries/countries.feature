Feature: Get Country Attributes
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url baseURL

  Scenario: get Turkey country detail and check lang lat values.
    Given path 'alpha/tr'
    When method get
    Then status 200

    Then print response.name
    Then print response.latlng[0]

    * match response.latlng[0] == 39


  Scenario: get Turkey country detail and check capital city.
    Given path 'alpha/tr'
    When method get
    Then status 200

    Then print response.capital
    Then print response.borders[0]



    * match response.capital == 'Ankara'

  Scenario: get Turkey country detail and check region.
    Given path 'alpha/tr'
    When method get
    Then status 200

    Then print response.capital


    * match response.region == 'Asia'

  Scenario: get Turkey country detail and check neighbors.
    Given path 'alpha/tr'
    When method get
    Then status 200

    Then print response.borders


    * match response.borders[0] == 'ARM'
    * match response.borders[4] == 'GRC'

  Scenario: get Turkey country detail and check CallingCodes.
    Given path 'alpha/tr'
    When method get
    Then status 200

    Then print response.callingCodes[0]


    * match response.callingCodes[0] == "90"

  Scenario: get Turkey country detail and check demonym.
    Given path 'alpha/tr'
    When method get
    Then status 200

    Then print response.demonym


    * match response.demonym == "Turkish"


  Scenario: get Turkey country detail and check gini.
    Given path 'alpha/tr'
    When method get
    Then status 200

    Then print response.gini


    * match response.gini == 39

  Scenario: get Turkey country detail and check population.
    Given path 'alpha/tr'
    When method get
    Then status 200

    Then print response.population


    * match response.population == 78741053

