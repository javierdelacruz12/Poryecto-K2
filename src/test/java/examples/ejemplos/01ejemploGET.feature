#match contains
#  PRUEBAS DE CONTROL DE CALIDAD

Feature: Validar repsuesta GET
  Scenario: Verificamos la data
    Given url "http://api.openweathermap.org/data/2.5/weather?q=London&appid=3c322ae59a7b42f9559ae5ef9c1d9ef9"
    When method GET
    Then status 200
    And match response.weather[0].description contains 'few clouds'
    * print response

  Scenario: Verificamos que no verifique el contenido en especifico
    Given url "http://api.openweathermap.org/data/2.5/weather?q=London&appid=3c322ae59a7b42f9559ae5ef9c1d9ef9"
    When method GET
    Then status 200
    And match response.weather[0].description !contains 'Javier de la cruz'
#    And match response.weather[0].description == '#string'
    And match response.weather[0].description == '#number'
    * print response