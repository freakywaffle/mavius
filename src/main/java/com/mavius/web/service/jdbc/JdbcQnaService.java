package com.mavius.web.service.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mavius.web.entity.BoardView;
import com.mavius.web.entity.Qna;
import com.mavius.web.service.QnaService;

public class JdbcQnaService implements QnaService
{

	@Override
	public int sendQna(Qna qna) {
		// TODO Auto-generated method stub
		return 0;
	}

	

	@Override
	public Map<String, Object> getMyQnaList(String uid, int page, int cnt) 
	{
		// TODO Auto-generated method stub
		
		Map<String,Object> qm = new HashMap<>();
		List<Qna> list = new ArrayList<>();
		
		String sql = "select * from (select rownum num, q.* from (select * from QNA order by send_date desc) q where sender_id=? ) "
					+" where num BETWEEN ? and ?";
		String sql2= "select count(*) cnt from QNA q where sender_id=? order by send_date desc";
		
		int start = 1+(page-1)*10; 
        int end = page*10; 
		
        String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
        try 
        {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con = DriverManager.getConnection(url,"c##MAVIUS","maplegg");
			con.setAutoCommit(false);
	        PreparedStatement st = con.prepareStatement(sql);
	        PreparedStatement st2 = con.prepareStatement(sql2);
	        
	        st.setString(1, uid);
	        st.setInt(2, start);
	        st.setInt(3, end);
	        
	        
	        st2.setString(1, uid);
	        
	        ResultSet rs =st.executeQuery();
	        
			while(rs.next())
			{
				Qna q= new Qna
						(
								rs.getInt("no"),
								rs.getString("content"),
								rs.getDate("send_date"),
								rs.getString("sender_id"),
								rs.getDate("answer_date"),
								rs.getString("answer_content"),
								rs.getString("answer_id"),
								rs.getString("during"),
								rs.getString("title")
						);
				
				list.add(q);
			}
			
			qm.put("list", list);
			
			rs.close();
			st.close();
			
			ResultSet rs2 =st2.executeQuery();
			rs2.next();
			int rowCnt = rs2.getInt("cnt");
			
			qm.put("rowCnt", rowCnt);
			
			rs2.close();
			st2.close();
			
			con.close();
			
		} 
        catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
		
		return qm;
	}

	@Override
	public Map<String, Object> getMyQnaList(String uid, String during, int page, int cnt) {
		// TODO Auto-generated method stub
		
		
		String sql = null;
		String sql2= null;
		
		int start = 1+(page-1)*10; 
        int end = page*10; 
		
        Map<String,Object> qm = new HashMap<>();
		List<Qna> list = new ArrayList<>();
		
        try 
        {
        	String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con = DriverManager.getConnection(url,"c##MAVIUS","maplegg");
			con.setAutoCommit(false);
	        PreparedStatement st = null;
	        PreparedStatement st2 = null;
	        ResultSet rs=null;
	        ResultSet rs2=null;
	        
	        switch(during) 
	        {
		        case "처리대기중" :
		        	
		        	sql = "select * from (select rownum num, q.* from QNA q where sender_id=? and during='처리대기중' order by send_date desc) "
							+" where num BETWEEN ? and ?";
		        	sql2= "select count(*) cnt from QNA q where sender_id=? and during='처리대기중' order by send_date desc";
		        	
		        	st=con.prepareStatement(sql);
		        	st.setString(1, uid);
			        st.setInt(2, start);
			        st.setInt(3, end);
			        
			        st2=con.prepareStatement(sql2);
			        st2.setString(1, uid);
		        	
		        	
		        	break;
		        	
		        	
		        	
		        	
		        case "처리완료" :
		        	
		        	sql = "select * from (select rownum num, q.* from QNA q where sender_id=? and during='처리완료' order by send_date desc) "
							+" where num BETWEEN ? and ?";
		        	sql2= "select count(*) cnt from QNA q where sender_id=? and during='처리완료' order by send_date desc";
		        	
		        	st=con.prepareStatement(sql);
		        	st.setString(1, uid);
			        st.setInt(2, start);
			        st.setInt(3, end);
			        
			        st2=con.prepareStatement(sql2);
			        st2.setString(1, uid);
		        	
		        	break;
	        }
	        
	        
	        rs=st.executeQuery();
	        
			while(rs.next())
			{
				Qna q= new Qna
					(
						rs.getInt("no"),
						rs.getString("content"),
						rs.getDate("send_date"),
						rs.getString("sender_id"),
						rs.getDate("answer_date"),
						rs.getString("answer_content"),
						rs.getString("answer_id"),
						rs.getString("during"),
						rs.getString("title")
					);
				
				list.add(q);
			}
			
			qm.put("list", list);
			
			rs.close();
			st.close();
			
			rs2 =st2.executeQuery();
			rs2.next();
			int rowCnt = rs2.getInt("cnt");
//			System.out.println("@@@@@@@@@@@@@@@@@@@"+rowCnt);
			qm.put("rowCnt", rowCnt);
			
			rs2.close();
			st2.close();
			
			con.close();
			
		} 
        catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
		
		return qm;
		
	}

	@Override
	public Map<String, Object> getAdminQnaList(int page, int cnt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> getAdminQnaList(String during, int page, int cnt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int answerQna(Qna qna) {
		// TODO Auto-generated method stub
		return 0;
	}

}
