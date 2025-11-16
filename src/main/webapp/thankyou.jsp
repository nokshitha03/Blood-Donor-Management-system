<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thank You</title>
    <style>
        body {
            
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center; /* horizontal center */
            align-items: center;     /* vertical center */
            
            font-family: Arial, sans-serif;
        }

        .tq {
            border: 2px solid rgb(251, 107, 107);
      
            background-color:white;
            box-shadow: 0 0 5px rgb(251, 107, 107);
            padding: 1.5rem 2rem;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 10px;
            font-size: 20px;
            font-weight: bold;
        }

        .tq span {
            margin-left: 8px;
            color: red;
            font-size: 24px;
        }
        
        .heart-img{
        height: 3.5rem;
    width: 3.5rem;
        }
    </style>
</head>
<body style="background-color:#ffedf0;">

    <div class="tq">
        Thank you for blood donation <span><img src="drop heart.png" class="heart-img"></span>
    </div>

</body>
</html>
