<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.blood.donor.Donor" import="java.util.*"%>
    <%@ page import="com.blood.donor.service.*" %>

    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
    background-color: #fff3f3;
    
}
.admin-heading{
    
    font-size: 35px;
    font-weight: 600;
    display: flex;
    align-items: center;
    justify-content: center;
}
.admin-heading img{
    height: 4rem;
    width: 4rem;
    text-align: end;
}
table{
    border-collapse: separate;
  border-spacing: 0 20px;
  font-size: 20px;
    font-weight: 500;
  
}
th{
    background-color: white;
    padding: 15px 30px;
    
    margin-bottom: 20px;
    box-shadow: 0 0 7px rgba(0,0,0,0.3);
}
tr{
   box-shadow: 0 0  3px rgb(169, 42, 42); 
}
td{
    color: black;
    background-color: #ffdee5;
    padding: 15px 30px;
    text-align: center;
    
    
}

.table-div{
    
    display: flex;
    justify-content: center;
}


    </style>
</head>
<body>

    <div class="admin-heading">
        Admin Dashboard <img src="bd_icon.png" alt="">
    </div>

    <div class="table-div">
        <table >
        

        <th>Name</th>
        <th>Email ID</th>
        <th>Mobile Number</th>
        <th>Blood Group</th>
        <th>Location</th>
        <th>Action</th>
        

<% List<Donor> donors = (List<Donor>)session.getAttribute("donors"); 

for(Donor x : donors){

%>
        <tr>
            <td><%= x.getName() %></td>
            <td><%= x.getEmail() %></td>
            <td><%= x.getNumber() %></td>
            <td><%= x.getGroup() %></td>
            <td><%= x.getLocation() %></td>
            <td>
            <a href="blood?action=editform&name=<%= x.getName()%>"> edit</a>
            <a href="blood?action=deleteform&name=<%= x.getName()%>">delete</a>
            </td>
        </tr>

        <% }; %>

    </table>
    
    </div>
</body>
</html>    