package com.mavius.web.entity;

import java.util.Date;

public class MemberView extends Member{
	
	private int num;         //회원 번호
	private int postsCount;         //게시글 개수
	private int commentCount;		//댓글 개수
	
	public MemberView() {
		super();
	}
	public MemberView(int num, String nickName, String id, String grade, Date regDate, int postsCount, int commentCount) {
		super(nickName, id, grade, regDate);

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
