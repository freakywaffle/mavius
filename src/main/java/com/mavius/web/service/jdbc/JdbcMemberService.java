package com.mavius.web.service.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
			
			//회원가입 순으로 회원번호 -> 그 역순으로 page
	    	String sql = "SELECT * FROM(SELECT ROWNUM JOIN_DATE ,P.* FROM (SELECT * FROM POSTSCOMMENT ORDER BY REGDATE)P) WHERE ROWNUM BETWEEN ? AND ? ORDER BY JOIN_DATE DESC";
	        
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
	        		  rs.getInt("JOIN_DATE"),
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
	           
	        } catch (ClassNotFoundException e) {
	           // TODO Auto-generated catch block
	           e.printStackTrace();
	        } catch (SQLException e) {
	           // TODO Auto-generated catch block
	           e.printStackTrace();
	        }
	        
		
		return list;
	}

	@Override
	public Member getMember(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int edit(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}


}
