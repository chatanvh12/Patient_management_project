package com.modal;

public class specialist {
	int id;
	String Specialist_name;
	
	
	public specialist() {
		super();
	}
	public specialist(int id, String specialist_name) {
		super();
		this.id = id;
		Specialist_name = specialist_name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSpecialist_name() {
		return Specialist_name;
	}
	public void setSpecialist_name(String specialist_name) {
		Specialist_name = specialist_name;
	}


}
