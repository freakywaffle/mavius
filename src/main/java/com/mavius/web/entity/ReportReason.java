package com.mavius.web.entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ReportReason {
	private int no;
	private int reportedNo;
	private String contentEtc;
	private int resonNo;
	private int reporterId;
	private int type;
	
	
	private String content;

	
	public ReportReason(int no, int reportedNo, String contentEtc, int resonNo, int reporterId, int type) {
		super();
		this.no = no;
		this.reportedNo = reportedNo;
		this.contentEtc = contentEtc;
		this.resonNo = resonNo;
		this.reporterId = reporterId;
		this.type = type;
	}

	
	public ReportReason(int no, String content, String contentEtc) { //기타사유까지 적은 거
		super();
		this.no = no;
		this.contentEtc = contentEtc;
		this.content = content;
	}


	public ReportReason(int no, String content) {//기타 사유가 없는 그냥 사유만 셀렉터
		super();
		this.no = no;
		this.content = content;
		
	}

//	public ReportReason ReportReason() {
//
//
//		String sql = "select * from report_reason";
//		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
//		ReportReason re=null;
//		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
//		    PreparedStatement st = con.prepareStatement(sql);    
//            ResultSet rs = st.executeQuery();
//        
//           
//        
//			while(rs.next()) {
//				 
//		
//				re = new ReportReason(
//						rs.getInt("no"),
//						rs.getString("content"));
//				
//				
//			}
//		
//			rs.close();
//			st.close();
//			con.close();
//			
//			
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} 
//		
//		return re;
//	}
//	
	
	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public int getReportedNo() {
		return reportedNo;
	}


	public void setReportedNo(int reportedNo) {
		this.reportedNo = reportedNo;
	}


	public String getContentEtc() {
		return contentEtc;
	}


	public void setContentEtc(String cntentEtc) {
		this.contentEtc = cntentEtc;
	}


	public int getResonNo() {
		return resonNo;
	}


	public void setResonNo(int resonNo) {
		this.resonNo = resonNo;
	}


	public int getReporterId() {
		return reporterId;
	}


	public void setReporterId(int reporterId) {
		this.reporterId = reporterId;
	}


	public int getType() {
		return type;
	}


	public void setType(int type) {
		this.type = type;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}
	
	//ETc도 여기다 넣고 포스트에서 만약 null이아니면 담을 그릇을 만든다. 
	
}
