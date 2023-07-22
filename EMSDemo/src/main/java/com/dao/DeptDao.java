package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import com.entity.department;


public class DeptDao {

	private Connection conn;

	public DeptDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean DeptRegister(department d) {
		boolean f= false;
		try {
			String sql = "insert into department(fullname,email,password) values(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, d.getFullname());
			ps.setString(2, d.getEmail());
			ps.setString(3, d.getPassword());

			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
		
	}


public department login(String email , String password) {
	  department d = null;
	  
	  try {
	  String sql = "select * from department where email=? and password=?";
	  PreparedStatement ps = conn.prepareStatement(sql);
	  ps.setString(1, email);
	  ps.setString(2, password);
	  ResultSet rs = ps.executeQuery();
	  
	  while(rs.next())
	  {
		  d = new department();
		  d.setId(rs.getInt(1));
		  d.setFullname(rs.getString(2));
		  d.setEmail(rs.getString(3));
		  d.setPassword(rs.getString(4));
		  
	  }
	
  } catch (Exception e) {
	  e.printStackTrace();
}
	  
	return d;
	  
}
}
