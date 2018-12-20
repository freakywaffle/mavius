package com.mavius.web.entity;

import java.util.Date;

public class Qna 
{
	private int no;
	private String content;
	private Date sendDate;
	private String senderId;
	private Date answerDate;
	private String answerContent;
	private String answerId;
	private String during;
	private String title;
	
	
	
	public Qna() 
	{
		// TODO Auto-generated constructor stub
		super();
	}
	
	
	
	
	public Qna(String content, String senderId, String answerContent, String answerId,String during, String title) {
		super();
		this.content = content;
		this.senderId = senderId;
		this.answerContent = answerContent;
		this.answerId = answerId;
		this.title = title;
	}




	public Qna(int no, String content, Date sendDate, String senderId, Date answerDate, String answerContent,
			String answerId,String during,String title) 
	{
		super();
		this.no = no;
		this.content = content;
		this.sendDate = sendDate;
		this.senderId = senderId;
		this.answerDate = answerDate;
		this.answerContent = answerContent;
		this.answerId = answerId;
		this.during = during;
		this.title = title;
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
	public Date getSendDate() {
		return sendDate;
	}
	public void setSendDate(Date sendDate) {
		this.sendDate = sendDate;
	}
	public String getSenderId() {
		return senderId;
	}
	public void setSenderId(String senderId) {
		this.senderId = senderId;
	}
	public Date getAnswerDate() {
		return answerDate;
	}
	public void setAnswerDate(Date answerDate) {
		this.answerDate = answerDate;
	}
	public String getAnswerContent() {
		return answerContent;
	}
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	public String getAnswerId() {
		return answerId;
	}
	public void setAnswerId(String answerId) {
		this.answerId = answerId;
	}
	public String getDuring() {
		return during;
	}

	public void setDuring(String during) {
		this.during = during;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}


	
	
	
}
