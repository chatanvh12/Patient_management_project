package com.modal;

public class Doctor {
	int id;
	String name;
	String dob;
	String qualification;
	int specialist;
	String specialist_name;
	public String getSpecialist_name() {
		return specialist_name;
	}
	public void setSpecialist_name(String specialist_name) {
		this.specialist_name = specialist_name;
	}
	String email;
	String mobile_no;
	String gender;
	String address;
	public Doctor(String name, String dob, String qualification, int specialist, String email, String mobile_no,
			String gender, String address) {
		super();
		this.name = name;
		this.dob = dob;
		this.qualification = qualification;
		this.specialist = specialist;
		this.email = email;
		this.mobile_no = mobile_no;
		this.gender = gender;
		this.address = address;
	}
	
	public Doctor(String name, String email, String mobile_no, String address) {
		super();
		this.name = name;
		this.email = email;
		this.mobile_no = mobile_no;
		this.address = address;
	}
	public Doctor() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public int getSpecialist() {
		return specialist;
	}
	public void setSpecialist(int specialist) {
		this.specialist = specialist;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile_no() {
		return mobile_no;
	}
	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}


}


