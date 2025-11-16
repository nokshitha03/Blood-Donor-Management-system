package com.blood.donor.service;
import java.sql.*;
import java.util.*;
import com.blood.donor.*;
import com.blood.donor.util.*;
import jakarta.servlet.http.HttpServlet;

public class BDservice extends HttpServlet{
	
	public Donor getDonorByName(String name) throws Exception{
		Connection con = BConnection.getConnection();
		PreparedStatement pst = con.prepareStatement("select * from donors where name=?");
		pst.setString(1, name);
		ResultSet res = pst.executeQuery();
		Donor d = new Donor();
		if(res.next()) {
			d.setName(name);
			d.setEmail(res.getString("email"));
			d.setNumber(res.getLong("phoneNumber"));
			d.setGroup(res.getString("bloodGroup"));
			d.setLocation(res.getString("location"));
			return d;
		}else {
			return null;
		}
		
	}
	
	public void login(Donor d) {
		
	}
	
	public void update(Donor d) throws Exception{
		Connection con = BConnection.getConnection();
        PreparedStatement pst = con.prepareStatement("update  donors set email=?, phoneNumber=?, bloodGroup=?, location=? where name=?");
        pst.setString(1, d.getEmail());
        pst.setLong(2, d.getNumber());
        pst.setString(3, d.getGroup());
        pst.setString(4, d.getLocation());
        pst.setString(5, d.getName());
        
        pst.executeUpdate();
	}
	
	public void delete(String name) throws Exception{
		Connection con = BConnection.getConnection();
		PreparedStatement pst = con.prepareStatement("delete from donors where name=?");
		pst.setString(1, name);
		pst.executeUpdate();
	}
	
	
	public List<Donor> getAllDonor() throws Exception{
		Connection con = BConnection.getConnection();
		Statement stmt = con.createStatement();
		ResultSet res = stmt.executeQuery("select * from donors");
		List<Donor> li = new ArrayList();
		
		while(res.next()) {
			Donor d = new Donor();
			d.setName(res.getString("name"));
			d.setEmail(res.getString("email"));
			d.setNumber(res.getLong("phoneNumber"));
			d.setGroup(res.getString("bloodGroup"));
			d.setLocation(res.getString("location"));
			
			li.add(d);
			
		}
		return li;
	}

}






















