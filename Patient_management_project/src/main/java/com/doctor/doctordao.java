package com.doctor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.ConnectionProvider;
import com.modal.Appointmentmodal;
import com.modal.Doctor;

public class doctordao {
	ConnectionProvider cp=new ConnectionProvider();
	Connection con=cp.register();
	PreparedStatement pst=null;
	
	public Doctor logindoctor(String email, String mobile) {
		System.out.println(email);
		System.out.println(mobile);
		boolean a=false;
		Doctor dr=null;
		try{
			pst=con.prepareStatement(" select * from doctor where email=? and PASSWORD=?");
			pst.setString(1,email);
			pst.setString(2,mobile);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				dr=new Doctor();
				dr.setId(rs.getInt(1));
				dr.setName(rs.getString(2 ));
				dr.setDob(rs.getString(3));
				dr.setQualification(rs.getString(4));
				dr.setSpecialist_name(rs.getString(5));
				dr.setEmail(rs.getString(6));
				dr.setMobile_no(rs.getString(7));
				dr.setGender(rs.getString(8));
				dr.setAddress(rs.getString(9));
				a=true;
			}
			System.out.println(a);
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println(e);
		}
		return dr;
	}
	 public List<Appointmentmodal> getappointmentbyid(int doctorid) {
		 List<Appointmentmodal> list=new ArrayList<Appointmentmodal>();
		 Appointmentmodal am=null;
		 try {
			 pst=con.prepareStatement("select * from appointment where DOCTOR_ID=?");
			 pst.setInt(1,doctorid);
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
	 public boolean updatestatus(String status,int id) {
		 boolean conform=false;
		 try {
			 pst=con.prepareStatement("update appointment set STATUS=? where USERID=?");
			 pst.setString(1,status);
			 pst.setInt(2, id);
			 int i=pst.executeUpdate();
			 if(i>0) {
				 conform=true;
			 }
		 }catch(Exception e) {
			 System.out.println(e);
		 }
		 System.out.println(conform);
		 return conform;
	 }
}
