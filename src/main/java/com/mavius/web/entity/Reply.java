package com.mavius.web.entity;

import java.util.Date;

public class Reply {
	private int no;
	private String content;
	private Date regDate;
	private String writerId;
	private int boardNo;
	
	public Reply() {
		// TODO Auto-generated constructor stub
	}

	public Reply(int no, String content, Date regDate, String writerId, int boardNo) {
		this.no = no;
		this.content = content;
		this.regDate = regDate;
		this.writerId = writerId;
		this.boardNo = boardNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	
	
}
