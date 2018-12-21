package com.mavius.web.entity;

public class MessageView extends Message {
	
	private String title;
	private String selectContent;
	
	public MessageView(int no, String senderId, String receiverId, String content) {
		super(no, senderId, receiverId, content);
		// TODO Auto-generated constructor stub
	}

	public MessageView(int no, String senderId, String receiverId, String title , String content, String selectContent) {
		super(no, senderId, receiverId, content);
		this.title = title;
		this.selectContent = selectContent;
	}
	public MessageView(int no, String senderId, String receiverId, String title , String content) {
		super(no, senderId, receiverId, content);
		this.title = title;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSelectContent() {
		return selectContent;
	}

	public void setSelectContent(String selectContent) {
		this.selectContent = selectContent;
	}
	
	
	
	
	
}
