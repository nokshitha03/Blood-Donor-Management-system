package com.blood.donor.util;

import java.sql.*;

public class BConnection {
	
	public static Connection getConnection() throws Exception{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_db", "root", "Df@&7456;()hjbkl");
		if(con!=null) {
			return con;
		}else {
			return null;
		}
	}

}
