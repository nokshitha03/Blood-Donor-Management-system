



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Blood Donor</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f4f6f9;
        }

        /* Top Navbar */
        .navbar {
            background-color: #c62828;
            color: white;
            padding: 15px 20px;
            text-align: center;
            font-size: 22px;
            font-weight: bold;
        }

        /* Sidebar */
        .sidebar {
            width: 220px;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            background: #2c3e50;
            padding-top: 60px;
        }

        .sidebar a {
            display: block;
            color: white;
            padding: 15px 20px;
            text-decoration: none;
            font-size: 16px;
        }

        .sidebar a:hover {
            background: #34495e;
        }

        /* Main Content */
        .main-content {
            margin-left: 220px;
            padding: 20px;
        }

        .card {
            background: white;
            padding: 25px;
            margin-bottom: 20px;
            border-radius: 8px;
            box-shadow: 0px 2px 6px rgba(0,0,0,0.1);
        }

        .card h2 {
            margin: 0;
            font-size: 20px;
            color: #c62828;
        }

        .logout-btn {
            display: inline-block;
            padding: 10px 18px;
            background: #e74c3c;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 14px;
            margin-top: 15px;
        }

        .logout-btn:hover {
            background: #c0392b;
        }
    </style>
</head>
<body>

    <!-- Top Navbar -->
    <div class="navbar">
        Admin Dashboard - Blood Donor System
    </div>

    <!-- Sidebar -->
    <div class="sidebar">
        <a href="blood?action=getAllDonors">Get All Donor Details</a>
        <a href="addDonor.jsp">Add New Donor</a>
        <a href="searchDonor.jsp">Search Donor</a>
        <a href="blood?action=logout" class="logout-btn">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="card">
            <h2>Welcome, Admin!</h2>
            <p>Use the sidebar to manage blood donor records.</p>
        </div>

        <div class="card">
            <h2>Quick Actions</h2>
            <p>
                <a href="blood?action=getAllDonors">📋 View All Donors</a> <br><br>
                <a href="addDonor.jsp">➕ Register New Donor</a> <br><br>
                <a href="searchDonor.jsp">🔎 Search Donor by Blood Group</a>
            </p>
        </div>
    </div>

</body>
</html>

