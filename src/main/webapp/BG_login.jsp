<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.blood.donor.Donor" import="java.util.*"%>

  


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Blood Donor Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f3f3f3;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-container {
            background: #fff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2);
            width: 350px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #b30000;
        }
        select, input, button {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;
        }
        button {
            background: #b30000;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background: #800000;
        }
        .admin-fields {
            display: none;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Blood Donor Login</h2>
        <form action="blood?action=login" method="post">
            <select id="role" onchange="toggleAdminFields()" name="role">
                <option value="">-- Select Role --</option>
                <option value="Donor">Donor Register/Search</option>
                <option value="Admin">Admin</option>
            </select>

            <!-- Admin fields (hidden by default) -->
            <div id="admin-fields" class="admin-fields">
                <input type="text" placeholder="Enter Username" name="username">
                <input type="password" placeholder="Enter Password" name="password">
            </div>

            <button type="submit">Login</button>
        </form>
    </div>

    <script>
        function toggleAdminFields() {
            let role = document.getElementById("role").value;
            let adminFields = document.getElementById("admin-fields");

            if (role === "Admin") {
                adminFields.style.display = "block";
            } else {
                adminFields.style.display = "none";
            }
        }
    </script>
</body>
</html>

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        