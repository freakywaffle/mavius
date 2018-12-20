package com.mavius.web.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.UpdateView;
import com.mavius.web.service.NewsService;
import com.mavius.web.service.jdbc.JdbcNewsService;

@WebServlet("/admin/news/update/detail")
public class UpdateDetailController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
				
		NewsService service = new JdbcNewsService();
		
		String no = request.getParameter("no");
		
		UpdateView detail = service.getUpdateViewDetail(no);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/news/update/detail.jsp");
		request.setAttribute("detail", detail);
		dispatcher.forward(request, response);
	}
	
}