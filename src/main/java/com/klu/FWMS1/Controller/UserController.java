package com.klu.FWMS1.Controller;

import java.time.LocalDateTime;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klu.FWMS1.model.*;
import com.klu.FWMS1.repository.*;
import com.klu.FWMS1.service.*;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    private UserRepository userRepository;
    
    // Map root URL ("/") to the welcome page
    @GetMapping("/")
    public ModelAndView showWelcomePage() {
        return new ModelAndView("welcome");
    }

    @GetMapping("/welcome")
    public ModelAndView showWelcomePageAlias() {
        return new ModelAndView("welcome");
    }

    @GetMapping("/index")
    public ModelAndView showLoginPage() {
        return new ModelAndView("index");
    }

    @GetMapping("/signup")
    public ModelAndView showSignupPage() {
        return new ModelAndView("signup");
    }

    @PostMapping("/signup")
    public String handleSignup(@RequestParam("firstName") String firstName,
                               @RequestParam("lastName") String lastName,
                               @RequestParam("username") String username,
                               @RequestParam("email") String email,
                               @RequestParam("password") String password,
                               @RequestParam("contactNumber") String contactNumber,
                               @RequestParam("address") String address,
                               @RequestParam("role") String role) { // Add role parameter
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);
        user.setContactNumber(contactNumber);
        user.setAddress(address);
        user.setRole(role); // Set the role

        userRepository.save(user);
        return "redirect:/index";
    }

    @PostMapping("/index")
    public ModelAndView handleLogin(@RequestParam("username") String username,
                                    @RequestParam("password") String password,
                                    HttpSession session) { // <-- Add session parameter
        User user = userRepository.findByUsername(username);

        if (user != null && user.getPassword().equals(password)) {
            session.setAttribute("loggedInUser", user); // <-- Set user in session
            return new ModelAndView("redirect:/home");
        } else {
            ModelAndView modelAndView = new ModelAndView("index");
            modelAndView.addObject("error", "Invalid username or password");
            return modelAndView;
        }
    }


    @GetMapping("/home")
    public ModelAndView showHomePage() {
        return new ModelAndView("home");
    }

    @GetMapping("/food content")
    public String showProtectedContent() {
        return "redirect:/index";
    }
    @GetMapping("/profile")
    public ModelAndView showProfile(HttpSession session) {
        User user = (User) session.getAttribute("loggedInUser"); // Retrieve user from session
        if (user == null) {
            return new ModelAndView("redirect:/index"); // Redirect to login if no user is in session
        }
        ModelAndView modelAndView = new ModelAndView("profile");
        modelAndView.addObject("user", user);
        return modelAndView;
    }
    @GetMapping("/editProfile")
    public ModelAndView showEditProfilePage(HttpSession session) {
        User user = (User) session.getAttribute("loggedInUser"); // Get user from session
        if (user == null) {
            return new ModelAndView("redirect:/index"); // Redirect to login if no user is in session
        }
        ModelAndView modelAndView = new ModelAndView("editProfile");
        modelAndView.addObject("user", user);
        return modelAndView;
    }
    
    @PostMapping("/updateProfile")
    public ModelAndView updateProfile(@RequestParam("id") Long id,
                                      @RequestParam("firstName") String firstName,
                                      @RequestParam("lastName") String lastName,
                                      @RequestParam("email") String email,
                                      @RequestParam("contactNumber") String contactNumber,
                                      @RequestParam("address") String address) {
        User user = userRepository.findById(id).orElse(null);
        if (user != null) {
            // Update user details
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email); // Ensure email is updated as well
            user.setContactNumber(contactNumber);
            user.setAddress(address);
            
            userRepository.save(user); // Save the updated user in the database
        }
        return new ModelAndView("redirect:/profile"); // Redirect back to profile page after saving
    }

    @PostMapping("/editProfile")
    public String handleEditProfile(@RequestParam("firstName") String firstName,
                                    @RequestParam("lastName") String lastName,
                                    @RequestParam("email") String email,
                                    @RequestParam("contactNumber") String contactNumber,
                                    @RequestParam("address") String address) {
        User user = userRepository.findByUsername("loggedInUsername"); // replace "loggedInUsername" with actual logged-in username
        
        // Update user details
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setContactNumber(contactNumber);
        user.setAddress(address);

        userRepository.save(user); // Save the updated user in the database
        return "redirect:/profile"; // Redirect back to profile page after saving
    }
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // Clear all session data
        return "redirect:/index"; // Redirect to login page
    }

    @GetMapping("/forgot-password")
    public String showForgotPasswordPage() {
        return "forgot-password"; // Create this JSP for the forgot password page
    }

   
    @GetMapping("/reset-password")
    public String showResetPasswordPage(@RequestParam("token") String token, Model model) {
        // Logic to validate the token and display the reset password form
        model.addAttribute("token", token);
        return "reset-password";
    }


    
    @GetMapping("/organizations")
    public String OrganizationsPage() {
        return "organizations"; // This corresponds to carRentals.jsp
    }

    @GetMapping("/donate")
    public String DonatePage()
    {
    	return "donate";
    }
    @GetMapping("/about")
    public String AboutPage()
    {
    	return "about";
    }
    
    @GetMapping("/request")
    public String RequestPage()
    {
    	return "request";
    }

}