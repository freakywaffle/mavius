package com.mavius.web.controller.guest;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.BoardView;
import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

@WebServlet("/board/target/archer/list")
public class ArcherListController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BoardService service = new JdbcBoardService();
		List<BoardView> list = null;
		String category = request.getParameter("category");
		String keyword = request.getParameter("keyword");
		String option = request.getParameter("option");
		String page_ = request.getParameter("page");
		
		int page = 1;
		if(page_ != null && !page_.equals(""))
			page = Integer.parseInt(request.getParameter("page"));
		
		if(option != null && !option.equals("")) {
			if(category != null && !category.equals("")) {	
				list = service.getBoardList("archer", category, option, keyword, page);
			}else {
				list = service.getBoardList("archer", page, option, keyword);
			}
			
		}else {
			
			if(category != null && !category.equals("")) {
				list = service.getBoardList("archer", category, page);
			}else {
				list = service.getBoardList("archer", page);
			}
			
		}
		
		System.out.println(list.size());
		System.out.println(Math.ceil(list.size()/8));
		request.setAttribute("list", list);
		request.setAttribute("endpage", Math.ceil(list.size()/8));
		RequestDispatcher dispatcher = request.getRequestDispatcher("../job/archer/list.jsp");

		dispatcher.forward(request, response);
	}
}
