package com.mavius.web.controller.member;

import java.io.IOException;

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

@WebServlet("/board/rogue/reg")
@MultipartConfig(
	    fileSizeThreshold = 1024*1024,
	    maxFileSize = 1024*1024*10, 
	    maxRequestSize = 1024*1024*10*5
	)
public class RogueRegController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/member/board/target/job/rogue/reg.jsp");

		dispatcher.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		BoardService service = new JdbcBoardService(); 
		
		String path = request.getServletContext().getRealPath("/upload/rogue");
//		String path = "C:/upload/archer";
		
		
		String id = String.valueOf(request.getSession().getAttribute("uid"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String category = request.getParameter("category");
		Board board = new Board(title, content, id, "rogue", category);
		Part part = request.getPart("file");
		
		int boardNo = service.reg(board, part, path); //게시물 번호 리턴
	 	
//		RequestDispatcher dispatcher = request.getRequestDispatcher("../../../member/board/target/job/archer/reg.jsp");
//
//		dispatcher.forward(request, response);
		
		response.sendRedirect("detail?no="+boardNo);
	}
}
