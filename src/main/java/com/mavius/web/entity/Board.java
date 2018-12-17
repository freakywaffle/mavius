package com.mavius.web.entity;

import java.util.Date;

public class Board {
	private int no;
	private String title;
	private String content;
	private Date regDate;
	private String writerId;
	private String catalog;
	private String category;
	private int hit;
	private int recommend;
	
	public Board(int no, String title, String content, Date regDate, String writerId, String catalog, String category, int hit,
			int recommend) {
		this.no = no;
		this.title = title;
		this.content = content;
		this.regDate = regDate;
		this.writerId = writerId;
		this.catalog = catalog;
		this.category = category;
		this.hit = hit;
		this.recommend = recommend;
	}
	public Board(String title, String content, String writerId, String catalog, String category) {
		this.title = title;
		this.content = content;
		this.writerId = writerId;
		this.catalog = catalog;
		this.category = category;
	}
	
	public Board() {
		super();
	
	}
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getCatalog() {
		return catalog;
	}
	public void setCatalog(String catalog) {
		this.catalog = catalog;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	
	
}
