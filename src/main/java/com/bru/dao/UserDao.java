package com.bru.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.stereotype.Repository;


import com.bru.model.UserBean;
import com.bru.util.ConnectDB;





@Repository
public class UserDao {
	
	public UserBean xx(String i,String p) throws SQLException{
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
	UserBean bean = new UserBean();
		try {
		sql.append(" SELECT * FROM user WHERE  idcard = ? AND password = ? ");
		
		prepared = conn.prepareStatement(sql.toString());
		prepared.setString(1,i);
		prepared.setString(2, p);

		ResultSet rs = prepared.executeQuery();

		while (rs.next()) {
			
			bean.setIdcard(rs.getString("idcard"));
		//	bean.setFristname(rs.getString("fristname"));
		//	bean.setLastname(rs.getString("lastname"));
		//	bean.setAddress(rs.getString("address"));
		//	bean.setTelephone(rs.getString("telephone"));
		//	bean.setGender(rs.getString("gender"));
			bean.setPassword(rs.getString("password"));
			bean.setStatus(rs.getString("status"));
		//	bean.setNo(rs.getInt("no"));
		}

	} catch (Exception e) {
		e.printStackTrace();
		
			
		}
		finally {
			conn.close();
		}
		return bean;
		
	}
	
	public void insert(UserBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append("INSERT INTO user(idcard,fristname,lastname,address,telephone,password,gender,status) VALUES(?,?,?,?,?,?,?,?)" );
			prepared = conn.prepareStatement(sql.toString());
		prepared.setString(1, bean.getIdcard());
		prepared.setString(2, bean.getFristname());
		prepared.setString(3, bean.getLastname());
		prepared.setString(4, bean.getAddress());
		prepared.setString(5, bean.getTelephone());
		prepared.setString(6, bean.getPassword());
		prepared.setString(7, bean.getGender());
		prepared.setString(8, bean.getStatus());
		prepared.executeUpdate();

		} 
		catch (Exception e) {
			e.printStackTrace();
	}

		finally {
			conn.close();
		}
	}
	public  UserBean ch(String i )throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null ;
		StringBuilder sql = new StringBuilder();
//		Connection cc = con.openConnect();
		UserBean bean = new UserBean();

		try {
 	    	//sql.append("INSERT INTO detailrent(ID_Card)VALUES(?)" );
			sql.append( " SELECT * FROM user WHERE  idcard = ?" );
		
//			prepared = cc.prepareStatement(sql.toString());
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, i);
//			prepared.setString(2, s);
		//	prepared.setString(1, bean.getIdcard());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
//				((UserBean) cc).setIdcard(rs.getString("idcard"));
//				((UserBean) cc).setStatus(rs.getString("Status"));
				bean.setIdcard(rs.getString("idcard"));
				bean.setStatus(rs.getString("status"));
				id = bean.getIdcard();
//				System.out.println(id);
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
	}
		finally {
//			con.close();
		}return bean;
	}
	String id;

	
	public void add(UserBean bean) throws Exception{
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection cons = con.openConnect();
		try {
			sql.append("INSERT INTO detailrent(ID_Card)VALUES(?)" );
			prepared = cons.prepareStatement( sql.toString());
			prepared.setString(1, bean.getIdcard());
			prepared.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			cons.close();
		}
	}
	
	
}