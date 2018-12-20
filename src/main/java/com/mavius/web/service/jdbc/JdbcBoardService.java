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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Part;
import javax.sql.rowset.serial.SerialArray;

import com.mavius.web.entity.Board;
import com.mavius.web.entity.BoardFile;
import com.mavius.web.entity.BoardView;
import com.mavius.web.entity.Member;
import com.mavius.web.entity.Reply;
import com.mavius.web.entity.ReportReason;
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
	public Map<String, Object> getBoardList(int page) {
		// TODO Auto-generated method stub
		return getBoardList(page, 8);
	}

	@Override
	public Map<String, Object> getBoardList(int page, int cnt) {
		int start = 1+(page-1)*cnt;
		int end = page*cnt;   
		
		String sql = "select * from (select rownum num, b.* from board_view b) " 
					+ "where num between ? and ?";
		
		String sql2 = "select count(*) cnt from board_view";

		String driver = "oracle.jdbc.driver.OracleDriver";

		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 

		Map<String, Object> map = new HashMap<>();
		
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
			
			Statement st2 = con.createStatement();
			ResultSet rs2 = st2.executeQuery(sql2);
			
			rs2.next();
			
			int rowCnt = rs2.getInt("cnt");
			
			map.put("rowCnt", rowCnt);
			map.put("list", list);
			
			rs2.close();
			st2.close();			
			con.close();
			
		}catch(SQLException e){
			e.printStackTrace();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return map;
	}

	@Override
	public Map<String, Object> getBoardList(String name, int page) {
		// TODO Auto-generated method stub
		return getBoardList(name, page, 8, "title", "");
	}

	@Override
	public Map<String, Object> getBoardList(String name, int page, int cnt) {
		return getBoardList(name, page, cnt, "title", "");
	}
	
	@Override
	public Map<String, Object> getBoardList(String name, int page, String keyword) {
		// TODO Auto-generated method stub
		return getBoardList(name, page, 8, "title", keyword);
	}

	@Override
	public Map<String, Object> getBoardList(String name, int page, int cnt, String keyword) {
		// TODO Auto-generated method stub
		return getBoardList(name, page, cnt, "title", keyword);
	}

	@Override
	public Map<String, Object> getBoardList(String name, int page, String option, String keyword) {
		// TODO Auto-generated method stub
		
		return getBoardList(name, page, 8, option, keyword);
	}

	@Override
	public Map<String, Object> getBoardList(String name, int page, int cnt, String option, String keyword) {
		
		int start = 1+(page-1)*cnt;
		int end = page*cnt;   
		
		String sql = null;
		String sql2 = null;
		
		String driver = "oracle.jdbc.driver.OracleDriver";

		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		
		Map<String, Object> map = new HashMap<>();
		List<BoardView> list = new ArrayList<>();
		try{

			Class.forName(driver);
			
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");

			
			PreparedStatement st = null;
			PreparedStatement st2 = null;
			ResultSet rs = null;
			ResultSet rs2 = null;
			
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
					
					sql2 =  "select count(*) cnt from board_view "
							+ "where catalog = ? and title like ?";
						
					
					st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2, "%"+keyword+"%");
					st.setInt(3, start);
					st.setInt(4, end);
					
					
					st2 = con.prepareStatement(sql2);
					st2.setString(1, name);
					st2.setString(2, "%"+keyword+"%");
					
					break;
					
				case "content":
					sql = "select * from "
							+ "(" 
							+ "select rownum num, b.* "
							+ "from board_view b "
							+ "where catalog = ? and content like ?"
							+ ") "
						+ "where num between ? and ?";
					
					sql2 =  "select count(*) cnt "
							+ "from board_view "
							+ "where catalog = ? and content like ?";
					
					st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2, "%"+keyword+"%");
					st.setInt(3, start);
					st.setInt(4, end);
					
					st2 = con.prepareStatement(sql2);
					st2.setString(1, name);
					st2.setString(2, "%"+keyword+"%");

					break;
				case "writer":
					sql = "select * from "
							+ "(" 
							+ "select rownum num, b.* "
							+ "from board_view b "
							+ "where catalog = ? and writer_id = ?"
							+ ") "
							+ "where num between ? and ?";
					
					sql2 = "select count(*) cnt "
							+ "from board_view "
							+ "where catalog = ? and writer_id = ?";
					
					st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2, "%"+keyword+"%");
					st.setInt(3, start);
					st.setInt(4, end);
					
					
					st2 = con.prepareStatement(sql2);
					st2.setString(1, name);
					st2.setString(2, "%"+keyword+"%");
					
					break;
				case "title+content":
					sql = "select * from "
							+ "(" 
							+ "select rownum num, b.* "
							+ "from board_view b "
							+ "where catalog = ? and title like ? or content like ?"
							+ ") "
							+ "where num between ? and ?";
					
					sql2 = "select count(*) cnt "
							+ "from board_view "
							+ "where catalog = ? and title like ? or content like ?";
					
					st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2, "%"+keyword+"%");
					st.setString(3, "%"+keyword+"%");
					st.setInt(4, start);
					st.setInt(5, end);
					
					st2 = con.prepareStatement(sql2);
					st2.setString(1, name);
					st2.setString(2, "%"+keyword+"%");
					st2.setString(3, "%"+keyword+"%");
					
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
			
			
			rs2 = st2.executeQuery();
			rs2.next();
			
			int rowCnt = rs2.getInt("cnt");
			
			map.put("rowCnt", rowCnt);
			map.put("list", list);
			
			rs2.close();
			st2.close();
			
			con.close();
		}catch(SQLException e){
			e.printStackTrace();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return map;
	}

	@Override
	public Map<String, Object> getBoardList(String name, String category, int page) {
		// TODO Auto-generated method stub
		return getBoardList(name, category, "title", "", page, 8);
	}

	@Override
	public Map<String, Object> getBoardList(String name, String category, int page, int cnt) {
		// TODO Auto-generated method stub
		return getBoardList(name, category, "title", "", page, cnt);
	}

	@Override
	public Map<String, Object> getBoardList(String name, String category, String keyword, int page) {
		// TODO Auto-generated method stub
		return getBoardList(name, category, "title", keyword, page, 8);
	}

	@Override
	public Map<String, Object> getBoardList(String name, String category, String keyword, int page, int cnt) {
	
		
		return getBoardList(name, category, "title", keyword, page, cnt);
		
	}

	@Override
	public Map<String, Object> getBoardList(String name, String category, String option, String keyword, int page) {
		// TODO Auto-generated method stub
		return getBoardList(name, category, option, keyword, page, 8);
	}

	@Override
	public Map<String, Object> getBoardList(String name, String category, String option, String keyword, int page,
			int cnt) {
		
		int start = 1+(page-1)*cnt;
		int end = page*cnt;   
		
		String sql = null;
		String sql2 = null;
		
		String driver = "oracle.jdbc.driver.OracleDriver";

		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		
		Map<String, Object> map = new HashMap<>();
		
		List<BoardView> list = new ArrayList<>();
		try{

			Class.forName(driver);
			
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");

			
			PreparedStatement st = null;
			PreparedStatement st2 = null;
			
			ResultSet rs = null;
			ResultSet rs2 = null;
			
			
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
					
					sql2 = "select count(*) cnt from board_view "
							+ "where catalog = ? and category = ? and title like ?";
					
					st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2, category);
					st.setString(3, "%"+keyword+"%");
					st.setInt(4, start);
					st.setInt(5, end);
					
					st2 = con.prepareStatement(sql2);
					st2.setString(1, name);
					st2.setString(2, category);
					st2.setString(3, "%"+keyword+"%");
						
					break;
					
				case "content":
					sql = "select * from "
							+ "(" 
							+ "select rownum num, b.* "
							+ "from board_view b "
							+ "where catalog = ? and category = ? and content like ?"
							+ ") "
						+ "where num between ? and ?";
					
					sql2 = "select count(*) cnt from board_view "
							+ "where catalog = ? and category = ? and content like ?";
					
					st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2, category);
					st.setString(3, "%"+keyword+"%");
					st.setInt(4, start);
					st.setInt(5, end);
					
					st2 = con.prepareStatement(sql2);
					st2.setString(1, name);
					st2.setString(2, category);
					st2.setString(3, "%"+keyword+"%");
					
					
					break;
				case "writer":
					sql = "select * from "
							+ "(" 
							+ "select rownum num, b.* "
							+ "from board_view b "
							+ "where catalog = ? and category = ? and writer_id = ?"
							+ ") "
							+ "where num between ? and ?";
					
					sql2 = "select count(*) cnt from board_view "
							+ "where catalog = ? and category = ? and writer_id like ?";
					
					st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2, category);
					st.setString(3, "%"+keyword+"%");
					st.setInt(4, start);
					st.setInt(5, end);
					
					
					st2 = con.prepareStatement(sql2);
					st2.setString(1, name);
					st2.setString(2, category);
					st2.setString(3, "%"+keyword+"%");
					
					break;
				case "title+content":
					sql = "select * from "
							+ "(" 
							+ "select rownum num, b.* "
							+ "from board_view b "
							+ "where catalog = ? and category = ? and title like ? or content like ?"
							+ ") "
							+ "where num between ? and ?";
					
					sql2 = "select count(*) cnt from board_view "
							+ "where catalog = ? and category = ? and title like ?";
					
					st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2, category);
					st.setString(3, "%"+keyword+"%");
					st.setString(4, "%"+keyword+"%");
					st.setInt(5, start);
					st.setInt(6, end);
					
					
					st2 = con.prepareStatement(sql2);
					st2.setString(1, name);
					st2.setString(2, category);
					st2.setString(3, "%"+keyword+"%");
					st2.setString(4, "%"+keyword+"%");
					
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
			
			
			rs2 = st2.executeQuery();
			
			rs2.next();
			int rowCnt = rs2.getInt("cnt");
			
			map.put("rowCnt", rowCnt);
			map.put("list", list);
			
			rs2.close();
			st2.close();
			con.close();
		}catch(SQLException e){
			e.printStackTrace();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return map;
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
			String catalog = board.getCatalog();
			
			
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, title);
			st.setString(2, content);
			st.setString(3, id);
			st.setString(4, catalog);
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
	public int claim(ReportReason report) {
		
	
		return 0;
	
	
	}

	@Override
	public int recommend(String uid, int boardNo,int sep) {
		int error = -1;
		System.out.println("recommend Jdbc service입니다.");
		String sql ="UPDATE board SET recommend =+0 WHERE no =?";
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		
		
		if(sep==0) {
			sql="UPDATE board SET recommend =recommend+1 WHERE no =?";
			error=sep;
			System.out.println("에러코드: "+error+"0이면 추천되었습니다.");
		}else if(sep==1){
			sql="UPDATE board SET recommend =recommend-1 WHERE no =?";	
			error=sep;
			System.out.println("에러코드: "+error+"1이면 추천이 취소 되었습니다.");
		}

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1,boardNo);
			int affectedBoard = st.executeUpdate();
			
			st.close();
			con.close();
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			//인서트 구문이랑
		//현재 레코멘드를 받아오는 수
		//그러면 현재 추천수에서 1+ 넣는다.?
		//버튼을 눌렀을때 클래스 이름을 바꿔준다?
		//숨겨놨던 다른 아이콘으로 전환해서
		//그럼 그 아이콘을 클릭하면 -1을 시켜주고
		//아이콘을 눌렀을때 seperate 변수 값을 같이 넘겨주자 그다음에 if문을 구분해서 들어가는 부분을 넣자!!
		
		
		return error;
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
		String sql = "insert into reply(no, content, writer_id, board_no) values (reply_seq.nextval, ?,?,?)";
		
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		
		int affected = 0;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
			
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, reply.getContent());
			st.setString(2, reply.getWriterId());
			st.setInt(3, reply.getBoardNo());
			
			affected = st.executeUpdate();
			
			
			
			
			st.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return affected;
	}

	@Override
	public int delReply(int replyNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Map<String, Object> getReplyListByBoardNo(int boardNo, int page, int cnt) {
		
		String sql = "select * from (select rownum num, r.* from (select * from reply order by regdate desc) r  where board_no = ?) where num between ? and ?";
		String sql2 = "select count(*) cnt from reply where board_no = ?";
		
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		
		
		int start = 1+(page-1)*cnt; 
        int end = page*cnt; 
		
		Map<String, Object> map = new HashMap<>();
		List<Reply> list = new ArrayList<>();
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
			
			
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, boardNo);
			st.setInt(2, start);
			st.setInt(3, end);
			
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				Reply reply = new Reply(
						rs.getInt("no"), 
						rs.getString("content"), 
						rs.getDate("regdate"), 
						rs.getString("writer_id"), 
						rs.getInt("board_no")
					);
				list.add(reply);
						
			}
			
			rs.close();
			st.close();
			
			
			map.put("list", list);
			
			PreparedStatement st2 = con.prepareStatement(sql2);
			st2.setInt(1, boardNo);
			ResultSet rs2= st2.executeQuery();
			
			rs2.next();
			int rowCnt = rs2.getInt("cnt");
			
			
			map.put("rowCnt", rowCnt);
			
			rs2.close();
			st2.close();
			con.close();
	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		return map;
	}

	@Override
	public List<ReportReason> getReportReason() {
		
		List<ReportReason> list = new ArrayList();
		
		String sql = "select * from report_reason";
		
		
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
		    PreparedStatement st = con.prepareStatement(sql);    
            ResultSet rs = st.executeQuery();
        
           
        
			while(rs.next()) {
				 
		
				ReportReason re = new ReportReason(
						rs.getInt("no"),
						rs.getString("content"));
				
			
				list.add(re);
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
		return  list;
	}


	

	
	
	@Override
	public int regReport(int reportedNo, String contentEtc, String reason, String reporterId, String type) {
		
	    int CurrentNo = 0;
	    
	    
	    String sql = "insert into report(no,reported_no, content_etc,reason,reporter_id, type) "
	    			+ "values (REPORT_SEQ.NEXTVAL, ?, ?, ? ,?, ?)";
		//String sqlNo = "select no from (SELECT * FROM report ORDER BY REGDATE DESC) WHERE ROWNUM =1";
			          
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		System.out.println(13145);
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("1111");
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
			System.out.println("2222");
			//con.setAutoCommit(false);
		    PreparedStatement st = con.prepareStatement(sql);    
		    st.setInt(1, reportedNo);
			System.out.println("reportedNo");
		    st.setString(2, contentEtc);
			System.out.println("contentEtc");
		    st.setString(3, reason);
			System.out.println("reason");
		    st.setString(4, reporterId);
			System.out.println("reporterId");
		    st.setString(5, type);
			System.out.println("type");
		    int affected = st.executeUpdate();
		   
		   // PreparedStatement stNo = con.prepareStatement(sqlNo);    
		   // ResultSet rsNo = stNo.executeQuery();
		   // rsNo.next();
		  //  CurrentNo= rsNo.getInt("no");
		    CurrentNo=1;
//        
//			while(rs.next()) {
//				 
//		
//				ReportReason re = new ReportReason(
//						rs.getInt("no"),
//						rs.getString("content"));
//				
//			
//				list.add(re);
//			}
//			
//			
//			rs.close();
		    //con.commit();
		   // rsNo.close();
		  //  stNo.close();
			st.close();
			con.close();
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	    
	    
		return CurrentNo;
	}

	public List<BoardFile> getBoardFileListByBoardNo(int boardNo) {
		
		String sql = "select * from board_file where board_no = ?";
			          
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		
		List<BoardFile> list = new ArrayList<>();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, boardNo);
			ResultSet rs = st.executeQuery();
			
			if(rs.next()) {
				BoardFile bf = new BoardFile(
						rs.getInt("no"), 
						rs.getString("name"), 
						rs.getInt("board_no"), 
						rs.getString("savename"));
				list.add(bf);
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
	public Map<String,Object> getBoardListById(String uid, int page) {
		// TODO Auto-generated method stub
		return getBoardListById(uid, page, 10);
	}

	@Override
	public Map<String,Object> getBoardListById(String uid, int page, int cnt) 
	{
		// TODO Auto-generated method stub
		
		Map<String,Object> bm = new HashMap<>();
		List<BoardView> list = new ArrayList<>();
		
		String sql = "select * from (select rownum num, b.* from board_view b where writer_id=?) "+
		"where num BETWEEN ? and ?";
		String sql2= "select count(*) cnt from board_view b where writer_id=?";
		
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
			
				BoardView bv= new BoardView
						(
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
				
				
				list.add(bv);
			
			}
			
			bm.put("list", list);
			
			rs.close();
			st.close();
			
			ResultSet rs2 =st2.executeQuery();
			rs2.next();
			int rowCnt = rs2.getInt("cnt");
			
			bm.put("rowCnt", rowCnt);
			
			rs.close();
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
        
        return bm;
	}

	@Override
	public Map<String,Object> getBoardListById(String uid, int page, String keyword) 
	{
		// TODO Auto-generated method stub
		
		
		return getBoardListById(uid, page, 10,"");
	}

	@Override
	public Map<String,Object> getBoardListById(String uid, int page, int cnt, String keyword) 
	{
		// TODO Auto-generated method stub
		
		
		Map<String,Object> bm = new HashMap<>();
		List<BoardView> list = new ArrayList<>();
		
		String sql = "select * from (select rownum num, b.* from board_view b where writer_id=? and title like ?) "+
		"where num BETWEEN ? and ?";
		String sql2= "select count(*) cnt from board_view b where writer_id=? and title like ?";
		
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
	        st.setString(2, "%"+keyword+"%");
	        st.setInt(3, start);
	        st.setInt(4, end);
	        
	        
	        
	        st2.setString(1, uid);
	        st2.setString(2, "%"+keyword+"%");
	        
	        
	        ResultSet rs =st.executeQuery();
	        
			while(rs.next())
			{
			
				BoardView bv= new BoardView
						(
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
				
				
				list.add(bv);
			
			}
			
			bm.put("list", list);
			
			rs.close();
			st.close();
			
			ResultSet rs2 =st2.executeQuery();
			rs2.next();
			int rowCnt = rs2.getInt("cnt");
			
			bm.put("rowCnt", rowCnt);
			
			rs.close();
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
        
        return bm;
	}

	@Override
	public Map<String,Object> getBoardListById(String uid, int page, String keyword, String catalog)
	{
		// TODO Auto-generated method stub
		return getBoardListById(uid, page, 10,"","전체");
	}

	@Override
	public Map<String,Object> getBoardListById(String uid, int page, int cnt, String keyword, String catalog) 
	{
		// TODO Auto-generated method stub
		
		
		
		String sql = null;
		String sql2=null;
		
		int start = 1+(page-1)*10; 
        int end = page*10; 
        Map<String,Object> bm = new HashMap<>();
		List<BoardView> list = new ArrayList<>();
        
        try 
        {
        	String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con = DriverManager.getConnection(url,"c##MAVIUS","maplegg");
			con.setAutoCommit(false);
	        //PreparedStatement st = con.prepareStatement(sql);
			PreparedStatement st = null;
			PreparedStatement st2 = null;
			ResultSet rs = null;
			ResultSet rs2 = null;
			
			
			
			switch(catalog) 
			{
			
			case "/board/target/archer":
				
				sql="select * from (select rownum num, b.* from board_view b where writer_id=? and category='archer' and title like ?) "
						+"where num BETWEEN ? and ?";
				sql2 = "select count(*) cnt from board_view b where writer_id=? and category='archer' and title like ?";
				
				st = con.prepareStatement(sql);
				st.setString(1, uid);
				st.setString(2, "%"+keyword+"%");
				st.setInt(3, start);
				st.setInt(4, end);
				
				st2=con.prepareStatement(sql2);
				st2.setString(1, uid);
				st2.setString(2, "%"+keyword+"%");
				
				break;
				
			case "warrior":
				
				
				sql="select * from (select rownum num, b.* from board_view b where writer_id=? and category='warrior' and title like ?) "
						+"where num BETWEEN ? and ?";
				sql2 = "select count(*) cnt from board_view b where writer_id=? and category='warrior' and title like ?";
				
				st = con.prepareStatement(sql);
				st.setString(1, uid);
				st.setString(2, "%"+keyword+"%");
				st.setInt(3, start);
				st.setInt(4, end);
				
				st2=con.prepareStatement(sql2);
				st2.setString(1, uid);
				st2.setString(2, "%"+keyword+"%");
				
				
				break;
				
			case "magician":
							
				sql="select * from (select rownum num, b.* from board_view b where writer_id=? and category='magician' and title like ?) "
						+"where num BETWEEN ? and ?";
				sql2 = "select count(*) cnt from board_view b where writer_id=? and category='magician' and title like ?";
				
				st = con.prepareStatement(sql);
				st.setString(1, uid);
				st.setString(2, "%"+keyword+"%");
				st.setInt(3, start);
				st.setInt(4, end);
				
				st2=con.prepareStatement(sql2);
				st2.setString(1, uid);
				st2.setString(2, "%"+keyword+"%");
				
				
				
				break;
				
			case "rogue":
				
				
				sql="select * from (select rownum num, b.* from board_view b where writer_id=? and category='rogue' and title like ?) "
						+"where num BETWEEN ? and ?";
				sql2 = "select count(*) cnt from board_view b where writer_id=? and category='rogue' and title like ?";
				
				st = con.prepareStatement(sql);
				st.setString(1, uid);
				st.setString(2, "%"+keyword+"%");
				st.setInt(3, start);
				st.setInt(4, end);
				
				st2=con.prepareStatement(sql2);
				st2.setString(1, uid);
				st2.setString(2, "%"+keyword+"%");
				
				
				
				break;
				
			case "pirate":
				
				
				sql="select * from (select rownum num, b.* from board_view b where writer_id=? and category='pirate' and title like ?) "
						+"where num BETWEEN ? and ?";
				sql2 = "select count(*) cnt from board_view b where writer_id=? and category='pirate' and title like ?";
				
				st = con.prepareStatement(sql);
				st.setString(1, uid);
				st.setString(2, "%"+keyword+"%");
				st.setInt(3, start);
				st.setInt(4, end);
				
				st2=con.prepareStatement(sql2);
				st2.setString(1, uid);
				st2.setString(2, "%"+keyword+"%");
				
				
				
				break;
				
			case "freeboard":
				
				
				sql="select * from (select rownum num, b.* from board_view b where writer_id=? and category='freeboard' and title like ?) "
						+"where num BETWEEN ? and ?";
				sql2 = "select count(*) cnt from board_view b where writer_id=? and category='freeboard' and title like ?";
				
				st = con.prepareStatement(sql);
				st.setString(1, uid);
				st.setString(2, "%"+keyword+"%");
				st.setInt(3, start);
				st.setInt(4, end);
				
				st2=con.prepareStatement(sql2);
				st2.setString(1, uid);
				st2.setString(2, "%"+keyword+"%");
				
				
				
				break;
				
			case "coordiboard":
				
				
				sql="select * from (select rownum num, b.* from board_view b where writer_id=? and category='coordiboard' and title like ?) "
						+"where num BETWEEN ? and ?";
				sql2 = "select count(*) cnt from board_view b where writer_id=? and category='coordiboard' and title like ?";
				
				st = con.prepareStatement(sql);
				st.setString(1, uid);
				st.setString(2, "%"+keyword+"%");
				st.setInt(3, start);
				st.setInt(4, end);
				
				st2=con.prepareStatement(sql2);
				st2.setString(1, uid);
				st2.setString(2, "%"+keyword+"%");
				
				
				
				break;
				
			case "serverboard":
				
				
				sql="select * from (select rownum num, b.* from board_view b where writer_id=? and category='serverboard' and title like ?) "
						+"where num BETWEEN ? and ?";
				sql2 = "select count(*) cnt from board_view b where writer_id=? and category='serverboard' and title like ?";
				
				st = con.prepareStatement(sql);
				st.setString(1, uid);
				st.setString(2, "%"+keyword+"%");
				st.setInt(3, start);
				st.setInt(4, end);
				
				st2=con.prepareStatement(sql2);
				st2.setString(1, uid);
				st2.setString(2, "%"+keyword+"%");
				
				break;
			
			}
			
			rs=st.executeQuery();
			while(rs.next()) {
				
				BoardView bv = new BoardView
					(
							rs.getInt("no"),
							rs.getString("title"),
							rs.getString("content"),
							rs.getDate("regdate"),
							rs.getString("writerId"),
							rs.getString("catalog"),
							rs.getString("category"),
							rs.getInt("hit"),
							rs.getInt("recommend"),
							rs.getInt("replyCnt")
					);
			
				list.add(bv);
			}
				
			bm.put("list", list);
			
			rs.close();
			st.close();
			
			rs2=st2.executeQuery();
			rs2.next();
			
			int rowCnt=rs2.getInt("cnt");
			
			bm.put("rowCnt", rowCnt);
			
			rs2.close();
			st2.close();

			con.close();
			
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return bm;
	}


	
	// 아랫쪽은 MyPage 메소드
	
	



	

	

}
