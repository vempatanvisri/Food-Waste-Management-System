package com.klu.FWMS1.Controller;


import com.klu.FWMS1.model.*;


import com.klu.FWMS1.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

@Controller
public class ContactController {

    @Autowired
    private ContactRepository contactRepository;

    @GetMapping("/contact")
    public String showContactForm(Model model) {
        model.addAttribute("contact", new Contact());
        return "contact"; // contact.jsp or contact.html
    }

    @PostMapping("/submitContact")
    public String submitContact(@ModelAttribute Contact contact, Model model) {
        contactRepository.save(contact);
        model.addAttribute("message", "Thank you for contacting us!");
        return "contact";
    }
}
