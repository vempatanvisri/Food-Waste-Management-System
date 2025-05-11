<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Partner Organizations</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="css/organizations.css">
</head>
<body class="d-flex flex-column min-vh-100">

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <a class="navbar-brand" href="/">Food Saver</a>
    <div class="collapse navbar-collapse">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="/home">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="/donate">Donate</a></li>
            <li class="nav-item"><a class="nav-link" href="/request">Request</a></li>
            <li class="nav-item"><a class="nav-link active" href="/organizations">Organizations</a></li>
             <li class="nav-item"><a class="nav-link active" href="/logout">Logout</a></li>
        </ul>
    </div>
</nav>

<div class="container my-5">
    <h2 class="text-center mb-4">Our Partner Organizations</h2>
    <div class="row">
        <!-- Card 1 -->
        <div class="col-md-4 mb-4 d-flex organization-card">
            <div class="card w-100">
                <div class="card-body text-center">
                    <i class="fas fa-hand-holding-heart org-icon"></i>
                    <h5 class="card-title">Feeding India</h5>
                    <p class="card-text">A non-profit organization by Zomato, working to end hunger and food waste in India.</p>
                    <a href="https://www.feedingindia.org/" target="_blank" class="btn btn-outline-success">Visit Website</a>
                </div>
            </div>
        </div>

        <!-- Card 2 -->
        <div class="col-md-4 mb-4 d-flex organization-card">
            <div class="card w-100">
                <div class="card-body text-center">
                    <i class="fas fa-seedling org-icon"></i>
                    <h5 class="card-title">Robin Hood Army</h5>
                    <p class="card-text">Volunteer-based organization collecting surplus food and distributing it to the needy.</p>
                    <a href="https://robinhoodarmy.com/" target="_blank" class="btn btn-outline-success">Visit Website</a>
                </div>
            </div>
        </div>

        <!-- Card 3 -->
        <div class="col-md-4 mb-4 d-flex organization-card">
            <div class="card w-100">
                <div class="card-body text-center">
                    <i class="fas fa-users org-icon"></i>
                    <h5 class="card-title">Akshaya Patra</h5>
                    <p class="card-text">Runs India's largest NGO-run school lunch program, addressing hunger in education.</p>
                    <a href="https://www.akshayapatra.org/" target="_blank" class="btn btn-outline-success">Visit Website</a>
                </div>
            </div>
        </div>

        <!-- Card 4 -->
        <div class="col-md-4 mb-4 d-flex organization-card">
            <div class="card w-100">
                <div class="card-body text-center">
                    <i class="fas fa-leaf org-icon"></i>
                    <h5 class="card-title">Goonj</h5>
                    <p class="card-text">Focuses on using urban discard as a tool for rural development and disaster relief.</p>
                    <a href="https://goonj.org/" target="_blank" class="btn btn-outline-success">Visit Website</a>
                </div>
            </div>
        </div>

        <!-- Card 5 -->
        <div class="col-md-4 mb-4 d-flex organization-card">
            <div class="card w-100">
                <div class="card-body text-center">
                    <i class="fas fa-hands-helping org-icon"></i>
                    <h5 class="card-title">Annamrita Foundation</h5>
                    <p class="card-text">Serves nutritious meals to school children and underprivileged people in India.</p>
                    <a href="https://annamrita.org/" target="_blank" class="btn btn-outline-success">Visit Website</a>
                </div>
            </div>
        </div>

        <!-- Card 6 -->
        <div class="col-md-4 mb-4 d-flex organization-card">
            <div class="card w-100">
                <div class="card-body text-center">
                    <i class="fas fa-utensils org-icon"></i>
                    <h5 class="card-title">No Food Waste</h5>
                    <p class="card-text">Collects surplus food and distributes it to the hungry through a real-time app-based system.</p>
                    <a href="https://www.nofoodwaste.org/" target="_blank" class="btn btn-outline-success">Visit Website</a>
                </div>
            </div>
        </div>
    </div>
</div>

<footer class="mt-auto bg-success text-white text-center p-3">
    &copy; 2025 Food Waste Management System | All rights reserved.
</footer>

</body>
</html>
