package com.blood.donor;

import java.sql.*;
import java.util.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/search")

public class SearchDonorServlet extends HttpServlet{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		
		String search_bg = request.getParameter("search_bg");
		String search_location = request.getParameter("search_location");
		
		
		List<Donor> matchingDonors = new ArrayList();
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_db", "root", "Df@&7456;()hjbkl");
			
			PreparedStatement pst = con.prepareStatement("select * from donors where bloodGroup=? and location=?");
			
			pst.setString(1, search_bg);
			pst.setString(2, search_location);
			
			ResultSet res = pst.executeQuery();
			
			while(res.next()) {
				
				Donor d = new Donor();
				
				d.setName(res.getString("name"));
				d.setEmail(res.getString("email"));
				d.setNumber(res.getLong("phoneNumber"));
				d.setGroup(res.getString("bloodGroup"));
				d.setLocation(res.getString("location"));
				
				
				matchingDonors.add(d);
				
			}
			
			
			request.setAttribute("donors", matchingDonors);
			
			RequestDispatcher rd =request.getRequestDispatcher("BG_display.jsp");
			
			rd.forward(request, response);
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
	}

}
























