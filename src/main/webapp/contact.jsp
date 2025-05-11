<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us - Food Saver</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f6f6f6;
            margin: 0;
            padding: 0;
        }

        /* Header Style */
        header {
            background-color: #28a745;
            padding: 20px 0;
            color: white;
            text-align: center;
        }

        header h1 {
            margin: 0;
        }

        .nav-link {
            color: white !important;
        }

        .navbar {
            padding: 0;
        }

        /* Navigation Bar */
        .navbar-nav {
            flex-direction: row;
            justify-content: center;
            width: 100%;
        }

        .navbar-nav .nav-item {
            padding: 0 15px;
        }

        .navbar-nav .nav-link {
            font-size: 16px;
        }

        /* Contact Section */
        .contact-section {
            padding: 60px 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            max-width: 900px;
            margin: 40px auto;
        }

        h2 {
            color: #28a745;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
        }

        label {
            font-weight: 500;
        }

        .btn-custom {
            background-color: #28a745;
            color: white;
            font-weight: bold;
        }

        .btn-custom:hover {
            background-color: #218838;
        }

        /* Team Section */
        .team-section {
            margin-top: 50px;
        }

        .team-member {
            background-color: #e9f9ee;
            border-left: 4px solid #28a745;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        /* Footer */
        footer {
            background-color: #28a745;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 60px;
        }

        footer p {
            margin: 0;
        }
    </style>
</head>
<body>

<!-- Header and Navigation -->
<header>
    <h1>Food Saver</h1>
    <nav class="navbar navbar-expand-lg">
        <ul class="navbar-nav">
            <li class="nav-item"><a href="/" class="nav-link">Home</a></li>
            <li class="nav-item"><a href="/donate" class="nav-link">Donate</a></li>
            <li class="nav-item"><a href="/request" class="nav-link">Request</a></li>
            <li class="nav-item"><a href="/organization" class="nav-link">Organization</a></li>
            <li class="nav-item"><a href="/contact" class="nav-link">Contact</a></li>
            <li class="nav-item"><a href="/logout" class="nav-link">Logout</a></li>
        </ul>
    </nav>
</header>

<!-- Contact Form -->
<div class="contact-section">
    <h2>📬 Contact Us</h2>
    
    <form action="submitContact" method="post">
        <div class="form-group">
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name" class="form-control" required />
        </div>
        <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" id="email" name="email" class="form-control" required />
        </div>
        <div class="form-group">
            <label for="message">Message</label>
            <textarea id="message" name="message" class="form-control" required></textarea>
        </div>
        <button type="submit" class="btn btn-custom">Send</button>
    </form>

    <!-- Team Info -->
    <div class="team-section">
        <h4 class="text-center mt-5">📞 Our Team</h4>

        <div class="team-member">
            <strong>John Doe</strong> – Founder & CEO<br>
            Email: john@foodsaver.org<br>
            Phone: +91-9876543210
        </div>

        <div class="team-member">
            <strong>Priya Sharma</strong> – Volunteer Coordinator<br>
            Email: priya@foodsaver.org<br>
            Phone: +91-9123456789
        </div>
    </div>
</div>

<!-- Footer -->
<footer>
    <p>&copy; 2025 Food Saver | 🌱 Nourish Lives. Reduce Waste.</p>
</footer>

</body>
</html>
