<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Request Pickup</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/request.css">
</head>
<body class="d-flex flex-column min-vh-100">

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <a class="navbar-brand" href="/">Food Saver</a>
    <div class="collapse navbar-collapse">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="/donate">Donate</a></li>
            <li class="nav-item"><a class="nav-link active" href="/request">Request</a></li>
            <li class="nav-item"><a class="nav-link" href="/organizations">Organizations</a></li>
        </ul>
    </div>
</nav>

<!-- Pickup Request Form with Vehicle Facilities -->
<div class="container my-5">
    <h2 class="text-center mb-4">Request Pickup for Food Donation</h2>
    <form action="submitPickupRequest" method="post" class="mx-auto" style="max-width: 800px;">

        
        <div class="form-group">
            <label for="name">Your Name *</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>

        <div class="form-group">
            <label for="location">Pickup Location *</label>
            <input type="text" class="form-control" id="location" name="location" required>
        </div>

        <div class="form-group">
            <label for="contact">Contact Number *</label>
            <input type="tel" class="form-control" id="contact" name="contact" required>
        </div>

        <div class="form-group">
            <label for="quantity">Quantity of Food (in Kg) *</label>
            <input type="number" class="form-control" id="quantity" name="quantity" min="1" required>
        </div>

        <div class="form-group">
            <label for="pickupTime">Preferred Pickup Time *</label>
            <input type="datetime-local" class="form-control" id="pickupTime" name="pickupTime" required>
        </div>

        <!-- Vehicle Selection -->
        <div class="form-group">
            <label>Choose Vehicle Type for Pickup *</label>
            <div class="vehicle-options d-flex justify-content-between">
                <div class="vehicle-option text-center">
                    <input type="radio" id="bike" name="vehicleType" value="Bike" required>
                    <label for="bike">
                        <img src="images/bike.webp" alt="Bike" class="vehicle-img">
                        <p>Bike</p>
                    </label>
                </div>

                <div class="vehicle-option text-center">
                    <input type="radio" id="car" name="vehicleType" value="Car" required>
                    <label for="car">
                        <img src="images/car.jpg" alt="Car" class="vehicle-img">
                        <p>Car</p>
                    </label>
                </div>

                <div class="vehicle-option text-center">
                    <input type="radio" id="truck" name="vehicleType" value="Truck" required>
                    <label for="truck">
                        <img src="images/truck.avif" alt="Truck" class="vehicle-img">
                        <p>Truck</p>
                    </label>
                </div>
            </div>
        </div>

        <div class="form-group text-center">
            <button type="submit" class="btn btn-success">Request Pickup</button>
        </div>
    </form>
</div>

<footer class="mt-auto bg-success text-white text-center p-3">
    &copy; 2025 Food Waste Management System | All rights reserved.
</footer>

</body>
</html>
