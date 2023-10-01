Feature: Create booking on restful-booker

  Background:
    * url api.baseUrl
    * def pathGetBooking = path.crudBooking
    * header accept = "application/json"

  @GeBookingSuccessful01
  Scenario: Create booking successful
    Given path pathGetBooking + "/1"
    When method GET
    Then status 200

