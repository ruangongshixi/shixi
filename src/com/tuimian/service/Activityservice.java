package com.tuimian.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.tuimian.db.Db;
import com.tuimian.domain.Activity;

public class Activityservice {
	Connection conn=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	//获得所有的活动信息
	public ArrayList<Activity> getActivity(){
		ArrayList<Activity> activity=new ArrayList<>();
		conn=Db.get_connection();
		try {
			ps=conn.prepareStatement("select * from activity");
			rs=ps.executeQuery();
			while(rs.next()) {
					Activity ac=new Activity();
					ac.setId(rs.getInt(1));
					ac.setName(rs.getString(2));
					ac.setStart_time(rs.getDate(3));
					ac.setEnd_time(rs.getDate(4));
					ac.setHolder(rs.getString(5));
					ac.setContact(rs.getString(6));
					ac.setBeizhu(rs.getString(7));
					activity.add(ac);
			}
			ps.close();
			rs.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
				
		}
		return activity;
	}
}
