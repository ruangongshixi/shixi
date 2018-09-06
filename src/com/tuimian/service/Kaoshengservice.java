package com.tuimian.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.tuimian.db.Db;
import com.tuimian.domain.Admin;
import com.tuimian.domain.Kaosheng;
import com.tuimian.domain.Status;

public class Kaoshengservice {
	Connection conn=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	//¿¼Éú×¢²á
	public boolean register(Kaosheng k) {
		boolean result=false;
		conn=Db.get_connection();
		try {
			ps=conn.prepareStatement("insert into kaosheng values(?,?,?,?,?,?)");
			ps.setString(1, k.getId());
			ps.setString(2, k.getName());
			ps.setString(3, k.getCollege());
			ps.setString(4, k.getMajor());
			ps.setString(5, k.getTeacher());
			ps.setString(6, k.getPassword());
			if(ps.executeUpdate()>0) {
				result=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	//¿¼ÉúµÇÂ¼ÑéÖ¤
	public boolean checkKaosheng(Kaosheng k) {
		boolean result=false;
		conn=Db.get_connection();
		try {
			ps=conn.prepareStatement("select * from kaosheng where id=? and password=?");
			ps.setString(1, k.getId());
			ps.setString(2, k.getPassword());
			rs=ps.executeQuery();
			if(rs.next()) {
				result=true;
			}
			rs.close();
			ps.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	//²éÑ¯×´Ì¬
	public ArrayList<Status> viewstatus(String id){
		ArrayList<Status> result=new ArrayList<>();
		conn=Db.get_connection();
		ps=conn.prepareStatement("")
		return result;
	}
	
	
	
	
	
	
	
	
	
	
}
