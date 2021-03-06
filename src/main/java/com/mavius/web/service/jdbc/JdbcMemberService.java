package com.mavius.web.service.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mavius.web.entity.Member;
import com.mavius.web.entity.MemberView;
import com.mavius.web.service.MemberService;

public class JdbcMemberService implements MemberService{

	@Override
	public List<MemberView> getViewList() {
		// TODO Auto-generated method stub
		return getViewList(1);
	}
	
	@Override
	public List<MemberView> getViewList(int page) {
		// TODO Auto-generated method stub
		List<MemberView> list = new ArrayList<>();
			
			//ȸ������ ������ ȸ����ȣ -> �� �������� page
	    	String sql = "select * from (select rownum num,n.* from(SELECT rownum no, m.* FROM (SELECT * FROM MEMBERVIEW order by regdate desc) m order by no desc)n) where no BETWEEN ? and ? order by num desc";

	        try {
	                    
	           int start = 1+(page-1)*10;
	           int end = page*10;         
	           
	           String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
	           Class.forName("oracle.jdbc.driver.OracleDriver");
	           Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
	           PreparedStatement st = con.prepareStatement(sql);
	           st.setInt(1, start);
	           st.setInt(2, end); 
	           
	           ResultSet rs =st.executeQuery();
	           
	           while(rs.next()) {
	              MemberView m = new MemberView(
	        		  rs.getInt("NUM"),
	        		  rs.getString("NICKNAME"),
	                  rs.getString("ID"),
	                  rs.getString("GRADE"),
	                  rs.getDate("REGDATE"),
	                  rs.getInt("POSTS_COUNT"),
	                  rs.getInt("COMMENT_COUNT")
	                    );
	              
	              list.add(m);
	           }    
	           rs.close();
	           st.close();
	           con.close();
	           
	        }  catch (Exception e) {
	           // TODO Auto-generated catch block
	           e.printStackTrace();
	        }
	        
		
		return list;
	}
	
	@Override
	public MemberView getViewList(String id) {
		// TODO Auto-generated method stub
		MemberView detail = null;
		//ȸ���� ������ȸ
		String sql = "SELECT * FROM MEMBERVIEW where id = ?";
        
		try {
  
           
           String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
           PreparedStatement st = con.prepareStatement(sql);
           st.setString(1, id); 
           
           ResultSet rs =st.executeQuery();
           rs.next();
           detail = new MemberView(
    		  rs.getString("NICKNAME"),
    		  rs.getString("ID"),
              rs.getString("GRADE"),
              rs.getString("EMAIL"),
              rs.getDate("REGDATE"),
              rs.getInt("EXP"),
              rs.getInt("REPORT"),
              rs.getInt("AUTHORITY"),
              rs.getInt("POSTS_COUNT"),
              rs.getInt("COMMENT_COUNT")
              
                );
             
           rs.close();
           st.close();
           con.close();
           
        }  catch (Exception e) {
           // TODO Auto-generated catch block
           e.printStackTrace();
        }
        
	
	return detail;
	}

	@Override
	public Member getMember(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int edit(Member member) {
		// TODO Auto-generated method stub
		String id = member.getId();
		String nickName = member.getNickName();
		String email = member.getemail();
		String grade = member.getGrade();
		int authority = member.getAuthority();
		
		
		System.out.println("/////////////////////////////");
		System.out.println(id);
		System.out.println(nickName);
		System.out.println(email);
		System.out.println(grade);
		System.out.println(authority);
		String sql = "update member set NICKNAME = ?, EMAIL = ?, GRADE = ?, AUTHORITY = ? where ID = ?";
        
		try {

           String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
           con.setAutoCommit(false);
           PreparedStatement st = con.prepareStatement(sql);
           st.setString(1, nickName); 
           st.setString(2, email); 
           st.setString(3, grade); 
           st.setInt(4, authority); 
           st.setString(5, id); 
           
           st.executeUpdate();
           
           con.commit();
          
           st.close();
           con.close();
           
        }  catch (Exception e) {
           // TODO Auto-generated catch block
           e.printStackTrace();
        }
        
	
	return 0;
	}

	@Override
	public int delete(Member member) {
		// TODO Auto-generated method stub
		
		String id = member.getId();
		String nickName = member.getNickName();
		
		System.out.println(id);
		System.out.println(nickName);
		
		String sql = "delete member where id = ? and nickname = ?";
        
		try {

           String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
           con.setAutoCommit(false);
           PreparedStatement st = con.prepareStatement(sql);
           st.setString(1, id); 
           st.setString(2, nickName); 
           
           st.executeUpdate();
           
           con.commit();
          
           st.close();
           con.close();
           
        }  catch (Exception e) {
           // TODO Auto-generated catch block
           e.printStackTrace();
        }
        
	
	return 0;
	}




}
