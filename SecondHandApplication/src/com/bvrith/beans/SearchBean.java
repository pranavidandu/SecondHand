package com.bvrith.beans;

public class SearchBean {
	String city, category;

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public SearchBean(String city, String category) {
		super();
		this.city = city;
		this.category = category;
	}
	
}
