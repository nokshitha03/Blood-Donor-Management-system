package com.blood.donor;

public class Donor {
	
	private String name;
	private String email;
	private long phoneNumber;
	private String bloodGroup;
	private String location;
	
	public Donor(){

	}
	
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getEmail() {
		return this.email;
	}
	
	public void setNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	
	public long getNumber() {
		return this.phoneNumber;
	}
	
	public void setGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	
	public String getGroup() {
		return this.bloodGroup;
	}
	
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getLocation() {
		return this.location;
	}
	
	
	
	
	
	
	public Donor(String name, String email, long phoneNumber, String bloodGroup, String location) {
		this.name = name;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.bloodGroup = bloodGroup;
		this.location = location;
	}
	
	
	public String toString() {
		return "Name : "+this.name+"Email : "+this.email+"Phone Number : "+this.phoneNumber+"Blood Group : "+this.bloodGroup+"Location : "+this.location;
	}
	
	
	

}
