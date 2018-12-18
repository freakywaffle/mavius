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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.Part;
import javax.sql.rowset.serial.SerialArray;

import com.mavius.web.entity.Board;
import com.mavius.web.entity.BoardFile;
import com.mavius.web.entity.BoardView;
import com.mavius.web.entity.Reply;
import com.mavius.web.entity.Report;
import com.mavius.web.service.BoardService;

public class JdbcBoardService implements BoardService{

	@Override
	public BoardView getBoard(int no) {
		String sql = "select * from board_view where no = ?";
		
		String driver = "oracle.jdbc.driver.OracleDriver";

		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		
		BoardView board = null; 
		try {
			Class.forName(driver);
			
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");

			
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, no);
			ResultSet rs = st.executeQuery();
			
			
			
			if(rs.next()) {
				board = new BoardView(
						rs.getInt("no"), 
						rs.getString("title"), 
						rs.getString("content"),
						rs.getDate("regdate"),
						rs.getString("writer_id"),
						rs.getString("catalog"),
						rs.getString("category"),
						rs.getInt("hit"),
						rs.getInt("recommend"),
						rs.getInt("reply_cnt")
					);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return board;
	}

	@Override
	public List<BoardView> getBoardList(int page) {
		// TODO Auto-generated method stub
		return getBoardList(page, 8);
	}

	@Override
	public List<BoardView> getBoardList(int page, int cnt) {
		int start = 1+(page-1)*cnt;
		int end = page*cnt;   
		
		String sql = "select * from (select rownum num, b.* from board_view b) " 
					+ "where num between ? and ?";

		String driver = "oracle.jdbc.driver.OracleDriver";

		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 

		List<BoardView> list = new ArrayList<>();
		try{

			Class.forName(driver);
			
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");

			
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, start);
			st.setInt(1, end);
			
			ResultSet rs = st.executeQuery();
			
			while(rs.next()) {
				BoardView board = new BoardView(
						rs.getInt("no"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getDate("regdate"),
						rs.getString("writer_id"),
						rs.getString("catalog"),
						rs.getString("category"),
						rs.getInt("hit"),
						rs.getInt("recommend"),
						rs.getInt("reply_cnt")
				
				);
				list.add(board);
				
				
			};
			
			rs.close();
			st.close();
			con.close();
		}catch(SQLException e){
			e.printStackTrace();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return list;
	}

	@Override
	public List<BoardView> getBoardList(String name, int page) {
		// TODO Auto-generated method stub
		return getBoardList(name, page, 8, "title", "");
	}

	@Override
	public List<BoardView> getBoardList(String name, int page, int cnt) {
		return getBoardList(name, page, cnt, "title", "");
	}
	
	@Override
	public List<BoardView> getBoardList(String name, int page, String keyword) {
		// TODO Auto-generated method stub
		return getBoardList(name, page, 8, "title", keyword);
	}

	@Override
	public List<BoardView> getBoardList(String name, int page, int cnt, String keyword) {
		// TODO Auto-generated method stub
		return getBoardList(name, page, cnt, "title", keyword);
	}

	@Override
	public List<BoardView> getBoardList(String name, int page, String option, String keyword) {
		// TODO Auto-generated method stub
		
		return getBoardList(name, page, 8, option, keyword);
	}

	@Override
	public List<BoardView> getBoardList(String name, int page, int cnt, String option, String keyword) {
		
		int start = 1+(page-1)*cnt;
		int end = page*cnt;   
		
		String sql = null;

		String driver = "oracle.jdbc.driver.OracleDriver";

		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		
		
		List<BoardView> list = new ArrayList<>();
		try{

			Class.forName(driver);
			
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");

			
			PreparedStatement st = null;
			ResultSet rs = null;
			
			if(!option.equals("")) {
				switch(option) {
				case "title":
					sql = "select * from "
							+ "(" 
							+ "select rownum num, b.* "
							+ "from board_view b "
							+ "where catalog = ? and title like ?"
							+ ") "
						+ "where num between ? and ?";
					st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2, "%"+keyword+"%");
					st.setInt(3, start);
					st.setInt(4, end);
					break;
					
				case "content":
					sql = "select * from "
							+ "(" 
							+ "select rownum num, b.* "
							+ "from board_view b "
							+ "where catalog = ? and content like ?"
							+ ") "
						+ "where num between ? and ?";
					st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2, "%"+keyword+"%");
					st.setInt(3, start);
					st.setInt(4, end);
					break;
				case "작성자":
					sql = "select * from "
							+ "(" 
							+ "select rownum num, b.* "
							+ "from board_view b "
							+ "where catalog = ? and writer_id = ?"
							+ ") "
							+ "where num between ? and ?";
					st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2, "%"+keyword+"%");
					st.setInt(3, start);
					st.setInt(4, end);
					break;
				case "title+content":
					sql = "select * from "
							+ "(" 
							+ "select rownum num, b.* "
							+ "from board_view b "
							+ "where catalog = ? and title like ? or content like ?"
							+ ") "
							+ "where num between ? and ?";
					st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2, "%"+keyword+"%");
					st.setString(3, "%"+keyword+"%");
					st.setInt(4, start);
					st.setInt(5, end);
					break;
				}
			}
			
			rs =st.executeQuery();
			
			while(rs.next()) {
				BoardView board = new BoardView(
						rs.getInt("no"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getDate("regdate"),
						rs.getString("writer_id"),
						rs.getString("catalog"),
						rs.getString("category"),
						rs.getInt("hit"),
						rs.getInt("recommend"),
						rs.getInt("reply_cnt")
				
				);
				list.add(board);
				
				
			};
			
			rs.close();
			st.close();
			con.close();
		}catch(SQLException e){
			e.printStackTrace();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return list;
	}

	@Override
	public List<BoardView> getBoardList(String name, String category, int page) {
		// TODO Auto-generated method stub
		return getBoardList(name, category, "title", "", page, 8);
	}

	@Override
	public List<BoardView> getBoardList(String name, String category, int page, int cnt) {
		// TODO Auto-generated method stub
		return getBoardList(name, category, "title", "", page, cnt);
	}

	@Override
	public List<BoardView> getBoardList(String name, String category, String keyword, int page) {
		// TODO Auto-generated method stub
		return getBoardList(name, category, "title", keyword, page, 8);
	}

	@Override
	public List<BoardView> getBoardList(String name, String category, String keyword, int page, int cnt) {
	
		
		return getBoardList(name, category, "title", keyword, page, cnt);
		
	}
	
	
	

	@Override
	public List<BoardView> getBoardList(String name, String category, String option, String keyword, int page) {
		// TODO Auto-generated method stub
		return getBoardList(name, category, option, keyword, page, 8);
	}

	@Override
	public List<BoardView> getBoardList(String name, String category, String option, String keyword, int page,
			int cnt) {
		
		int start = 1+(page-1)*cnt;
		int end = page*cnt;   
		
		String sql = null;

		String driver = "oracle.jdbc.driver.OracleDriver";

		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		
		
		List<BoardView> list = new ArrayList<>();
		try{

			Class.forName(driver);
			
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");

			
			PreparedStatement st = null;
			ResultSet rs = null;
			System.out.println(option);
			if(!option.equals("")) {
				switch(option) {
				case "title":
					sql = "select * from "
							+ "(" 
							+ "select rownum num, b.* "
							+ "from board_view b "
							+ "where catalog = ? and category = ? and title like ?"
							+ ") "
						+ "where num between ? and ?";
					System.out.println(end);
					st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2, category);
					st.setString(3, "%"+keyword+"%");
					st.setInt(4, start);
					st.setInt(5, end);
					break;
					
				case "content":
					sql = "select * from "
							+ "(" 
							+ "select rownum num, b.* "
							+ "from board_view b "
							+ "where catalog = ? and category = ? and content like ?"
							+ ") "
						+ "where num between ? and ?";
					st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2, category);
					st.setString(3, "%"+keyword+"%");
					st.setInt(4, start);
					st.setInt(5, end);
					break;
				case "writer":
					sql = "select * from "
							+ "(" 
							+ "select rownum num, b.* "
							+ "from board_view b "
							+ "where catalog = ? and category = ? and writer_id = ?"
							+ ") "
							+ "where num between ? and ?";
					st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2, category);
					st.setString(3, "%"+keyword+"%");
					st.setInt(4, start);
					st.setInt(5, end);
					break;
				case "title+content":
					sql = "select * from "
							+ "(" 
							+ "select rownum num, b.* "
							+ "from board_view b "
							+ "where catalog = ? and category = ? and title like ? or content like ?"
							+ ") "
							+ "where num between ? and ?";
					st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2, category);
					st.setString(3, "%"+keyword+"%");
					st.setString(4, "%"+keyword+"%");
					st.setInt(5, start);
					st.setInt(6, end);
					break;
				}
			}
			
			rs =st.executeQuery();
			
			while(rs.next()) {
				BoardView board = new BoardView(
						rs.getInt("no"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getDate("regdate"),
						rs.getString("writer_id"),
						rs.getString("catalog"),
						rs.getString("category"),
						rs.getInt("hit"),
						rs.getInt("recommend"),
						rs.getInt("reply_cnt")
				
				);
				list.add(board);
				
				
			};
			
			rs.close();
			st.close();
			con.close();
		}catch(SQLException e){
			e.printStackTrace();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return list;
	}
	
	@Override
	public List<String> getBoardCategoryList(String name) {

		String sql = "select name from board_category where board_name = ?";
		
		String driver = "oracle.jdbc.driver.OracleDriver";

		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		
		List<String> list = new ArrayList<>(); 
		
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
			
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, name);
			ResultSet rs = st.executeQuery();
			
			while(rs.next()) {
				list.add(rs.getString("name"));
			}
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
	public int reg(Board board) {
		
		return reg(board, null, null);
	}
	

	@Override
	public int reg(Board board, Part part, String path) {
		String sql = "INSERT INTO BOARD(NO, TITLE, CONTENT, WRITER_ID, CATALOG, CATEGORY) "
	            + "VALUES(BOARD_SEQ.NEXTVAL, ?, ?, ?, ?, ?)";
	      
	    String sql1 = "SELECT NO FROM(SELECT * FROM BOARD ORDER BY REGDATE DESC) "
	            +"WHERE ROWNUM =1";
		
	    String sql2 = "INSERT INTO BOARD_FILE(NO, NAME, BOARD_NO, SAVENAME) "
	            + "VALUES(BOARD_FILE_SEQ.NEXTVAL , ?, ?, ?)";
		
	 	if(path != null) {
		 	File file = new File(path);
			if(!file.exists())
				file.mkdirs();
	 	}
	 	
		int currentNo = 0;
		
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
			con.setAutoCommit(false);
			
			String id = board.getWriterId();
			String title = board.getTitle();
			String content = board.getContent();
			String category = board.getCategory();
			
			
			
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, title);
			st.setString(2, content);
			st.setString(3, id);
			st.setString(4, "archer");
			st.setString(5, category);
			
			int affectedBoard = st.executeUpdate();
	         
	         PreparedStatement st1 = con.prepareStatement(sql1);    
	         ResultSet rs = st1.executeQuery();
	         rs.next();
	         currentNo = rs.getInt("NO");
	         rs.close();
	         
	         
	         if(part != null) {
				String fileName = part.getSubmittedFileName();
				if(!fileName.equals("")) {
					String realFileName = fileName.substring(0, fileName.lastIndexOf("."));
					String ext = fileName.substring(fileName.lastIndexOf("."));
					String saveName = realFileName + "-"+Calendar.getInstance().getTimeInMillis()+ext;
					String filePath = path + File.separator + saveName;
					InputStream fis = part.getInputStream();
					OutputStream fos = new FileOutputStream(filePath);
					
					byte[] buf = new byte[1024];
					
					int size = 1024;
					
					while((size = fis.read(buf)) >= 0)
						fos.write(buf, 0, size);
					
					PreparedStatement st2 = con.prepareStatement(sql2);   
					st2.setString(1, fileName);
					st2.setInt(2, currentNo);
					st2.setString(3, saveName);
					int affectedFile = st2.executeUpdate();
					st2.close();
					
					if(affectedFile <=0) {
						con.rollback();
					}
						
				}
	         }
	         
	         if(affectedBoard > 0)
	        	 con.commit();
	         else
	        	 con.rollback();

	       
	         st1.close();
	         st.close();
	         con.close();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return currentNo;
	}

	@Override
	public int edit(Board board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int claim(Report report) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int recommend(String uid, int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int cancelRecommend(String uid, int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int regScrap(String uid, int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int cancelScrap(String uid, int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int reg(Reply reply) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delReply(int replyNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Reply> getReplyListByBoardNo(int boardNo) {
		
		
		return null;
	}

	@Override
	public List<BoardFile> getBoardFileListByBoardNo(int boardNo) {

			
		return null;
	}


	

	

}
