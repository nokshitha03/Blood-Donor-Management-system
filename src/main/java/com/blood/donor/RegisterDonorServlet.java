package com.blood.donor;

import java.sql.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/RegisterDonor")
public class RegisterDonorServlet extends HttpServlet{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		long phoneNumber = Long.parseLong(request.getParameter("phoneNumber"));
		String location = request.getParameter("location");
		String bloodGroup = request.getParameter("bloodGroup");
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_db", "root", "Df@&7456;()hjbkl");
			
			PreparedStatement pst = con.prepareStatement("insert into donors values (?,?,?,?,?)");
			
			pst.setString(1, name);
			pst.setString(2, email);
			pst.setLong(3, phoneNumber);
			pst.setString(4, bloodGroup);
			pst.setString(5, location);
			
			pst.executeUpdate();
			
			RequestDispatcher rd = request.getRequestDispatcher("thankyou.jsp");
			rd.forward(request, response);
			
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
		
	}
	
	

}
