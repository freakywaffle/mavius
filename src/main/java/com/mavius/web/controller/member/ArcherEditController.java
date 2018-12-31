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
import com.mavius.web.entity.BoardView;
import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

@WebServlet("/board/archer/edit")
@MultipartConfig(
	    fileSizeThreshold = 1024*1024,
	    maxFileSize = 1024*1024*10, 
	    maxRequestSize = 1024*1024*10*5
	)
public class ArcherEditController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		BoardService service = new JdbcBoardService();
		BoardView board = service.getBoard(no);
		
		request.setAttribute("board", board);
		System.out.println(board.getNo());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/member/board/target/job/archer/edit.jsp");

		dispatcher.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		
		BoardService service = new JdbcBoardService(); 		
		
		String id = String.valueOf(request.getSession().getAttribute("uid"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String category = request.getParameter("category");
		Board board = new Board(title, content, id, "archer", category);
		
		int boardNo = Integer.parseInt(request.getParameter("no"));
	 	board.setNo(boardNo);

	 	service.edit(board);
//		RequestDispatcher dispatcher = request.getRequestDispatcher("../../../member/board/target/job/archer/reg.jsp");
//
//		dispatcher.forward(request, response);
		
		response.sendRedirect("detail?no="+boardNo);
	}
}
