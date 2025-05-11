package com.klu.FWMS1.Controller;



import com.klu.FWMS1.model.*;
import com.klu.FWMS1.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;

@Controller
public class PickupController {

    @Autowired
    private PickupRequestRepo pickupRequestRepo;

    @PostMapping("/submitPickupRequest")
    public String submitPickupRequest(
            @RequestParam String name,
            @RequestParam String location,
            @RequestParam String contact,
            @RequestParam int quantity,
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) LocalDateTime pickupTime,
            @RequestParam String vehicleType) {

        PickupRequest request = new PickupRequest();
        request.setName(name);
        request.setLocation(location);
        request.setContact(contact);
        request.setQuantity(quantity);
        request.setPickupTime(pickupTime);
        request.setVehicleType(vehicleType);

        pickupRequestRepo.save(request);

        return "thank-you"; // Show thank-you.jsp or similar confirmation
    }
}
