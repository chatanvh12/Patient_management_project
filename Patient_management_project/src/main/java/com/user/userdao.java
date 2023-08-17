package com.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.ConnectionProvider;
import com.modal.Appointmentmodal;
import com.modal.userregistermodal;

public class userdao {
ConnectionProvider cp=new ConnectionProvider();
Connection con=cp.register();

PreparedStatement pst=null;

 public userregistermodal conform(String user, String pass){
	 userregistermodal us=null;
	 try {
		pst=con.prepareStatement("select * from medical_user where email=? and pass=?");
		
		pst.setString(1,user);
		pst.setString(2,pass);
		ResultSet rs=pst.executeQuery();
		while(rs.next()){
			 us=new userregistermodal();
			
			us.setId(rs.getInt(1));
			us.setName(rs.getString(2));
			us.setEmail(rs.getString(3));
			us.setPassword(rs.getString(4));
			us.setContact_no(rs.getString(5));
			us.setDob(rs.getString(6));
			us.setAddress(rs.getString(7));
			us.setAddress2(rs.getString(8));
			us.setCity(rs.getString(9));
			us.setState(rs.getString(10));
			us.setPin(rs.getInt(11));
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.println(e);
	}
	return us;
 }
 public boolean getappointment(Appointmentmodal am) {
	 boolean a=false;
	 try {
		 pst=con.prepareStatement("insert into appointment(USERID,FULLNAME,GENDER,AGE,APPOINDATE,EMAIL,PHNO,DISEASE,DOCTOR_ID,STATUS) values(?,?,?,?,?,?,?,?,?,'pending')");
		 pst.setInt(1,am.getUserid());
		 pst.setString(2,am.getName());
		 pst.setString(3,am.getGender());
		 pst.setString(4,am.getAge());
		 pst.setString(5,am.getApdate());
		 pst.setString(6,am.getEmail());
		 pst.setString(7,am.getPno());
		 pst.setString(8,am.getDisease());
		 pst.setInt(9,am.getDoctor_id());
		 int i=pst.executeUpdate();
		 if(i>0) {
			 a=true;
		 }
	 }catch(Exception e) {
		 e.printStackTrace();
		 System.out.println(e);
	 }
	 return a;
 }
 public List<Appointmentmodal> getappointmentbyid(int userid) {
	 List<Appointmentmodal> list=new ArrayList<Appointmentmodal>();
	 Appointmentmodal am=null;
	 try {
		 pst=con.prepareStatement("select * from appointment where userid=?");
		 pst.setInt(1,userid);
		 ResultSet rs=pst.executeQuery();
		 while(rs.next()) {
			 am=new Appointmentmodal();
			 am.setId(rs.getInt(1));
			 am.setUserid(rs.getInt(2));
			 am.setName(rs.getString(3));
			 am.setGender(rs.getString(4));
			 am.setAge(rs.getString(5));
			 am.setApdate(rs.getString(6));
			 am.setEmail(rs.getString(7));
			 am.setPno(rs.getString(8));
			 am.setDisease(rs.getString(9));
			 am.setDoctor_id(rs.getInt(10));
			 am.setStatus(rs.getString(11));
			 list.add(am);
		 }
		
	 }catch(Exception e) {
		 e.printStackTrace();
		 System.out.println(e);
	 }
	 return list;
 }
 public boolean updateuserpass(String email,String pass) {
	 boolean conform=false;
	 try {
		 pst=con.prepareStatement("update MEDICAL_USER set PASS=? where email=?");
		 pst.setString(2,email);
		 pst.setString(1, pass);
		 int i=pst.executeUpdate();
		 if(i>0) {
			 conform=true;
		 }
	 }catch(Exception e) {
		 System.out.println(e);
	 }
	 return conform;
 }
}
