package it.beije.malang.web;

public class User {
	
	private String name;
	private String surname;
	private String email;
	private String phone;
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getSurname() {
		return surname;
	}
	
	public void setSurname(String surname) {
		this.surname = surname;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(name).append(" ")
		.append(surname).append(" ")
		.append(email).append(" ")
		.append(phone);
		
		return sb.toString();
	}

}
