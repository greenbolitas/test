Feature: Update booking on restful-booker

  Background:
    * url api.baseUrl
    * def pathGetBooking = path.crudBooking
    * def headersUpdateBooking = read('classpath:karate/jsonbase/header/header-update-booking.json')
    * def rqBodyUpdateBooking = read('classpath:karate/jsonbase/request/rq-body-update-booking.json')
    * def resultCreateToken = call read('auth - create-token.feature')
    * set headersUpdateBooking.Cookie = "token=" + resultCreateToken.response.token

  @UpdateBookingSuccessful01
  Scenario: Update booking successful
    Given headers headersUpdateBooking
    Given path pathGetBooking + "/1"
    Given request rqBodyUpdateBooking
    When method PUT
    Then status 200

