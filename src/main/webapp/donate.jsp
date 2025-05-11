<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Donate Food</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/donate.css">
</head>
<body class="d-flex flex-column min-vh-100">

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <a class="navbar-brand" href="/">Food Saver</a>
    <div class="collapse navbar-collapse">
        <ul class="navbar-nav ml-auto">
        <li class="nav-item"><a class="nav-link active" href="/home">Home</a></li>
            <li class="nav-item"><a class="nav-link active" href="/donate">Donate</a></li>
            <li class="nav-item"><a class="nav-link" href="/request">Request</a></li>
            <li class="nav-item"><a class="nav-link" href="/organizations">Organizations</a></li>
        </ul>
    </div>
</nav>

<div class="container my-5">
    <h2 class="text-center mb-4">Donate Food</h2>
    <form action="submitDonation" method="post">

    <div class="form-group">
        <label for="donorName">Your Name *</label>
        <input type="text" class="form-control" id="donorName" name="donorName" required>
    </div>

    <div class="form-group">
        <label>Food Type *</label>
        <div class="food-icons d-flex justify-content-around">
            <div class="food-option text-center">
                <input type="radio" id="fruits" name="foodType" value="Fruits" required>
                <label for="fruits"><img src="images/fruits.jpeg" class="food-img"><br>Fruits</label>
            </div>
            <div class="food-option text-center">
                <input type="radio" id="grains" name="foodType" value="Grains" required>
                <label for="grains"><img src="images/grains.avif" class="food-img"><br>Grains</label>
            </div>
            <div class="food-option text-center">
                <input type="radio" id="cooked" name="foodType" value="Cooked" required>
                <label for="cooked"><img src="images/cooked.jpg" class="food-img"><br>Cooked</label>
            </div>
        </div>
    </div>

    <div class="form-group">
        <label for="quantity">Quantity (in Kg) *</label>
        <input type="number" class="form-control" id="quantity" name="quantity" min="1" required>
    </div>

    <div class="form-group">
        <label for="contact">Contact Number *</label>
        <input type="tel" class="form-control" id="contact" name="contact" required>
    </div>

    <div class="form-group">
        <label>Need Pickup? *</label><br>
        <input type="radio" id="pickupYes" name="needPickup" value="yes" required> <label for="pickupYes">Yes</label>
        <input type="radio" id="pickupNo" name="needPickup" value="no" required class="ml-3"> <label for="pickupNo">No</label>
    </div>

    <div class="form-group text-center">
        <button type="submit" class="btn btn-success">Submit Donation</button>
    </div>
</form>

</div>


<footer class="mt-auto bg-success text-white text-center p-3">
    &copy; 2025 Food Waste Management System | All rights reserved.
</footer>

<script>
    document.getElementById("donateForm").addEventListener("submit", function(event) {
        event.preventDefault(); // Stop default submission for now

        const pickupValue = document.querySelector('input[name="needPickup"]:checked').value;

        // Temporarily set the form's action based on pickup value
        if (pickupValue === "yes") {
            this.action = "request.jsp";
        } else {
            this.action = "thankyou.jsp";
        }

        this.submit(); // Submit the form to the chosen page
    });
</script>




</body>
</html>
