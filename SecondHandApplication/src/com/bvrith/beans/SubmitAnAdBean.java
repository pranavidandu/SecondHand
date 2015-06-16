package com.bvrith.beans;

public class SubmitAnAdBean {
	String adtitle, category, addescription, name, email, phone, whatsapp, city;
	int price;
	
	public SubmitAnAdBean(String adtitle, String category,
			String addescription,int price, String name, String email, String phone,
			String whatsapp, String city) {
		super();
		this.adtitle = adtitle;
		this.category = category;
		this.addescription = addescription;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.whatsapp = whatsapp;
		this.city = city;
		this.price = price;
	}
	public String getAdtitle() {
		return adtitle;
	}
	public void setAdtitle(String adtitle) {
		this.adtitle = adtitle;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getAddescription() {
		return addescription;
	}
	public void setAddescription(String addescription) {
		this.addescription = addescription;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getWhatsapp() {
		return whatsapp;
	}
	public void setWhatsapp(String whatsapp) {
		this.whatsapp = whatsapp;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
}
