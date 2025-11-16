<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.blood.donor.Donor" import="java.util.*"%>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="BG_display.css">
    
</head>
<body>








    
    
    <%
    
    List<Donor> donorList =(List<Donor>)request.getAttribute("donors");
    if(donorList!=null && !donorList.isEmpty()){
    	for(Donor d : donorList){
    
    
    %>
    
    

    <div class="card-container" >
    
    
    
    
    

        

        <div class="card">



                   
        
        
        
            <h3 class="card-heading"><%= d.getName() %></h3>
            
            
            
            
            
            
            <div class="donor-details-grid">
            
            <div class="label">Email ID :</div>
            <div class="value"><%= d.getEmail() %></div>
            <div class="label">Mobile Number :</div>
            <div class="value"><%= d.getNumber() %></div>
            <div class="label">Blood Group :</div>
            <div class="value"><%= d.getGroup() %></div>
            <div class="label">Location :</div>
            <div class="value"><%= d.getLocation() %></div>
           </div>



        </div>
         
    </div>
    
    <%
    }
    }	else{
    		
    	
    
    %>
    
    <h3 style="color:white;">No Matching donors found</h3>
    
    <%
    
    }%>
    
</body>
</html>













    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   


    
    











