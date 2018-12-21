package com.mavius.web.controller.news;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.EventView;
import com.mavius.web.entity.NewsView;
import com.mavius.web.service.NewsService;
import com.mavius.web.service.jdbc.JdbcNewsService;

@WebServlet("/news/event/detail")
public class EventDetailController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		NewsService service = new JdbcNewsService();
		
		String no = request.getParameter("no");
		
		EventView detail = service.getEventViewDetail(no);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/news/event/detail.jsp");
		request.setAttribute("detail", detail);	
		dispatcher.forward(request, response);
		
	}
	
}
