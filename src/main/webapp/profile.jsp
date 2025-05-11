<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
     <link rel="stylesheet" href="css/style.css"> <!-- Link to the CSS file -->
    <style>
    * {
        box-sizing: border-box;
    }

    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #e3f2fd, #fce4ec);
        color: #333;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    .navbar-fixed {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        z-index: 1030;
    }

    body {
        padding-top: 70px;
    }

    .profile-container {
        background-color: #fff;
        border-radius: 15px;
        box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
        width: 95%;
        max-width: 500px;
        padding: 40px 30px;
        text-align: center;
        transition: transform 0.3s ease;
        border-top: 5px solid #007bff;
    }

    .profile-container:hover {
        transform: scale(1.02);
    }

    .profile-container h1 {
        font-size: 28px;
        margin-bottom: 25px;
        color: #007bff;
    }

    .profile-container p {
        font-size: 18px;
        color: #555;
        margin: 10px 0;
    }

    .profile-container p strong {
        color: #333;
    }

    .profile-container a {
        display: inline-block;
        margin-top: 25px;
        padding: 12px 30px;
        background-color: #007bff;
        color: #fff;
        text-decoration: none;
        border-radius: 30px;
        font-weight: bold;
        letter-spacing: 1px;
        transition: background-color 0.3s ease;
    }

    .profile-container a:hover {
        background-color: #0056b3;
    }

    /* Responsive design */
    @media (max-width: 600px) {
        .profile-container {
            padding: 30px 20px;
        }

        .profile-container h1 {
            font-size: 24px;
        }

        .profile-container p {
            font-size: 16px;
        }

        .profile-container a {
            font-size: 14px;
            padding: 10px 20px;
        }
    }
</style>

</head>
 <!-- Navigation bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary navbar-fixed">
    <a class="navbar-brand" href="/">Food Management Portal</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
             <li class="nav-item"><a class="nav-link" href="/home">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="/donate">Donate Food</a></li>
            <li class="nav-item"><a class="nav-link" href="/request">Request Pickup</a></li>
            <li class="nav-item"><a class="nav-link" href="/organizations">Organizations</a></li>
            <li class="nav-item"><a class="nav-link" href="/profile?username=${username}">Profile</a></li>
            <li class="nav-item">
                <form action="/logout" method="get">
                    <button type="submit" class="btn btn-link nav-link">Logout</button>
                </form>
            </li>
        </ul>
    </div>
</nav>

<body>
    <div class="profile-container">
        <h1>User Profile</h1>
        <p><strong>First Name:</strong> ${user.firstName}</p>
        <p><strong>Last Name:</strong> ${user.lastName}</p>
        <p><strong>Email:</strong> ${user.email}</p>
        <p><strong>Contact Number:</strong> ${user.contactNumber}</p>
        <p><strong>Address:</strong> ${user.address}</p>
        <a href="/editProfile">Edit Profile</a>
    </div>
    
</body>
</html>
