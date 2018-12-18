package com.mavius.web.service.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.mavius.web.entity.MemberView;
import com.mavius.web.entity.News;
import com.mavius.web.entity.NewsView;
import com.mavius.web.service.NewsService;

public class JdbcNewsService implements NewsService{

	@Override
	public News getNews(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<News> getNewsList() {
		// TODO Auto-generated method stub
		return getNewsList(1);
	}

	@Override
	public List<News> getNewsList(int page) {
		// TODO Auto-generated method stub
		List<News> list = new ArrayList<>();
		
		//회원가입 순으로 회원번호 -> 그 역순으로 page
		String sql = "select * from (select * from news where catalog = 'notice' order by rownum desc) where rownum between ? and ?";

	    try {
	                
	       int start = 1+(page-1)*10;
	       int end = page*10;         
	       System.out.println(start);
	       System.out.println(end);
	       String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
	       Class.forName("oracle.jdbc.driver.OracleDriver");
	       Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
	       PreparedStatement st = con.prepareStatement(sql);
	       st.setInt(1, start);
	       st.setInt(2, end); 
	       
	       ResultSet rs =st.executeQuery();
	       
	      
	       while(rs.next()) {
	          News n = new News(
	    		  rs.getInt("NO"),
	    		  rs.getString("TITLE"),
	              rs.getString("CONTENT"),
	              rs.getDate("REGDATE"),
	              rs.getString("WRITER_ID"),
	              rs.getString("CATALOG"),
	              rs.getInt("HIT")
	              
	                );
	          
	          list.add(n);
	          System.out.println("n"+n);
	       }    
	       System.out.println(""+list);
	      
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
	public List<News> getNewsList(int page, int cnt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<News> getNewsList(String name, int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<News> getNewsList(String name, int page, int cnt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<News> getNewsList(String name, String keyword, int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<News> getNewsList(String name, String keyword, int page, int cnt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<News> getNewsList(String name, String option, String keyword, int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<News> getNewsList(String name, String option, String keyword, int page, int cnt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public NewsView getNewsView(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int reg(News News) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int edit(News News) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delNews(int no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<NewsView> getViewList() {
		// TODO Auto-generated method stub
		return getViewList(1, "", "title");
	}

	@Override
	public List<NewsView> getViewList(int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<NewsView> getViewList(int page, String name) {
		// TODO Auto-generated method stub
		List<NewsView> list = new ArrayList<>();

	      String sql = "SELECT * FROM " +
	            "(" +    
	            "SELECT ROWNUM NUM, N.* " + 
	            "FROM NEWS_VIEW N" + 
	            ") " + 
	            "WHERE catalog=? and NUM BETWEEN ? AND ?";
	      try {
	         int start = 1+(page-1)*10;
	         int end = page*10;

	         String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
	         Class.forName("oracle.jdbc.driver.OracleDriver");
	         Connection con = DriverManager.getConnection(url,"c##mavius","maplegg"); 
	         PreparedStatement st = con.prepareStatement(sql);
	         
	         st.setString(1, name);
	         st.setInt(2, start);
	         st.setInt(3, end);

	         ResultSet rs =st.executeQuery(); //PreparedStatement를 사용할땐 리살트셋 괄호안에 쿼리문은 x

	         while(rs.next()) {
	            NewsView n = new NewsView(
	                  rs.getInt("NUM"),
	                  rs.getString("title"),
	                  rs.getString("content"),
	                  rs.getDate("regDate"),
	                  rs.getString("WRITER_ID"),
	                  rs.getInt("hit")
	                  );
	            //n.setId(rs.getString("id"));
	            //n.setTitle(rs.getString("title"));
	            // ...

	            list.add(n);
	         }

	         rs.close();
	         st.close();
	         con.close();
	      }catch (ClassNotFoundException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      return list;
	}

	@Override
	public List<NewsView> getViewList(int page, String option, String keyword) {
		// TODO Auto-generated method stub
		  List<NewsView> list = new ArrayList<>();

		   String sql = "SELECT * FROM " +
		         "(" +    
		         "SELECT ROWNUM NUM, N.* " + 
		         "FROM NEWS_VIEW N" + 
		         ") " + 
		         "WHERE NUM BETWEEN ? AND ?";
		   try {
		      int start = 1+(page-1)*10;
		      int end = page*10;

		      String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		      Class.forName("oracle.jdbc.driver.OracleDriver");
		      Connection con = DriverManager.getConnection(url,"c##mavius","maplegg"); 
		      PreparedStatement st = con.prepareStatement(sql);
		      st.setInt(1, start);
		      st.setInt(2, end);

		      ResultSet rs =st.executeQuery(); //PreparedStatement를 사용할땐 리살트셋 괄호안에 쿼리문은 x

		      while(rs.next()) {
		         NewsView n = new NewsView(
		               rs.getInt("NUM"),
		               rs.getString("title"),
		               rs.getString("content"),
		               rs.getDate("regDate"),
		               rs.getString("writerId"),
		               rs.getInt("hit")
		               );
		         //n.setId(rs.getString("id"));
		         //n.setTitle(rs.getString("title"));
		         // ...

		         list.add(n);
		      }

		      rs.close();
		      st.close();
		      con.close();
		   }catch (ClassNotFoundException e) {
		      // TODO Auto-generated catch block
		      e.printStackTrace();
		   } catch (SQLException e) {
		      // TODO Auto-generated catch block
		      e.printStackTrace();
		   }
		   return list;
	}

	@Override
	public List<NewsView> getViewList(int page, String option, String keyword, String name) {
		// TODO Auto-generated method stub
		return null;
	}





}





