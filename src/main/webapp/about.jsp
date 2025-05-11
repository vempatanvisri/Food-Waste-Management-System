<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Food Saver</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            color: white;
            overflow-x: hidden;
        }

        .video-bg {
            position: fixed;
            top: 0;
            left: 0;
            min-width: 100%;
            min-height: 100%;
            z-index: -1;
            object-fit: cover;
        }

        .overlay {
            background-color: rgba(0, 0, 0, 0.6);
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        .content {
            position: relative;
            z-index: 1;
            padding-top: 100px;
            padding-bottom: 100px;
        }

        nav.navbar {
            background-color: #28a745;
            z-index: 2;
        }

        .navbar-brand, .nav-link {
            color: white !important;
            font-weight: 500;
        }

        .nav-link:hover {
            color: #ffc107 !important;
        }
        
        .custom-navbar {
    background-color: #28a745;
    padding: 0.75rem 1rem;
    z-index: 1000;
}

.navbar-brand {
    font-weight: bold;
    font-size: 1.5rem;
    color: #fff !important;
}

.custom-navbar {
    background-color: #28a745;
    padding: 0.75rem 1rem;
    z-index: 1000;
}

.navbar-nav .nav-link {
    color: white !important;
    padding: 0.5rem 1rem;
    font-size: 1.1rem;
    font-weight: 500;
}

.navbar-nav .nav-link:hover {
    color: #ffc107 !important;
}



.navbar-toggler {
    border: none;
}
        

        footer {
            position: relative;
            background-color: #28a745;
            color: white;
            padding: 20px 0;
            z-index: 2;
        }

        h1, h2 {
            font-weight: bold;
        }

        .services-list {
            margin-top: 40px;
        }

        .service-item {
            background-color: rgba(255, 255, 255, 0.1);
            border-left: 4px solid #28a745;
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 8px;
            font-size: 1.1rem;
        }

        .lead {
            font-size: 1.2rem;
        }

        .highlight {
            color: #ffc107;
            font-weight: bold;
        }
    </style>
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top custom-navbar">
    <div class="container">
        <a class="navbar-brand" href="#">🍽️ Food Saver</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <!-- ADD ml-auto to push nav to the right -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="donate.jsp">Donate</a></li>
                <li class="nav-item"><a class="nav-link" href="request.jsp">Request</a></li>
                <li class="nav-item"><a class="nav-link" href="organization.jsp">Organization</a></li>
                <li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>



<!-- Background Video -->
<video autoplay muted loop class="video-bg">
    <source src="videos/v4.mp4" type="video/mp4">
    Your browser does not support HTML5 video.
</video>

<div class="overlay"></div>

<!-- Page Content -->
<div class="container content text-center">
    <h1>🌍 About Food Saver</h1>
    <p class="lead mt-4">
        Welcome to <span class="highlight">Food Saver</span> – a compassionate initiative built to combat food waste and hunger. 🙌  
        Our mission is to ensure that surplus food from homes, restaurants, and events reaches the needy instead of going to waste. 🥗❤️
    </p>

    <p class="lead mt-4">
        Through seamless pickup requests, real-time tracking, and strong collaboration with NGOs 🤝, we provide a simple yet powerful way to make a difference.  
        Whether you're a donor, volunteer, or an organization – there’s a place for you here! 🚀
    </p>

    <h2 class="mt-5">💼 Our Key Services</h2>
    <div class="services-list text-left mx-auto" style="max-width: 800px;">
        <div class="service-item">🚚 Food Pickup Request & Tracking</div>
        <div class="service-item">📋 NGO & Volunteer Registration</div>
        <div class="service-item">🧾 Admin Dashboard for Monitoring Activities</div>
        <div class="service-item">📊 Real-time Reports and Analytics</div>
        <div class="service-item">🔒 Role-based Access Control (Donor, NGO, Admin)</div>
        <div class="service-item">📱 User-Friendly Interface with Mobile Compatibility</div>
        <div class="service-item">💬 Notifications & Reminders for Scheduled Pickups</div>
        <div class="service-item">🛠 Efficient Vehicle Allocation: Bike, Car, Truck</div>
        <div class="service-item">🗺️ Location-based Matching of Donors & NGOs</div>
    </div>

    <p class="lead mt-5">
        Together, we can turn every leftover into a lifesaver. 🌱  
        Be a hero today – donate, volunteer, and spread the word! 💚
    </p>
</div>

<!-- Green Footer -->
<footer class="text-center">
    &copy; 2025 Food Saver | 💡 Nourish Lives. Reduce Waste.
</footer>

<!-- Bootstrap JS for navbar toggling -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
