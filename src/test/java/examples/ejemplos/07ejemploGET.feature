Feature: Conditional statements using If & looping statement for in karate framework

  @karateVideoDemo
  Scenario: verify username info from the response
    Given url 'https://gorest.co.in/public/v1/users'
    When method get
    Then status 200
    When def outputEmail = []
    When def outputGender = []
    And eval for(var i=0;i<response.data.length;i++) if(response.data[i].name.endsWith("Dhrutika")) outputEmail.add(response.data[i].email),outputGender.add(response.data[i].gender)
    Then print outputEmail
    Then print outputGender

