Feature: Leer clase java

  Scenario: leer la data del java class
    Then def reusable = Java.type('examples/Util/Reader')
    Then def sumValue = reusable.sum(10,10)
    And print sumValue