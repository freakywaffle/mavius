package com.mavius.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

@WebServlet("/board/delete")
public class BoardDeleteController extends HttpServlet{

	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.sendRedirect("/board/free/list");
	}
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		System.out.println("오긴 오니?11");
		int no =Integer.parseInt(request.getParameter("no"));
		System.out.println("delete no: "+no);
		BoardService service = new JdbcBoardService();
		
		
		int error = service.delete(no);
		System.out.println(error);
		if(error!=0)
		System.out.println("삭제가 완료되었습니다.1111");
		
		//response.sendRedirect("/board/free/list");
		
		
	}
	
	
}
