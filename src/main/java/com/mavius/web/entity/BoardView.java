package com.mavius.web.entity;

import java.util.Date;

public class BoardView extends Board {
	
	
	private int num;
	private int replyCnt;
	
	
	public BoardView() {
		// TODO Auto-generated constructor stub
	}


	public BoardView(int no, String title, String content, Date regDate, String writerId, String catalog, String category, int hit,
			int recommend, int replyCnt) {
		super(no, title, content, regDate, writerId, catalog, category, hit, recommend);
		this.replyCnt = replyCnt;
	}
	
	public BoardView(int num, int no, String title, String content, Date regDate, String writerId, String catalog, String category, int hit,
			int recommend, int replyCnt) {
		super(no, title, content, regDate, writerId, catalog, category, hit, recommend);
		this.num = num;
		this.replyCnt = replyCnt;
	}


	public int getReplyCnt() {
		return replyCnt;
	}
	
	
	
	
}
