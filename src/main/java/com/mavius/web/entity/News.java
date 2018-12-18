package com.mavius.web.entity;

import java.util.Date;

public class News {
	
	private int num;
	private String title;
	private String content;
	private Date registrationDate;
	private String writerId;
	private String category;
	private int hit;
	
	public News() {
		super();
	}
	
	public News(int num, String title, String content, Date registrationDate, String writerId, String category, int hit) {
		super();
		this.num = num;
		this.title = title;
		this.content = content;
		this.registrationDate = registrationDate;
		this.writerId = writerId;
		this.category = category;
		this.hit = hit;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegistrationDate() {
		return registrationDate;
	}
	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}

	@Override
	public String toString() {
		return "News [num=" + num + ", title=" + title + ", content=" + content + ", registrationDate="
				+ registrationDate + ", writerId=" + writerId + ", category=" + category + ", hit=" + hit + "]";
	}
	

	
	

}
