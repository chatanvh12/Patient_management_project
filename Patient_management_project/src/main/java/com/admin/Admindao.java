package com.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.ConnectionProvider;
import com.modal.Doctor;
import com.modal.specialist;
import com.modal.userregistermodal;

public class Admindao {
	ConnectionProvider cp=new ConnectionProvider();
	Connection con=cp.register();
	PreparedStatement pst=null;

	public int register(userregistermodal um) {
		int done=2;
		try {
			pst=con.prepareStatement("insert into medical_user(full_Name, email,pass, contact_no,dob, address, address2, city, state, pin) values(?,?,?,?,?,?,?,?,?,?)");

			pst.setString(1,um.getName());
			pst.setString(2,um.getEmail());
			pst.setString(3,um.getPassword());
			pst.setString(4,um.getContact_no());
			pst.setString(5,um.getDob());
			pst.setString(6,um.getAddress());
			pst.setString(7,um.getAddress2());
			pst.setString(8,um.getCity());
			pst.setString(9,um.getState());
			pst.setInt(10,um.getPin());

			int i=pst.executeUpdate();
			if(i>0) {
				done=3;
			}

		}
		catch(Exception e) {
			done=-2;
		}
		return done;
	}

	public int addSpeciality(String speciality) {
		int f=2;
		try {
			pst=con.prepareStatement("insert into SPECIALIST(SPECIALIST_NAME) values(?)");
			pst.setString(1,speciality);

			int i=pst.executeUpdate();
			if(i>0){
				f=3;
			}
		}catch(Exception e) {
			f=-1;
			e.printStackTrace();
		}
		return f;
	}
	public List<specialist> getspecialist(){
		List<specialist> list=new ArrayList<specialist>();
		specialist sp=null;
		
		try{
			pst=con.prepareStatement("select * from SPECIALIST");
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				sp=new specialist();
				sp.setId(rs.getInt(1));
				sp.setSpecialist_name(rs.getString(2));
				list.add(sp);
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return list;
	}
	public boolean addoctor(Doctor dr){
		boolean conform=false;
		try{
			pst=con.prepareStatement("insert into doctor(FULLNAME,DOB,QUALIFICATION,SPECIALIST,EMAIL,MOBILE_NO,GENDER,ADDRESS,PASSWORD) values(?,?,?,?,?,?,?,?,?)");
			pst.setString(1,dr.getName());
			pst.setString(2,dr.getDob());
			pst.setString(3,dr.getQualification());
			pst.setInt(4,dr.getSpecialist());
			pst.setString(5,dr.getEmail());
			pst.setString(6,dr.getMobile_no());
			pst.setString(7,dr.getGender());
			pst.setString(8,dr.getAddress());
			pst.setString(9,dr.getMobile_no());
			int i=pst.executeUpdate();
			if(i>0) {
				conform=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conform;
  }
	public List<Doctor> getdoctor(){
		List<Doctor> list=new ArrayList<Doctor>();
		Doctor dr=null;
		try {
			pst=con.prepareStatement("select doctor.Id,doctor.FULLNAME,doctor.DOB,doctor.QUALIFICATION,SPECIALIST.Specialist_name,doctor.EMAIL,doctor.MOBILE_NO,doctor.GENDER,doctor.ADDRESS  from doctor inner join specialist on doctor.specialist=specialist.id order by id desc");
			ResultSet rs=pst.executeQuery();
			specialist s=new specialist();
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
				
				
				list.add(dr);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public  Doctor getdoctorbyid(int id){
		Doctor dr=null;
		try {
			pst=con.prepareStatement("select * from doctor where id=?");
			pst.setInt(1,id);
			ResultSet rs=pst.executeQuery();
			specialist s=new specialist();
			while(rs.next()) {
				dr=new Doctor();
				dr.setId(rs.getInt(1));
				dr.setName(rs.getString(2));
				dr.setDob(rs.getString(3));
				dr.setQualification(rs.getString(4));
				dr.setSpecialist_name(rs.getString(5));
				dr.setEmail(rs.getString(6));
				dr.setMobile_no(rs.getString(7));
				dr.setGender(rs.getString(8));
				dr.setAddress(rs.getString(9));
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dr;
	}
	public boolean updatedoctor(Doctor dr,int id) {
		boolean a=false;
		try {
			pst=con.prepareStatement("Update doctor set FULLNAME=?,EMAIL=?,MOBILE_NO=?,ADDRESS=?,PASSWORD=? where id=? ");
			pst.setString(1,dr.getName());
			pst.setString(2,dr.getEmail());
			pst.setString(3,dr.getMobile_no());
			pst.setString(4,dr.getAddress());
			pst.setInt(6,id);
			pst.setString(5,dr.getMobile_no());
			//System.out.println(id);
			int i=pst.executeUpdate();
			if(i>0) {
				a=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
			a=false;
			System.out.println(e);
		}
		return a;
	}
	public boolean deleteDoctor(int id) {
		boolean a=false;
		try {
			pst=con.prepareStatement("delete from doctor where id=?");
			pst.setInt(1, id);
			int i=pst.executeUpdate();
			if(i>0) {
				a=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return a;
	}
}
