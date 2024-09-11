Feature:  Karate Assertions with examples Part 2

#  Scenario Outline: Validar el pos
#    Given url "<url>"
#    And request {"name":"test","salary":"123","age":"23"}
#    When method POST
#    Then status 200
# #   And def otherResponse = call read('classpath:features/Example1.feature')
##    Then print otherResponse.des
##    Then print otherResponse.decimal
#
#    Examples:
#      | url                                            |
#      | https://dummy.restapiexample.com/api/v1/create |

  Scenario Outline: Validar el RESPUESTA para el empleado
    Given url "<url>"
    When method GET
    Then status 200
    And match each response.data ==
    """
    {
      "id": "#number",
      "employee_name": "#string",
      "employee_salary": "#number",
      "employee_age": "#number",
      "profile_image": "#string"
    }
    """

    Examples:
      | url                                               |
      | https://dummy.restapiexample.com/api/v1/employees |
