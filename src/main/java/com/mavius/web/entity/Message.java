package com.mavius.web.entity;

public class Message {
	
	private int no;
	private String senderId;
	private String receiverId;
	private String content;	

	public Message(int no, String senderId, String receiverId, String content) {
		super();
		this.no = no;
		this.senderId = senderId;
		this.receiverId = receiverId;
		this.content = content;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getSenderId() {
		return senderId;
	}

	public void setSenderId(String senderId) {
		this.senderId = senderId;
	}

	public String getReceiverId() {
		return receiverId;
	}

	public void setReceiverId(String receiverId) {
		this.receiverId = receiverId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
	
}
