package com.bvrith.beans;

public class AdBean {
	String id;
	String  adtitle, category, addescription, file; 
	int price;
	String name, email, phone, whatsapp, city;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getFile() {
		String image = file.substring(66);
		return image;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
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

	public AdBean(String id, String adtitle, String category,
			String addescription, String file, int price, String name,
			String email, String phone, String whatsapp, String city) {
		super();
		this.id = id;
		this.adtitle = adtitle;
		this.category = category;
		this.addescription = addescription;
		this.file = file;
		this.price = price;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.whatsapp = whatsapp;
		this.city = city;
	}
}