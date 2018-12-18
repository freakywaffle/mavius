package com.mavius.web.entity;

public class BoardFile {
	private int no;
	private String name;
	private int boardNo;
	private String saveName;
	
	public BoardFile() {
		// TODO Auto-generated constructor stub
	}

	public BoardFile(int no, String name, int boardNo, String saveName) {
		this.no = no;
		this.name = name;
		this.boardNo = boardNo;
		this.saveName = saveName;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getSaveName() {
		return saveName;
	}

	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}
	
	
}
