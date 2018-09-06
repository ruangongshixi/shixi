package com.tuimian.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tuimian.db.Db;
import com.tuimian.domain.List;

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
}
