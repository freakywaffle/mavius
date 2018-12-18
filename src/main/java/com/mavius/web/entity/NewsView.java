package com.mavius.web.entity;

import java.util.Date;

public class NewsView extends News {
	private String memberName;

	public NewsView() {
		super();
	}

	public NewsView(String memberName) {
		super();
		this.memberName = memberName;
	}

	public NewsView(int no, String title, String content, Date regDate, String writerId, String catalog, int hit) {
		super(no, title, content, regDate, writerId, catalog, hit);
		// TODO Auto-generated constructor stub
	}

	public NewsView(String title, String content, Date regDate, String writerId, int hit) {
		super(title, content, regDate, writerId, hit);
		// TODO Auto-generated constructor stub
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
	
	
}
