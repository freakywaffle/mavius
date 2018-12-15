package com.mavius.web.service.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mavius.web.entity.Board;
import com.mavius.web.entity.Reply;
import com.mavius.web.entity.Report;
import com.mavius.web.service.BoardService;

public class JdbcBoardService implements BoardService{

	@Override
	public Board getBoard(int no) {




		return null;
	}

	@Override
	public List<Board> getBoardList(int start) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> getBoardList(int start, int cnt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> getBoardList(String name, int start) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> getBoardList(String name, int start, int cnt) {
		//name 게시판 이름 start 페이지 넘버 cnt 갯수

		String driver = "oracle.jdbc.driver.OracleDriver";

		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 

		List<Board> list = new ArrayList<>();
		try{

			Class.forName(driver);


			
			String sql = "select * from board where catalog =?";
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");

			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, name);
			ResultSet rs =st.executeQuery();
			
			
			
			while(rs.next()) {
				Board board = new Board(
						rs.getInt("no"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getDate("regdate"),
						rs.getString("writer_id"),
						rs.getString("catalog"),
						rs.getInt("hit"),
						rs.getInt("recommend")
						
				
				);
				
				list.add(board);
				
				
			};
			System.out.println(list);
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
	public List<Board> getBoardList(String name, String keyword, int start) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> getBoardList(String name, String keyword, int start, int cnt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> getBoardList(String name, String option, String keyword, int start) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> getBoardList(String name, String option, String keyword, int start, int cnt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int reg(Board board) {
		// TODO Auto-generated method stub
		return 0;
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
	public List<Reply> getReplyList(int boardNo) {
		// TODO Auto-generated method stub
		return null;
	}

}
