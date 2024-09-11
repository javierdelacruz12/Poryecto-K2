Feature: Validar repsuesta GET

  Scenario Outline: Verificamos que no verifique el contenido en especifico
    Given url "<url>"
    When method GET
    Then status 200
    And def des = response.weather[0].description
    Then print des

    Examples:
    |url|
    | http://api.openweathermap.org/data/2.5/weather?q=London&appid=3c322ae59a7b42f9559ae5ef9c1d9ef9 |
#    | https://dummy.restapiexample.com/api/v1/employee/1|

