package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.entity.event;

public class EventDao {
 
	private Connection conn;

	public EventDao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean eddEvent(event e) {
		boolean f= false;
		
		try {
			String sql = "insert into event(dept_name,event_category,event_date,event_topic,resource_person_name,resource_person_details,broucher,image1,image2,description) values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps =conn.prepareStatement(sql);
			ps.setString(1, e.getDeptname());
			ps.setString(2, e.getEventCategory());
			ps.setString(3, e.getEventDate());
			ps.setString(4, e.getEventTopic());
			ps.setString(5, e.getResourcePersonName());
			ps.setString(6, e.getResourcedPersonDetails());
			ps.setString(7, e.getBroucher() );
			ps.setString(8, e.getImage1());
			ps.setString(9, e.getImage2());
			ps.setString(10, e.getDescription());
		
           int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
			
			
			
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		return f;
	}
	
	public List<event> getAllEventByLoginDept(int id){
		
		
		List<event> list = new ArrayList<event>();
		event e = null;
		try {
			String sql ="select * from event where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				e=new event();
				e.setId(rs.getInt(1));
				e.setDeptname(rs.getString(2));
				e.setEventCategory(rs.getString(3));
				e.setEventDate(rs.getString(4));
				e.setEventTopic(rs.getString(5));
				e.setResourcePersonName(rs.getString(6));
				e.setResourcedPersonDetails(rs.getString(7));
				e.setBroucher(rs.getString(8));
				e.setImage1(rs.getString(9));
				e.setImage2(rs.getString(10));
				e.setDescription(rs.getString(11));
				list.add(e);
			}
			
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
		return list;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
