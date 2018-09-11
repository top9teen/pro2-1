package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.bru.model.RentBean;
import com.bru.util.ConnectDB;









@Repository
public class RentDao {
	
	public void insert(RentBean bean) throws SQLException{
		ConnectDB re = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection rent = re.openConnect();
		try {sql.append("INSERT INTO detailrent(CB001,CC001,CC002,CD001,ID_Card)VALUES(?,?,?,?,?)");
		prepared = rent.prepareStatement(sql.toString());
		prepared.setInt(1, bean.getCB001());
		prepared.setInt(2, bean.getCC001());
		prepared.setInt(3, bean.getCC002());
		prepared.setInt(4, bean.getCD001());
		prepared.setString(5, bean.getIdcard());
		prepared.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
	}

		finally {
			rent.close();
		}
		
	}
	

}

