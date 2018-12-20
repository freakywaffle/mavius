package com.mavius.web.entity;

import java.util.Date;

public class UpdateView extends News {

	public UpdateView (int no, String title, String catalog, Date regDate, String writerId, int hit) {
		super(no,title,catalog,regDate,writerId,hit);
	}
	
	public UpdateView (int no, String title, String content, Date regDate, String writerId, String catalog, int hit) {
		super(no,title,content,regDate, writerId,catalog,hit);
	}

	@Override
	public String toString() {
		return "UpdateView [getNo()=" + getNo() + ", getTitle()=" + getTitle() + ", getContent()=" + getContent()
				+ ", getRegDate()=" + getRegDate() + ", getWriterId()=" + getWriterId() + ", getCatalog()="
				+ getCatalog() + ", getHit()=" + getHit() + ", toString()=" + super.toString() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + "]";
	}
	
}
