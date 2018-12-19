package com.mavius.web.controller.member;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.Board;
import com.mavius.web.entity.BoardView;
import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

@WebServlet("/board/community/freeboard/list")
public class FreeBoardListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//		String page_ = request.getParameter("p");
//		int page = 1;
//
//		if(page_ != null && !page_.equals(""))
//			page = Integer.parseInt(page_);

		
		String title;
		int no ;
		String category;
		String content;
		String writerId;
		
		
		

		BoardService service = new JdbcBoardService();
		Map<String,Object> map = service.getBoardList("free",1);
		
		//System.out.println(list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("list.jsp");
		request.setAttribute("list", map.get("list"));
		dispatcher.forward(request, response);
		
		

	}
}
