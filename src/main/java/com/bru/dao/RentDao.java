package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bru.model.DetailrentBean;

import com.bru.util.ConnectDB;


@Repository
public class RentDao {
	
	public void insert(DetailrentBean bean) throws SQLException{
		ConnectDB re = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection rent = re.openConnect();
		try {sql.append("INSERT INTO detailrent(CB001,CC001,CC002,CD001,ID_Card,Number,dateday,datemont,dateyear,alloder)VALUES(?,?,?,?,?,?,?,?,?,?)");
		prepared = rent.prepareStatement(sql.toString());
		prepared.setInt(1, bean.getCB001());
		prepared.setInt(2, bean.getCC001());
		prepared.setInt(3, bean.getCC002());
		prepared.setInt(4, bean.getCD001());
		prepared.setString(5, bean.getIdcard());
		prepared.setInt(6, bean.getNumber());
		prepared.setInt(7, bean.getDatedateday());
		prepared.setInt(8, bean.getDatedatemont());
		prepared.setInt(9, bean.getDatedateyear());
		prepared.setInt(10, bean.getAll());
		
		prepared.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
	}

		finally {
			rent.close();
		}
		
	}
	public List<DetailrentBean> Trens () throws SQLException{
		List<DetailrentBean>  list = new ArrayList<>();
		DetailrentBean bean  = new DetailrentBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		String Mo[] = { "มกราคม", "กุมภาพันธ์", "มีนาคม", "เมษายน", "พฤษภาคม", "มิถุนายน", "กรกฎาคม", "สิงหาคม",
				"กันยายน", "ตุลาคม", "พฤศจิกายน", "ธันวาคม" };

		try {
			sql.append(" SELECT * FROM  detailrent  ");
			prepared = conn.prepareStatement(sql.toString());
	

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new DetailrentBean();
				bean.setIdcard(rs.getString("ID_Card"));
				bean.setCB001(rs.getInt("CB001"));
				bean.setCC001(rs.getInt("CC001"));
				bean.setCC002(rs.getInt("CC002"));
				bean.setCD001(rs.getInt("CD001"));
				bean.setNumber(rs.getInt("Number"));
				bean.setDatedateday(rs.getInt("dateday"));
				bean.setDatedatemont(rs.getInt("datemont"));
				bean.setSimpleyear(Mo[bean.getDatedatemont()]);
				bean.setDatedateyear(rs.getInt("dateyear"));
				bean.setAll(rs.getInt("alloder"));
				list.add(bean);
			}

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		
		return list  ; 
	}
	
// end class
}

