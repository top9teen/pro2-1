package com.bru.util;



import java.sql.Connection;
import java.sql.DriverManager;




public class ConnectDB {
	public Connection openConnect () {
		Connection connect = null ;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			connect = DriverManager.getConnection("jdbc:mysql:///projec?useUnicode=true&characterEncodeing=utf-8","root","");
		//	connect = (Connection) DriverManager.getConnection ("jdbc:mysql://localhost/projec" + "?user=root&password=");
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
	}
		return connect;
	
	}

}
