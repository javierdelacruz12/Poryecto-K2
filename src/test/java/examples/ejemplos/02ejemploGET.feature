Feature: Recuperando toda la información del los empleados

  Background:
    Given url "https://dummy.restapiexample.com"

  Scenario: to GET all employees information in JSON format
    And path "/api/v1/employees"
    And header Accept = 'application/json'
    When method GET
    Then status 200
    And match response contains deep {"data":[{"id":1}]}
    And match response contains deep {"data":[{"employee_name":"Tiger Nixon"}]}