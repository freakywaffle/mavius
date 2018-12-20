package com.mavius.web.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.News;
import com.mavius.web.service.NewsService;
import com.mavius.web.service.jdbc.JdbcNewsService;
@WebServlet("/edit")
public class NewsEditController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");
				request.setCharacterEncoding("UTF-8");
				
				int no = Integer.parseInt(request.getParameter("no"));
				String title = request.getParameter("title");
				String content = request.getParameter("content");
				String writerId = request.getParameter("writerId");
				String catalog = request.getParameter("catalog");
				
				NewsService service = new JdbcNewsService();
				
				News news = new News(no,title,content,writerId,catalog);
				
				String edit = service.edit(news);
				
				response.sendRedirect("/admin/news/"+edit+"/list");
	}
}
