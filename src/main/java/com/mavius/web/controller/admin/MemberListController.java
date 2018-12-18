package com.mavius.web.controller.admin;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
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

@WebServlet("/admin/member/management/list")
public class MemberListController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		MemberService service = new JdbcMemberService();
		
		String page_ = request.getParameter("p");
		int page = 1;
		
		if(page_ != null && !page_.equals(""))
			page = Integer.parseInt(page_);

		List<MemberView> list = service.getViewList();
		

		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/member/management/list.jsp");
		request.setAttribute("list", list);
		dispatcher.forward(request, response);
	
	}
	
}


