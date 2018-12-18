package com.mavius.web.controller.guest;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

@WebServlet("/board/target/archer/list")
public class ArcherListController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardService service = new JdbcBoardService();

		double pageCnt = 8;
		int pagerCnt = 5;
		
		
		Map<String, Object> map = new HashMap<>();	
		
		String category = request.getParameter("category");
		String keyword = request.getParameter("keyword");
		String option = request.getParameter("option");
		String page_ = request.getParameter("page");
		
		int page = 1;
		if(page_ != null && !page_.equals(""))
			page = Integer.parseInt(request.getParameter("page"));
		
		int startPage = pagerCnt*(page/pagerCnt)+1;
		int endPage = startPage+pagerCnt-1; 
	
		if(option != null && !option.equals("")) {
			if(category != null && !category.equals("")) {	
				map = service.getBoardList("archer", category, option, keyword, page);
			}else {
				map = service.getBoardList("archer", page, option, keyword);
			}
			
		}else {
			
			if(category != null && !category.equals("")) {
				map = service.getBoardList("archer", category, page);
			}else {
				map = service.getBoardList("archer", page);
			}		
		}
		
		
		int boardCnt = (int)map.get("rowCnt");	
		int maxPage = (int)Math.ceil(boardCnt/pageCnt);
	
		if(endPage > maxPage) {
			endPage = maxPage;
		}

		
		request.setAttribute("list", map.get("list"));
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		RequestDispatcher dispatcher = request.getRequestDispatcher("../job/archer/list.jsp");

		dispatcher.forward(request, response);
	}
}
