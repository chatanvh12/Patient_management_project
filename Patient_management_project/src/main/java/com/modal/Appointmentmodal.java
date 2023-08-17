package com.modal;

public class Appointmentmodal {
	int id;
	int userid;
	String name;
	String gender;
	String age;
	String apdate;
	String email;
	String pno;
    String disease;
    int doctor_id;
    String Address;
    String Status;
	public Appointmentmodal(int id, int userid, String name, String gender, String age, String apdate, String email,
			String pno, String disease, int doctor_id, String address, String status) {
		super();
		this.id = id;
		this.userid = userid;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.apdate = apdate;
		this.email = email;
		this.pno = pno;
		this.disease = disease;
		this.doctor_id = doctor_id;
		Address = address;
		Status = status;
	}
   
	public Appointmentmodal(int userid,String name, String gender, String age, String apdate, String email, String pno, String disease,
			int doctor_id, String status) {
		super();
		this.userid = userid;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.apdate = apdate;
		this.email = email;
		this.pno = pno;
		this.disease = disease;
		this.doctor_id = doctor_id;
		Status = status;
	}

	public Appointmentmodal() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getApdate() {
		return apdate;
	}
	public void setApdate(String apdate) {
		this.apdate = apdate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public int getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(int doctor_id) {
		this.doctor_id = doctor_id;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
}
