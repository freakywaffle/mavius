package com.mavius.web.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.MemberView;
import com.mavius.web.service.MemberService;
import com.mavius.web.service.jdbc.JdbcMemberService;

@WebServlet("/admin/board/community/freeboard/list")
public class FreeBoardListController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
				
		

		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/board/community/freeboard/list.jsp");
		
		dispatcher.forward(request, response);
	}
	
}
