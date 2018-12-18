package com.mavius.web.service.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.mavius.web.entity.MemberView;
import com.mavius.web.entity.News;
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
        	   System.out.println("ddddddddddddddddd");
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
           System.out.println("dddd"+list);
          
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
	public List<News> getNewsList(int start, int cnt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<News> getNewsList(String name, int start) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<News> getNewsList(String name, int start, int cnt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<News> getNewsList(String name, String keyword, int start) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<News> getNewsList(String name, String keyword, int start, int cnt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<News> getNewsList(String name, String option, String keyword, int start) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<News> getNewsList(String name, String option, String keyword, int start, int cnt) {
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


}
