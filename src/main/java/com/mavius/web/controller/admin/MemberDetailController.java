package com.mavius.web.controller.admin;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.MemberView;
import com.mavius.web.service.MemberService;
import com.mavius.web.service.jdbc.JdbcMemberService;

@WebServlet("/admin/member/management/detail")
public class MemberDetailController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
				
		MemberService service = new JdbcMemberService();
		
		String id = request.getParameter("id");
		
		
		 
		MemberView detail = service.getViewList(id);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/member/management/detail.jsp");
		
		request.setAttribute("detail", detail);
		dispatcher.forward(request, response);
	

	}
	
}


