package karate.createbooking;

import com.intuit.karate.junit5.Karate;

import static karate.infraestructure.utils.ConstantsFeatures.CREATEBOOKING;

public class createBookingRunner {

    @Karate.Test
    Karate createBooking(){
        return Karate.run(CREATEBOOKING).relativeTo(getClass());
    }
}
