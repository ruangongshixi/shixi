package com.tuimian.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.omg.CORBA.Request;

import com.tuimian.db.Db;
import com.tuimian.domain.Activity;
import com.tuimian.domain.Admin;

public class Adminservice {
	Connection conn=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	public boolean checkAdmin(Admin admin) {
		boolean result=false;
		conn=Db.get_connection();
		try {
			ps=conn.prepareStatement("select * from adminer where id=? and password=?");
			ps.setString(1, admin.getId());
			ps.setString(2, admin.getPassword());
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
	//添加活动
	public boolean addActivity(Activity ac) {
		boolean result=false;
		conn=Db.get_connection();
		try {
			ps=conn.prepareStatement("insert into activity(name,start_time,end_time,holder,contact,beizhu) values(?,?,?,?,?,?)");
			ps.setString(1, ac.getName());
			ps.setDate(2, ac.getStart_time());
			ps.setDate(3, ac.getEnd_time());
			ps.setString(4, ac.getHolder());
			ps.setString(5, ac.getContact());
			ps.setString(6, ac.getBeizhu());
			if(ps.executeUpdate()>0) {
				result=true;
			}
			ps.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	//删除活动
	public boolean deleteActivity(int id) {
		boolean result=false;
		conn=Db.get_connection();
		try {
			ps=conn.prepareStatement("delete from activity where id=?");
			ps.setInt(1, id);
			if(ps.executeUpdate()>0) {
				result=true;
			}
			ps.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
}
