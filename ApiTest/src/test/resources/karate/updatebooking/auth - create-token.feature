@ignore
Feature: Auth create token on restful-booker

  Background:
    * url api.baseUrl
    * path path.createToken
    * header accept = "application/json"
    * def rqBodyCreateToken = read('classpath:karate/jsonbase/request/rq-body-create-token-booking.json')


  @AuthCreateTokenSuccessful01
  Scenario: Create  Token successful
    Given request rqBodyCreateToken
    When method POST
    Then status 200