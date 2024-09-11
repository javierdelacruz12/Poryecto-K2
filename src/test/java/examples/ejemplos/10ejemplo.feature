Feature: Get Tests on reqres.in

  Background:
    * def urlBase = 'https://reqres.in'
    * def usersPath = '/api/users'

  Scenario: Get users list
    Given url urlBase + usersPath + '?page=2'
    When method GET
    Then status 200

  Scenario: Get users list and check value in field
    Given url urlBase + usersPath
    When method GET
    Then status 200
    And match $..first_name contains 'Emma'
    And match $..id contains '#notnull'