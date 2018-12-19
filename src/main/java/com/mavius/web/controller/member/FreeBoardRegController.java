package com.mavius.web.controller.member;

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
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mavius.web.entity.Board;
import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

@WebServlet("/board/community/freeboard/reg")
@MultipartConfig(
	    fileSizeThreshold = 1024*1024,
	    maxFileSize = 1024*1024*10, 
	    maxRequestSize = 1024*1024*10*5
	)
public class FreeBoardRegController extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		BoardService service = new JdbcBoardService();
//		List<Board> list = service.getBoardList("freeboard",1,1);//占쏙옙占싹곤옙占쏙옙占쏙옙 list占쏙옙 占쏙옙占쏙옙獵占� 占쏙옙占쏙옙
		
//		System.out.println(list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("reg.jsp");
//		request.setAttribute("list", list);
		dispatcher.forward(request, response);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		
		
		
		BoardService service = new JdbcBoardService(); 
		
		String path = request.getServletContext().getRealPath("/community/freeboard/upload");
		String id = "LEE";
		String title = request.getParameter("title");
		//System.out.println(title);
		String content = request.getParameter("content");
		//System.out.println(content);
		String category = request.getParameter("category");
		//System.out.println(category);
		Board board = new Board(title, content, id, "free", category);
		Part part = request.getPart("file");
		
		int boardNo = service.reg(board, part, path); //게시물 번호 리턴
	 	System.out.println(boardNo);
//		RequestDispatcher dispatcher = request.getRequestDispatcher("../../../member/board/target/job/archer/reg.jsp");
//
//		dispatcher.forward(request, response);
		
		response.sendRedirect("detail?no="+boardNo);
	}

	
	
}
