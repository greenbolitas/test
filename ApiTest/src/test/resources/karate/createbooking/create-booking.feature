Feature: Create booking on restful-booker

  Background:
    * url api.baseUrl
    * path path.createBooking
    * def pathCreateBooking = path.createBooking
    * header accept = "application/json"



  @CreateBookingSuccessful01
Scenario: Create booking successful
    Given request
    """
      {
  "firstname" : "Jim",
  "lastname" : "Brown",
  "totalprice" : 111,
  "depositpaid" : true,
  "bookingdates" :
    {
    "checkin" : "2018-01-01",
    "checkout" : "2019-01-01"
    },
  "additionalneeds" : "Breakfast"
}
    """
    When method POST
    Then status 200

