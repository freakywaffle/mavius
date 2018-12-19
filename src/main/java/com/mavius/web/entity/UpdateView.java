package com.mavius.web.entity;

import java.util.Date;

public class UpdateView extends News {

	public UpdateView (int no, String title, String content, Date regDate, String writerId, String catalog, int hit) {
		super(no,title,content,regDate, writerId,catalog,hit);
	}
}
