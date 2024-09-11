Feature: GET Example and validation using match each

  Scenario Outline: Verificamos que no verifique el contenido en especifico
    Given url "<url>"
    When method GET
    Then status 200
    And print response
    Then match each response.data ==
  """
  {
      "id": "#number",
      "employee_name": "#string",
      "employee_salary": "#number",
      "employee_age": "#number",
      "profile_image": "##string"
  }
  """
    Examples:
      | url                                              |
      | https://dummy.restapiexample.com/api/v1/employees|