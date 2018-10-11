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
import com.tuimian.domain.Adminscore;
import com.tuimian.domain.Checkinfo;

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
	//审查考生资格
	public ArrayList<Checkinfo> CheckInfo(int a_id){
		ArrayList<Checkinfo> result=new ArrayList<>();
		conn=Db.get_connection();
		try {
			ps=conn.prepareStatement("select kaosheng.id,kaosheng.name,college,major,kaosheng.teacher,status "
					+ "from kaosheng,activity,list where activity.id=? "
					+ "and activity.id=list.a_id and kaosheng.id=list.k_id and status='待审'");
			ps.setInt(1, a_id);
			rs=ps.executeQuery();
			while(rs.next()) {
				Checkinfo c=new Checkinfo();
				c.setId(rs.getString(1));
				c.setName(rs.getString(2));
				c.setColloge(rs.getString(3));
				c.setMajor(rs.getString(4));
				c.setTeacher(rs.getString(5));
				c.setStatus(rs.getString(6));
				result.add(c);
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
	//修改考生的申请状态
	public boolean changeStatus(String a_id,String k_id,String status) {
		boolean result=false;
		conn=Db.get_connection();
		try {
			ps=conn.prepareStatement("update list set status=? where a_id=? and k_id=?");
			ps.setString(1, status);
			ps.setString(2, a_id);
			ps.setString(3, k_id);
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
	//获取活动的学生成绩
	public ArrayList<Adminscore> getscore(String a_id){
		ArrayList<Adminscore> a=new ArrayList<>();
		conn=Db.get_connection();
		try {
			ps=conn.prepareStatement("select k_id,name,score from list,kaosheng where a_id=? and k_id=id and score=0");
			ps.setInt(1, Integer.parseInt(a_id));
			rs=ps.executeQuery();
			while(rs.next()) {
				Adminscore a1=new Adminscore();
				a1.setA_id(a_id);
				a1.setK_id(rs.getString(1));
				a1.setName(rs.getString(2));
				a1.setScore(rs.getDouble(3));
				a.add(a1);
			}
			rs.close();
			ps.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;
	}
	//添加学生成绩
	public boolean addscore(String a_id,String k_id,double score) {
		boolean result=false;
		conn=Db.get_connection();
		try {
			ps=conn.prepareStatement("update list set score=? where a_id=? and k_id=?");
			ps.setDouble(1, score);
			ps.setString(2, a_id);
			ps.setString(3, k_id);
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
