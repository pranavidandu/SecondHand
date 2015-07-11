package com.bvrith.beans;

public class MessageBean {
	int id;
	String fromemail, toemail, message;
	public MessageBean(String fromemail, String toemail, String message) {
		super();
		this.fromemail = fromemail;
		this.toemail = toemail;
		this.message = message;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFromemail() {
		return fromemail;
	}
	public void setFromemail(String fromemail) {
		this.fromemail = fromemail;
	}
	public String getToemail() {
		return toemail;
	}
	public void setToemail(String toemail) {
		this.toemail = toemail;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}