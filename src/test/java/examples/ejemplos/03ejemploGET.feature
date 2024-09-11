Feature: Recuperando toda la información del los empleados

  Background:
    Given url "https://dummy.restapiexample.com/"

    Scenario: To get specific employee details
      And path "/api/v1/employee/1"
      And header Accept = 'application/json'
      When method GET
      Then status 200
      And match response.data.employee_salary == 320800
      And match response.data.employee_name == "Tiger Nixon"
#      And match response.data.id              == 1
#      And match response.data.employee_age    == 61
#      And match response.status               == "success"
