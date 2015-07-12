package com.bvrith.beans;

public class MessageBean {
	String id;
	String fromemail, toemail, message;
	public String getId() {
		return id;
	}
	public void setId(String id) {
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
	public MessageBean(String id, String fromemail, String toemail,
			String message) {
		super();
		this.id = id;
		this.fromemail = fromemail;
		this.toemail = toemail;
		this.message = message;
	}
	
	
	
	
}