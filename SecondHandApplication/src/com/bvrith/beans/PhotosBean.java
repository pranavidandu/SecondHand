package com.bvrith.beans;

public class PhotosBean {
	String photo1, photo2, photo3;

	public String getPhoto1() {
		return photo1;
	}

	public void setPhoto1(String photo1) {
		this.photo1 = photo1;
	}

	public String getPhoto2() {
		return photo2;
	}

	public void setPhoto2(String photo2) {
		this.photo2 = photo2;
	}

	public String getPhoto3() {
		return photo3;
	}

	public void setPhoto3(String photo3) {
		this.photo3 = photo3;
	}

	public PhotosBean(String photo1, String photo2, String photo3) {
		super();
		this.photo1 = photo1;
		this.photo2 = photo2;
		this.photo3 = photo3;
	}
	
}
