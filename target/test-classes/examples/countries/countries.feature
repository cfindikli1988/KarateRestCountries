Feature: Get Country Attributes
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url baseURL
    Given path 'alpha/tr'
    When method get
    Then status 200

  Scenario: get Turkey country detail and check lang lat values.

    Then print response.name
    Then print response.latlng[0]

    * match response.latlng[0] == 39
    * match response.latlng[1] == 35

  Scenario: get Turkey country detail and check capital city.

    Then print response.capital
    Then print response.borders[0]

    * match response.capital == 'Ankara'

  Scenario: get Turkey country detail and check region.

    Then print response.capital


    * match response.region == 'Asia'

  Scenario: get Turkey country detail and check neighbors.

    Then print response.borders

    * match response.borders[0] == 'ARM'
    * match response.borders[1] == 'AZE'
    * match response.borders[2] == 'BGR'
    * match response.borders[3] == 'GEO'
    * match response.borders[4] == 'GRC'
    * match response.borders[5] == 'IRN'
    * match response.borders[6] == 'IRQ'
    * match response.borders[7] == 'SYR'
    * match response.borders[7] != 'RUS'



  Scenario: get Turkey country detail and check CallingCodes.

    Then print response.callingCodes[0]


    * match response.callingCodes[0] == "90"

  Scenario: get Turkey country detail and check demonym.

    Then print response.demonym


    * match response.demonym == "Turkish"


  Scenario: get Turkey country detail and check gini.

    Then print response.gini

    * match response.gini == 39

  Scenario: get Turkey country detail and check population.

    Then print response.population

    * match response.population == 78741053

  Scenario: get Turkey country detail and check area.

    Then print response.area

    * match response.area == 783562

  Scenario: get Turkey country detail and top level domain.

    Then print response.topLevelDomain

    * match response.topLevelDomain[0] == ".tr"

