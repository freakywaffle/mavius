package com.mavius.web.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mavius.web.entity.Board;
import com.mavius.web.entity.News;
import com.mavius.web.entity.NoticeView;
import com.mavius.web.service.BoardService;
import com.mavius.web.service.NewsService;
import com.mavius.web.service.jdbc.JdbcBoardService;
import com.mavius.web.service.jdbc.JdbcNewsService;

@WebServlet("/admin/news/notice/reg")
public class NoticeRegController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
				
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/news/notice/reg.jsp");
			
		dispatcher.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		NewsService service = new JdbcNewsService(); 
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writerId = request.getParameter("writerId");
		
		News news = new News(title, content, writerId, "notice");
		
	
		
		int no = service.reg(news); //게시물 번호 리턴
	 	
//		RequestDispatcher dispatcher = request.getRequestDispatcher("../../../member/board/target/job/archer/reg.jsp");
//
//		dispatcher.forward(request, response);
		
		response.sendRedirect("list?p=1");
	}
	
}
