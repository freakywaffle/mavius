package com.mavius.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.Board;
import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

@WebServlet("/board/free/edit")
public class FreeEditController extends HttpServlet{
@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("/board/community/free/edit.jsp");

	dispatcher.forward(request, response);
	}
//	@Override
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		request.setCharacterEncoding("UTF-8");
//		response.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html;charset=UTF-8");
//		int no = Integer.parseInt(request.getParameter("no"));
//		System.out.println("edit no: "+no);
//		BoardService service = new JdbcBoardService();
//		Board boardDetail = service.getBoard(no);
//		RequestDispatcher dispatcher = request.getRequestDispatcher("/board/community/free/edit.jsp");
//		request.setAttribute("e", boardDetail);
//		dispatcher.forward(request, response);
//		
//		
//		
//	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int no = Integer.parseInt(request.getParameter("no"));
		System.out.println(no);
		
	}
	
}
