package com.tuimian.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.tuimian.db.Db;
import com.tuimian.domain.List;
import com.tuimian.domain.Score;

public class Listservice {
	Connection conn=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	public boolean addList(List list) {
		boolean result=false;
		conn=Db.get_connection();
		try {
			ps=conn.prepareStatement("insert into list(a_id,k_id) values(?,?)");
			ps.setInt(1, Integer.parseInt(list.getA_id()));
			ps.setString(2, list.getK_id());
			if(ps.executeUpdate()>0)
				result=true;
			ps.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	//获取夏令营成绩
	public ArrayList<Score> getscore(String k_id){
		ArrayList<Score> r=new ArrayList<>();
		conn=Db.get_connection();
		try {
			ps=conn.prepareStatement("select name,score from activity,list where k_id=? and id=a_id");
			ps.setString(1, k_id);
			rs=ps.executeQuery();
			while(rs.next()) {
				Score s=new Score();
				s.setName(rs.getString(1));
				s.setScore(rs.getDouble(2));
				r.add(s);
			}
			rs.close();
			ps.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return r;
	}
}
