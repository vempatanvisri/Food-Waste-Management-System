<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Food Waste Management Home</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <a class="navbar-brand" href="/">Food Saver</a>
    <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="/home">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="/about">About</a></li>
            <li class="nav-item"><a class="nav-link" href="/donate">Donate Food</a></li>
            <li class="nav-item"><a class="nav-link" href="/request">Request Pickup</a></li>
            <li class="nav-item"><a class="nav-link" href="/organizations">Organizations</a></li>
            <li class="nav-item"><a class="nav-link" href="/contact">Contact</a></li>
            <li class="nav-item"><a class="nav-link" href="/profile?username=${username}">Profile</a></li>
            
            <li class="nav-item">
                <form action="/logout" method="get">
                    <button type="submit" class="btn btn-link nav-link">Logout</button>
                </form>
            </li>
        </ul>
    </div>
</nav>

<div class="content">
    <header class="text-center py-5">
        <div class="container">
            <h1 class="display-4">Join the Movement to Reduce Food Waste</h1>
            <p class="lead">Donate surplus food or request help to make a difference today.</p>
            <a href="/donate" class="btn btn-success mt-3">Donate Now</a>
        </div>
    </header>

    <!-- Carousel -->
    <section class="container my-5">
        <h2 class="text-center mb-4">Recent Food Contributions</h2>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/p8.jpg" class="d-block w-100 feature-img" alt="Food 1">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Community Kitchen</h5>
                        <p>Fresh meals distributed to local shelters.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/p9.jpg" class="d-block w-100 feature-img" alt="Food 2">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Leftover Collection Drive</h5>
                        <p>Collected surplus food from restaurants for reuse.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/p10.jpg" class="d-block w-100 feature-img" alt="Food 3">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>College Canteen Donation</h5>
                        <p>Saved food donated to orphanages.</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </section>

    <!-- Types of Services -->
    <section class="container my-5">
        <h2 class="text-center mb-4">Our Services</h2>
        <div class="row">
            <div class="col-md-4">
                <i class="fas fa-drumstick-bite icon mb-2"></i>
                <h4>Food Donation</h4>
                <p>Donate unused, excess food to help the needy and reduce waste.</p>
            </div>
            <div class="col-md-4">
                <i class="fas fa-recycle icon mb-2"></i>
                <h4>Food Recycling</h4>
                <p>Re-purpose edible food and compost leftovers responsibly.</p>
            </div>
            <div class="col-md-4">
                <i class="fas fa-hands-helping icon mb-2"></i>
                <h4>NGO Collaboration</h4>
                <p>We partner with NGOs to ensure food reaches the right people on time.</p>
            </div>
        </div>
    </section>
</div>

<footer class="bg-success text-white text-center p-3">
    &copy; 2025 Food Waste Management System | All rights reserved.
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
