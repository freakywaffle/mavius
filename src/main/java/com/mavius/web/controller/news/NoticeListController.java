package com.mavius.web.controller.news;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.service.NewsService;
import com.mavius.web.service.jdbc.JdbcNewsService;

@WebServlet("/news/notice/list")
public class NoticeListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		NewsService service = new JdbcNewsService();
		System.out.println("노티스 리스트");
		String page_ = request.getParameter("p");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/news/notice/list.jsp");
		dispatcher.forward(request, response);
	}
	
}
