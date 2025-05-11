package com.klu.FWMS1.Controller;


import com.klu.FWMS1.model.*;

import com.klu.FWMS1.repository.*;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class DonateController {

    @Autowired
    private DonationRepository donationRepo;

    @PostMapping("/submitDonation")
    public String submitDonation(HttpServletRequest request, Model model) {
        String donorName = request.getParameter("donorName");
        String contact = request.getParameter("contact");
        String foodType = request.getParameter("foodType");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        boolean needPickup = "yes".equals(request.getParameter("needPickup"));

        // Save the data
        Donation donation = new Donation();
        donation.setDonorName(donorName);
        donation.setContact(contact);
        donation.setFoodType(foodType);
        donation.setQuantity(quantity);
        donation.setNeedPickup(needPickup);
        donationRepo.save(donation);

        if (needPickup) {
            // Redirect to pickup form
            return "redirect:/request";
        } else {
            model.addAttribute("message", "Thank you for your kind donation! We'll handle it accordingly.");
            return "thankyou"; // create thank-you.jsp
        }
    }
}
