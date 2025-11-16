<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.blood.donor.service.*, com.blood.donor.controller.*, com.blood.donor.*"%>
    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=`, initial-scale=1.0">
    <title>iDonate</title>
    <link rel="stylesheet" href="BloodDonor.css">
    <link rel="icon" type="image/x-icon" href="ChatGPT Image Jul 27, 2025, 05_59_52 PM.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,100..1000;1,9..40,100..1000&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">  
</head>
<body>

<!--navigation bar-->
<div class="nav-bar mb-3">
    <nav class="navbar navbar-expand-lg navbar-light navbar-bg">
        <div class="container-fluid">
            <img src="bd_icon.png" alt="icon" class="logo">
            <a class="navbar-brand" id="logo-text" href="#">iDonate</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="#donor-registration">Donor-Registration</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>

<% Donor d = (Donor)session.getAttribute("dname"); %>

<!--donor registration-->
<form action="blood?action=updateform" method="post">
<section class="donor-section d-flex justify-content-center align-items-center">
<div id="donor-registration">

<div class="register mt-4">Registration</div>  

<div class="form-floating">
  <input type="text" class="form-control" id="floatingInput" placeholder="full name" 
         name="name" value="<%= d.getName() %>">
  <label for="floatingInput" class="d-flex w-100">Full Name <i class="bi bi-person ms-auto"></i></label>
</div>

<div class="form-floating mb-3">
  <input type="email" class="form-control" id="floatingEmail" placeholder="nameExample@gmail.com" 
         name="email" value="<%= d.getEmail() %>">
  <label for="floatingEmail" class="d-flex w-100">Email <i class="bi bi-envelope-at ms-auto"></i></label>
</div>

<div class="form-floating mb-3">
  <input type="number" class="form-control" id="floatingPhone" placeholder="mobile number" 
         name="phoneNumber" value="<%= d.getNumber() %>">
  <label for="floatingPhone" class="d-flex w-100">Phone Number <i class="bi bi-telephone-plus ms-auto"></i></label>
</div>

<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingLocation" placeholder="Address" 
         name="location" value="<%= d.getLocation() %>">
  <label for="floatingLocation" class="d-flex w-100">Location <i class="bi bi-geo-alt ms-auto"></i></label>
</div>

<div class="form-floating mb-3">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="bloodGroup">
    <option value="A+" <%= "A+".equals(d.getGroup()) ? "selected" : "" %>>A+</option>
    <option value="A-" <%= "A-".equals(d.getGroup()) ? "selected" : "" %>>A-</option>
    <option value="B+" <%= "B+".equals(d.getGroup()) ? "selected" : "" %>>B+</option>
    <option value="B-" <%= "B-".equals(d.getGroup()) ? "selected" : "" %>>B-</option>
    <option value="AB+" <%= "AB+".equals(d.getGroup()) ? "selected" : "" %>>AB+</option>
    <option value="AB-" <%= "AB-".equals(d.getGroup()) ? "selected" : "" %>>AB-</option>
    <option value="O+" <%= "O+".equals(d.getGroup()) ? "selected" : "" %>>O+</option>
    <option value="O-" <%= "O-".equals(d.getGroup()) ? "selected" : "" %>>O-</option>
  </select>
  <label for="floatingSelect">Blood Group</label>
</div>

<div>
  <button type="submit" class="submit-button">Edit Details</button>
</div>

</div>
</section>
</form>

<!--footer-->
<footer>
  <div class="footer-section">
    <span class="icon-round"><i class="bi bi-facebook"></i></span>
    <span class="icon-round"><i class="bi bi-instagram"></i></span>
    <span class="icon-round"><i class="bi bi-whatsapp"></i></span>
    <span class="icon-round"><i class="bi bi-twitter"></i></span>
    <span class="icon-round"><i class="bi bi-youtube"></i></span>
  </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="bd.js"></script>    
</body>
</html>
