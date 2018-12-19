package com.mavius.web.entity;

import java.util.Date;

public class MemberView extends Member{
		
	private int num;        		//회원 번호(가입순서 joinDate)
	private int postsCount;         //게시글 개수
	private int commentCount;		//댓글 개수
	
	public MemberView() {
		super();
	}
	public MemberView(int num, String nickName, String id, String grade, Date joinDate, int postsCount, int commentCount) {
		super(nickName, id, grade, joinDate);
		this.num = num;
		this.postsCount = postsCount;
		this.commentCount = commentCount;
	}
	public MemberView(String nickName, String id, String grade, String email, Date joinDate, int exp, int report, int postsCount, int commentCount) {
		super(nickName, id, grade, email, joinDate, exp, report);
		this.postsCount = postsCount;
		this.commentCount = commentCount;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getPostsCount() {
		return postsCount;
	}
	public void setPostsCount(int postsCount) {
		this.postsCount = postsCount;
	}
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	@Override
	public String toString() {
		return "MemberView [postsCount=" + postsCount + ", commentCount=" + commentCount + ", RecentlyAccessed="
				+ "]";
	}
	
	
	
}
