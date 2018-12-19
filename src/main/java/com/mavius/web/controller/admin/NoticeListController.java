package com.mavius.web.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.News;
import com.mavius.web.entity.NoticeView;
import com.mavius.web.service.NewsService;
import com.mavius.web.service.jdbc.JdbcNewsService;

@WebServlet("/admin/news/notice/list")
public class NoticeListController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
				
		NewsService service = new JdbcNewsService();
		
		String page_ = request.getParameter("p");
		int page = 1;
		
		if(page_ != null && !page_.equals("")) {
			page = Integer.parseInt(page_);
			
		}
		System.out.println(page);
		List<NoticeView> list = service.getNoticeViewList(page);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/news/notice/list.jsp");
		request.setAttribute("list", list);
		dispatcher.forward(request, response);
	}
	
}