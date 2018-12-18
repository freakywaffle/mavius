package com.mavius.web.entity;

import java.util.Date;

public class Member {

	private String id;
	private String pwd;
	private String nickName;
	private String eMail;
	private String grade;
	private int exp;
	private Date regDate;
	private int report;
	private int authority;
	
	
	
	public Member() {
		super();
	}
	
	public Member(String nickName, String id, String grade, Date regDate) {
		super();
		this.nickName = nickName;
		this.id = id;
		this.grade = grade;
		this.regDate = regDate;
	}

	public Member(String id, String nickName, String eMail, String grade, int exp, Date regDate, int report) {
		super();
		this.id = id;
		this.nickName = nickName;
		this.eMail = eMail;
		this.grade = grade;
		this.exp = exp;
		this.regDate = regDate;
		this.report = report;
	}


	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getExp() {
		return exp;
	}
	public void setExp(int exp) {
		this.exp = exp;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getReport() {
		return report;
	}
	public void setReport(int report) {
		this.report = report;
	}
	public int getAuthority() {
		return authority;
	}
	public void setAuthority(int authority) {
		this.authority = authority;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", pwd=" + pwd + ", nickName=" + nickName + ", eMail=" + eMail + ", grade=" + grade
				+ ", exp=" + exp + ", regDate=" + regDate + ", report=" + report + ", authority=" + authority + "]";
	}
	
	
}
