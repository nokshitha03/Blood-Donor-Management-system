package com.blood.donor.controller;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import com.blood.donor.service.*;
import java.util.*;
import com.blood.donor.*;

@WebServlet("/blood")

public class BDcontroller extends HttpServlet{
	
	RequestDispatcher rd;
	BDservice service = new BDservice();
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		String action = request.getParameter("action");
		
		try {
			switch(action) {
			case "editform":{
				editForm(request, response);
				break;
			}
			case "updateform":{
				updateForm(request, response);
				break;
			}
			case "deleteform":{
				deleteForm(request, response);
				break;
			}
			case "getAllDonors":{
				getAllDonors(request, response);
				break;
			}
			case "login":{
				login(request, response);
				break;
			}
			case "logout":{
				logout(request, response);
			}
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		doGet(request, response);
	}
	
	public void login(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String role = request.getParameter("role");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if(role.equals("Donor")) {
			rd = request.getRequestDispatcher("BloodDonor.html");
			rd.forward(request, response);
			//response.sendRedirect("BloodDonor.html");
		}
		else if(role.equals("Admin")){
			if(username.equals("Nokshitha") && password.equals("9866272871")){
				
				rd = request.getRequestDispatcher("B_adminDashboard.jsp");
				rd.forward(request, response);
				//response.sendRedirect("getAllDonors.jsp");
			}
		}else {
			response.sendRedirect("BG_login.sjp");
		}
	}
	
	public void logout(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession(false);
		if(session!=null) {
			session.invalidate();
		}
		else {
			response.sendRedirect("BG_login.jsp");
		}
	}
	
	public void editForm(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String name = request.getParameter("name");
		Donor dn = service.getDonorByName(name);
		HttpSession hs = request.getSession();
		hs.setAttribute("dname", dn);
		response.sendRedirect("Beditform.jsp");
		
	}
	
	public void updateForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    String name = request.getParameter("name");
	    String email = request.getParameter("email");
	    String phoneNumber = request.getParameter("phoneNumber");
	    String location = request.getParameter("location");
	    String bloodGroup = request.getParameter("bloodGroup");

	    Donor d = new Donor();
	    d.setName(name);
	    d.setEmail(email);
	    d.setNumber(Long.parseLong(phoneNumber));
	    d.setLocation(location);
	    d.setGroup(bloodGroup);

	    service.update(d);

	    rd = request.getRequestDispatcher("blood?action=getAllDonors");
	    rd.forward(request, response);
	}

		
	
	
	public void deleteForm(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String name = request.getParameter("name");
		service.delete(name);
		rd= request.getRequestDispatcher("blood?action=getAllDonors");
		rd.forward(request, response);
		
	}
	
	public void getAllDonors(HttpServletRequest request, HttpServletResponse response) throws Exception{
		List<Donor> donors = service.getAllDonor();
		HttpSession hs = request.getSession();
		hs.setAttribute("donors", donors);
		rd = request.getRequestDispatcher("getAllDonors.jsp");
		rd.forward(request, response);
	}
	

}























