package com.mavius.web.service.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mavius.web.entity.News;
import com.mavius.web.entity.NewsView;
import com.mavius.web.service.NewsService;

public class JdbcNewsService implements NewsService{

	public List<NewsView> getViewList(){
		return getViewList(1, "", "title");
	}

	@Override
	public List<News> getNewsList(int start) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<NewsView> getViewList(int page){
		return null;
	}
	@Override
	public List<NewsView> getViewList(int page, String query){
		return null;
	}
	@Override
	public List<NewsView> getViewList(int page, String query, String title){
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
public News getNews(int no) {
	// TODO Auto-generated method stub
	return null;
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

@Override
public NewsView getNewsView(int no) {
	// TODO Auto-generated method stub
	return null;
}

}
