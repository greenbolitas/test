Feature: Create booking on restful-booker

  Background:
    * url api.baseUrl
    * path path.crudBooking
    * header accept = "application/json"
    * def rqBodyCreateBooking = read('classpath:karate/jsonbase/request/rq-body-create-booking.json')


  @CreateBookingSuccessful01
Scenario: Create booking successful
    Given request rqBodyCreateBooking
    When method POST
    Then status 200

