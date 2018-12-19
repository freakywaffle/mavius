package com.mavius.web.entity;

import java.util.Date;

public class Member {

	private String id;
	private String pwd;
	private String nickName;
	private String email;
	private String grade;
	private int exp;
	private Date joinDate;
	private int report;
	private int authority;
	
	public Member() {
		super();
	}
	
	public Member(String nickName, String id, String grade, Date joinDate) {
		super();
		this.nickName = nickName;
		this.id = id;
		this.grade = grade;
		this.joinDate = joinDate;
	}
	
	public Member(String nickName, String id, String grade, String email, Date joinDate, int exp, int report) {
		super();
		this.nickName = nickName;
		this.id = id;
		this.grade = grade;
		this.email = email;
		this.joinDate = joinDate;
		this.exp = exp;
		this.report = report;
		
	}

	public Member(String id, String nickName, String email, String grade, int exp, Date joinDate, int report) {
		super();
		this.id = id;
		this.nickName = nickName;
		this.email = email;
		this.grade = grade;
		this.exp = exp;
		this.joinDate = joinDate;
		this.report = report;
	}

	public Member(String id, String pwd, String nickName, String eMail, String grade, int exp, Date regDate, int report,
			int authority) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.nickName = nickName;
		this.eMail = eMail;
		this.grade = grade;
		this.exp = exp;
		this.regDate = regDate;
		this.report = report;
		this.authority = authority;
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
	public String getemail() {
		return email;
	}
	public void setemail(String email) {
		this.email = email;
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
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
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
		return "Member [id=" + id + ", pwd=" + pwd + ", nickName=" + nickName + ", email=" + email + ", grade=" + grade
				+ ", exp=" + exp + ", regDate=" + joinDate + ", report=" + report + ", authority=" + authority + "]";
	}
	
	
}
