package com.mavius.web.controller.news;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.NewsView;
import com.mavius.web.service.NewsService;
import com.mavius.web.service.jdbc.JdbcNewsService;

@WebServlet("/news/event/list")
public class EventListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		NewsService service = new JdbcNewsService();
		
		String page_ = request.getParameter("p");
		int page = 1;
		
		if(page_ != null && !page_.equals(""))
			page = Integer.parseInt(page_);
		
		List<NewsView> list = service.getViewList();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/news/event/list.jsp");
		request.setAttribute("list", list);
		
		dispatcher.forward(request, response);
	}
	
}
