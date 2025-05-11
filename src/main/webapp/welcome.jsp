<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Food Waste Management</title>
    <link rel="stylesheet" type="text/css" href="css/welcome.css">
    <script>
        function checkLogin() {
            alert('Please login to access this content.');
            window.location.href = "/index"; // Redirect to login page
        }

        // Scroll indicator function
        window.onscroll = function() {
            var scrollIndicator = document.documentElement.scrollTop / (document.documentElement.scrollHeight - window.innerHeight) * 100;
            document.documentElement.style.setProperty('--scroll-percent', scrollIndicator + '%');
        };

        // Smooth scroll function
        function smoothScroll(target) {
            document.querySelector(target).scrollIntoView({ behavior: 'smooth' });
        }

        // Dark mode toggle
        function toggleDarkMode() {
            document.body.classList.toggle('dark-mode');
        }

        // Subscription success message
        function showSuccessMessage() {
            alert("Thank you for subscribing to our newsletter!");
            closeModal(); // Close the modal after subscription
        }
    </script>
</head>
<body>
    <video autoplay muted loop id="backgroundVideo">
        <source src="images/v2.mp4" type="video/mp4">
        Your browser does not support HTML5 video.
    </video>

    <!-- Scroll indicator -->
    <div class="scroll-indicator"></div>

    <!-- Navigation Bar -->
    <header class="main-header">
        <h1>Food Waste Management</h1>
        <div class="login-signup-buttons">
            <button onclick="window.location.href='/index';">Login</button>
            <button onclick="window.location.href='/signup';">Sign Up</button>
             <button onclick="toggleDarkMode()">Mode</button>
        </div>
    </header>

    <!-- Parallax background section -->
    <section class="parallax"></section>

    <section class="main-content">
<div class="hero-content">
    <h2>🌍 Reduce Food Waste with Us</h2>
    <p>Join our mission to eliminate food waste and promote sustainable living for a better tomorrow. 🌱</p>
    <a href="#" onclick="checkLogin()">👉 How It Works</a>
    
    <p>🍽️ Every year, tons of edible food goes to waste. We're here to change that by connecting generous donors with trusted NGOs and communities in need.</p>
    
    <p>🤝 Whether you're a household, restaurant, or business — your surplus food can make a real difference to someone in need.</p>

    <a href="#" onclick="checkLogin()">🏥 View Donation Centers</a>

    <p>✅ Safe, efficient, and impactful — our platform ensures your contributions reach the right hands, quickly and responsibly.</p>
    
    <p>💚 Together, we can fight hunger, reduce waste, and build a more compassionate world. Are you in?</p>
</div>


        <!-- Image Gallery with Carousel -->
        <div class="image-gallery">
            <img src="images/p1.jpg" alt="Food Waste Awareness 1">
            <img src="images/p2.jpg" alt="Food Waste Awareness 2">
            <img src="images/p3.jpg" alt="Food Waste Awareness 3">
            <img src="images/p5.jpg" alt="Food Waste Awareness 4">
        </div>

        <div class="scroll-content">
            <h2 id="services">Why Choose Us?</h2>
            <p>We offer smart solutions for food redistribution, connect surplus food sources with those in need, and promote sustainable food management practices for a better future.</p>
            <a href="#" onclick="checkLogin()">Our Services</a>
        </div>
    </section>

   <section id="testimonials" class="testimonials">
    <h2>What Our Partners Say</h2>
    <div class="testimonial-slider">

        <div class="testimonial">
            <img src="images/p6.jpg" alt="Abhi M" class="testimonial-avatar">
            <p>"An impactful initiative that makes a real difference in our community!"</p>
            <p class="testimonial-name">- Abhi M</p>
        </div>

        <div class="testimonial">
            <img src="images/p7.avif" alt="Lavanya P" class="testimonial-avatar">
            <p>"Thanks to this platform, we can easily donate excess food and help the needy."</p>
            <p class="testimonial-name">- Lavanya P</p>
        </div>

    </div>
</section>


    <section id="faq" class="faq">
        <h2>Frequently Asked Questions</h2>
        <div class="faq-item">
            <h3 onclick="toggleFAQ(this)">How do I donate food?</h3>
            <p class="faq-content">You can sign up and connect with nearby donation centers through our portal.</p>
        </div>
        <div class="faq-item">
            <h3 onclick="toggleFAQ(this)">What types of food can be donated?</h3>
            <p class="faq-content">Only fresh, unopened, and hygienically stored food items are accepted.</p>
        </div>
    </section>

    <div id="newsletterModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2>Subscribe for Updates</h2>
            <p>Get the latest news and insights on food waste reduction strategies!</p>
            <input type="email" placeholder="Your email address">
            <button onclick="showSuccessMessage()">Subscribe</button>
        </div>
    </div>

    <script>
        function toggleFAQ(element) {
            var content = element.nextElementSibling;
            var isExpanded = content.style.display === "block";
            content.style.display = isExpanded ? "none" : "block";
            element.setAttribute("aria-expanded", !isExpanded);
        }

       // Modal logic
       // var modal = document.getElementById("newsletterModal");
       // function closeModal() { modal.style.display = "none"; }
       // setTimeout(() => { modal.style.display = "block"; }, 5000); // Show after 5 seconds //
    </script>
</body>
</html>
