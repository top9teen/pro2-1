package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bru.model.CustomerBean;
import com.bru.model.DetailrentBean;
import com.bru.model.UserBean;
import com.bru.util.ConnectDB;

@Repository
public class AdminDao {

	
public UserBean bbxx(String i) throws SQLException{
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
	UserBean bean = new UserBean();
		try {
		sql.append(" SELECT * FROM user WHERE  idcard = ?  ");
		
		prepared = conn.prepareStatement(sql.toString());
		prepared.setString(1,i);


		ResultSet rs = prepared.executeQuery();

		while (rs.next()) {
			
			bean.setIdcard(rs.getString("idcard"));
	
		}

	} catch (Exception e) {
		e.printStackTrace();
		
			
		}
		finally {
			conn.close();
		}
		return bean;
		
	}

public void vvvv(UserBean bean) throws SQLException{
	ConnectDB re = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection rent = re.openConnect();
	try {sql.append("INSERT INTO user(idcard,password,status,fristname,lastname,address,telephone,gender)VALUES(?,?,?,?,?,?,?,?)");
	prepared = rent.prepareStatement(sql.toString());
	prepared.setString(1, bean.getIdcard());
	prepared.setString(2, bean.getPassword());
	prepared.setString(3, bean.getStatus());
	prepared.setString(4, bean.getFristname());
	prepared.setString(5, bean.getLastname());
	prepared.setString(6, bean.getAddress());
	prepared.setString(7, bean.getTelephone());
	prepared.setString(8, bean.getGender());

	
	prepared.executeUpdate();
	}
	catch (Exception e) {
		e.printStackTrace();
}

	finally {
		rent.close();
	}
	
}

public List<UserBean> listuse() throws SQLException{
	List<UserBean> list = new ArrayList<>();
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection conn = con.openConnect();
UserBean bean = new UserBean();
	try {
	sql.append(" SELECT * FROM user ");
	
	prepared = conn.prepareStatement(sql.toString());
	

	ResultSet rs = prepared.executeQuery();

	while (rs.next()) {
				bean = new UserBean();
		bean.setIdcard(rs.getString("idcard"));
		bean.setPassword(rs.getString("password"));
		bean.setFristname(rs.getString("fristname"));
		bean.setStatus(rs.getString("status"));
		bean.setLastname(rs.getString("lastname"));
		bean.setAddress(rs.getString("address"));
		bean.setTelephone(rs.getString("telephone"));
		bean.setGender(rs.getString("gender"));
		list.add(bean);
	}

} catch (Exception e) {
	e.printStackTrace();
	
		
	}
	finally {
		conn.close();
	}
	return list;
	
}

public List<CustomerBean> listcus() throws SQLException{
	List<CustomerBean> list = new ArrayList<>();
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection conn = con.openConnect();
	CustomerBean bean = new CustomerBean();
	try {
	sql.append(" SELECT * FROM customer ");
	
	prepared = conn.prepareStatement(sql.toString());
	

	ResultSet rs = prepared.executeQuery();

	while (rs.next()) {
				bean = new CustomerBean();
		bean.setCuIdcard(rs.getString("cu_idcard"));
		bean.setCuFname(rs.getString("cu_fname"));
		bean.setCuLastname(rs.getString("cu_lastname"));
		bean.setCuAddress(rs.getString("cu_address"));
		bean.setCuTelephone(rs.getString("cu_telephone"));

		list.add(bean);
	}

} catch (Exception e) {
	e.printStackTrace();
	
		
	}
	finally {
		conn.close();
	}
	return list;
	
}
//end class 
}
