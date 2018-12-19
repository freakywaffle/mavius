package com.mavius.web.entity;

public class MemberAuth {
	private int authNo;
	private String authName;
	
	public MemberAuth() {}

	public MemberAuth(int authNo, String authName) {
		super();
		this.authNo = authNo;
		this.authName = authName;
	}

	public int getAuthNo() {
		return authNo;
	}

	public void setAuthNo(int authNo) {
		this.authNo = authNo;
	}

	public String getAuthName() {
		return authName;
	}

	public void setAuthName(String authName) {
		this.authName = authName;
	}
	
	
	
	
	
}
