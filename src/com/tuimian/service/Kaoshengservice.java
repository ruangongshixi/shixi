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
	//考生注册
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
	//考生登录验证
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
	//查询状态
	public ArrayList<Status> viewstatus(String id){
		ArrayList<Status> result=new ArrayList<>();
		conn=Db.get_connection();
		try {
			ps=conn.prepareStatement("select name,status from activity,list where id=a_id and k_id=?");
			ps.setString(1, id);
			rs=ps.executeQuery();
			while(rs.next()) {
				Status s=new Status();
				s.setActivityName(rs.getString(1));
				s.setStatus(rs.getString(2));
				result.add(s);
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
	
	//获取考生信息
	public Kaosheng getinfo(String k_id) {
		Kaosheng k=new Kaosheng();
		conn=Db.get_connection();
		try {
			ps=conn.prepareStatement("select * from kaosheng where id=?");
			ps.setString(1, k_id);
			rs=ps.executeQuery();
			rs.next();
			k.setId(rs.getString(1));
			k.setName(rs.getString(2));
			k.setCollege(rs.getString(3));
			k.setMajor(rs.getString(4));
			k.setTeacher(rs.getString(5));
			k.setPassword(rs.getString(6));
			rs.close();
			ps.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return k;
	}
	
	//更新考生信息
	public boolean changeinfo(Kaosheng k) {
		conn=Db.get_connection();
		try {
			ps=conn.prepareStatement("update kaosheng set name=?,college=?,major=?,teacher=?,password=? where id=?");
			ps.setString(1, k.getName());
			ps.setString(2, k.getCollege());
			ps.setString(3, k.getMajor());
			ps.setString(4, k.getTeacher());
			ps.setString(5, k.getPassword());
			ps.setString(6, k.getId());
			ps.executeUpdate();
			ps.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return false;
		}
		return true;
	}
	
	
	
	
	
	
	
}
