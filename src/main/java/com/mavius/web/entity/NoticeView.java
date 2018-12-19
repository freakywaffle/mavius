package com.mavius.web.entity;

import java.util.Date;

public class NoticeView extends News {

	public NoticeView (int no, String title, String writerId, Date regDate, String catalog, int hit) {
		super(no,title,writerId,regDate,catalog,hit);
	}
	
	public NoticeView (int no, String title, String content, Date regDate, String writerId, String catalog, int hit) {
		super(no,title,content,regDate, writerId,catalog,hit);
	}
}
