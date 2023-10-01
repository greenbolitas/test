package karate.getbooking;

import com.intuit.karate.junit5.Karate;

import static karate.infraestructure.utils.ConstantsFeatures.GETBOOKING;

public class getBookingRunner {
    @Karate.Test
    Karate getBooking(){
        return Karate.run(GETBOOKING).relativeTo(getClass());
    }
}
