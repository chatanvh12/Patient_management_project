package com.modal;

public class userregistermodal {
	int Id;
	String Name;
	String contact_no;
	String email;
	String dob;
	String address;
	String address2;
	String city;
	String state;
	int pin;
	String password;
	
	public userregistermodal() {
		super();
	}
	public userregistermodal(String name, String contact_no, String email, String dob, String address, String address2,
			String city, String state, int pin, String password) {
		Name = name;
		this.contact_no = contact_no;
		this.email = email;
		this.dob = dob;
		this.address = address;
		this.address2 = address2;
		this.city = city;
		this.state = state;
		this.pin = pin;
		this.password = password;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getContact_no() {
		return contact_no;
	}
	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getPin() {
		return pin;
	}
	public void setPin(int pin) {
		this.pin = pin;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
