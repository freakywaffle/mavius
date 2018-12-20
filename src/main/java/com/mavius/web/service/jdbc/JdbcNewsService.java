package com.mavius.web.service.jdbc;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.mavius.web.entity.EventView;
import com.mavius.web.entity.MemberView;
import com.mavius.web.entity.News;
import com.mavius.web.entity.NewsView;
import com.mavius.web.entity.NoticeView;
import com.mavius.web.entity.UpdateView;
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
		return null;
	}

	@Override
	public List<News> getNewsList(int page) {
		// TODO Auto-generated method stub
		return null;
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
	public int reg(News news) {
		// TODO Auto-generated method stub
		
		String sql = "INSERT INTO NEWS(NO, TITLE, CONTENT, WRITER_ID, CATALOG) VALUES(NEWS_SEQ.NEXTVAL, ?, ?, ?, ?)";
		
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";

		int no = 0;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
			con.setAutoCommit(false);
			
			String title = news.getTitle();
			String content = news.getContent();
			String id = news.getWriterId();
			String catalog = news.getCatalog();
			
			System.out.println(title);
			System.out.println(content);
			System.out.println(id);
			System.out.println(catalog);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, title);
			st.setString(2, content);
			st.setString(3, "seyeon1491");
			st.setString(4, catalog);
			
			int affectedNews = st.executeUpdate();


	         if(affectedNews > 0)
	        	 con.commit();
	         else
	        	 con.rollback();

	         st.close();
	         con.close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return no;
	}

	@Override
	public String edit(News news) {
		// TODO Auto-generated method stub
		String sql = "update news set title= ?, content = ?, writer_id = ? where no = ?";		
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";

		int no = news.getNo();
		String title = news.getTitle();
		String content = news.getContent();
		String writerId = news.getWriterId();
		String catalog = news.getCatalog();
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
			//con.setAutoCommit(false);
			
			
		
			System.out.println(title);
			System.out.println(content);
			System.out.println(writerId);
			System.out.println(no);
		
			
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, title);
			st.setString(2, content);
			st.setString(3, writerId);
			st.setInt(4, no);

			int affected = st.executeUpdate();
			//con.commit();
//	         if(affectedNews > 0)
//	        	 con.commit();
//	         else
//	        	 con.rollback();

	         st.close();
	         con.close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return catalog;
	}

	@Override
	public String delNews(int no, String catalog) {
		// TODO Auto-generated method stub
		
		String sql = "delete NEWS where no = ?";		
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		
		System.out.println("no   "+no);
		System.out.println("catalog	   "+catalog);
		String catalog_ = catalog;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
			con.setAutoCommit(false);
			
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, no);

			int affectedNews = st.executeUpdate();

	         if(affectedNews > 0)
	        	 con.commit();
	         else
	        	 con.rollback();

	         st.close();
	         con.close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return catalog_;
			
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

	
	
	
	@Override
	public List<NoticeView> getNoticeViewList() {
		// TODO Auto-generated method stub
		return getNoticeViewList(1);
	}

	@Override
	public List<NoticeView> getNoticeViewList(int page) {
		// TODO Auto-generated method stub
		List<NoticeView> list = new ArrayList<>();
			
			//회원가입 순으로 회원번호 -> 그 역순으로 page
			String sql = "select * from (select rownum num, c.* from (select * from news where catalog = 'notice' order by no desc) c) where num between ? and ?";
			
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
		    	   NoticeView n = new NoticeView(
		    		  rs.getInt("NO"),
		    		  rs.getString("TITLE"),
		              rs.getString("CONTENT"),
		              rs.getDate("REGDATE"),
		              rs.getString("WRITER_ID"),
		              rs.getString("CATALOG"),
		              rs.getInt("HIT")
		                );
		          list.add(n);
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
	public List<EventView> getEventViewList() {
		// TODO Auto-generated method stub
		return getEventViewList(1);
	}

	@Override
	public List<EventView> getEventViewList(int page) {
		// TODO Auto-generated method stub
		List<EventView> list = new ArrayList<>();
		
		//회원가입 순으로 회원번호 -> 그 역순으로 page
		String sql = "select * from (select rownum num, c.* from (select * from news where catalog = 'event' order by no desc) c) where num between ? and ?";

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
	    	   EventView n = new EventView(
	    		  rs.getInt("NO"),
	    		  rs.getString("TITLE"),
	              rs.getString("CONTENT"),
	              rs.getDate("REGDATE"),
	              rs.getString("WRITER_ID"),
	              rs.getString("CATALOG"),
	              rs.getInt("HIT")
	                );
	          list.add(n);
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
	public List<UpdateView> getUpdateViewList() {
		// TODO Auto-generated method stub
		return getUpdateViewList(1);
	}

	@Override
	public List<UpdateView> getUpdateViewList(int page) {
		// TODO Auto-generated method stub
		List<UpdateView> list = new ArrayList<>();
		
		//회원가입 순으로 회원번호 -> 그 역순으로 page
		String sql = "select * from (select rownum num, c.* from (select * from news where catalog = 'update' order by no desc) c) where num between ? and ?";

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
	    	   UpdateView n = new UpdateView(
	    		  rs.getInt("NO"),
	    		  rs.getString("TITLE"),
	              rs.getString("CONTENT"),
	              rs.getDate("REGDATE"),
	              rs.getString("WRITER_ID"),
	              rs.getString("CATALOG"),
	              rs.getInt("HIT")
	                );
	          list.add(n);
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
	public NoticeView getNoticeViewDetail(String no) {
		// TODO Auto-generated method stub
		NoticeView detail = null;
			
			String sql = "select * from news where catalog = 'notice' and no = ?";
			
		    try {
		        
		       String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		       Class.forName("oracle.jdbc.driver.OracleDriver");
		       Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
		       PreparedStatement st = con.prepareStatement(sql);
		       st.setInt(1, Integer.parseInt(no));
		       ResultSet rs =st.executeQuery();
		       
		       rs.next();
		       detail = new NoticeView(
		    		  rs.getInt("NO"),
		    		  rs.getString("TITLE"),
		              rs.getString("CONTENT"),
		              rs.getDate("REGDATE"),
		              rs.getString("WRITER_ID"),
		              rs.getString("CATALOG"),
		              rs.getInt("HIT")           
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
	public EventView getEventViewDetail(String no) {
		// TODO Auto-generated method stub
		EventView detail = null;
			
			String sql = "select * from news where catalog = 'event' and no = ?";
			
		    try {
		        
		       String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		       Class.forName("oracle.jdbc.driver.OracleDriver");
		       Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
		       PreparedStatement st = con.prepareStatement(sql);
		       st.setInt(1, Integer.parseInt(no));
		       ResultSet rs =st.executeQuery();
		       
		       rs.next();
		       detail = new EventView(
		    		  rs.getInt("NO"),
		    		  rs.getString("TITLE"),
		              rs.getString("CONTENT"),
		              rs.getDate("REGDATE"),
		              rs.getString("WRITER_ID"),
		              rs.getString("CATALOG"),
		              rs.getInt("HIT")           
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
	public UpdateView getUpdateViewDetail(String no) {
		// TODO Auto-generated method stub
		UpdateView detail = null;
		
		String sql = "select * from news where catalog = 'update' and no = ?";
		
	    try {
	        
	       String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
	       Class.forName("oracle.jdbc.driver.OracleDriver");
	       Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
	       PreparedStatement st = con.prepareStatement(sql);
	       st.setInt(1, Integer.parseInt(no));
	       ResultSet rs =st.executeQuery();
	       
	       rs.next();
	       detail = new UpdateView(
	    		  rs.getInt("NO"),
	    		  rs.getString("TITLE"),
	              rs.getString("CONTENT"),
	              rs.getDate("REGDATE"),
	              rs.getString("WRITER_ID"),
	              rs.getString("CATALOG"),
	              rs.getInt("HIT")           
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





}





