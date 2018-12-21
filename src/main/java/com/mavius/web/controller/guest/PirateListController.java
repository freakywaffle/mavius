package com.mavius.web.controller.guest;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

import tool.Pager;

@WebServlet("/board/pirate/list")
public class PirateListController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardService service = new JdbcBoardService();
		
		Map<String, Object> map = new HashMap<>();	
		
		String category = request.getParameter("category");
		String keyword = request.getParameter("keyword");
		String option = request.getParameter("option");
		String page_ = request.getParameter("page");
		
		
		int pageCnt = 10;
		int pagerCnt = 5;
		int page = 1;
		if(page_ != null && !page_.equals(""))
			page = Integer.parseInt(request.getParameter("page"));

	
		if(option != null && !option.equals("")) {
			if(category != null && !category.equals("")) {	
				map = service.getBoardList("pirate", category, option, keyword, page);
			}else {
				map = service.getBoardList("pirate", page, option, keyword);
			}
			
		}else {
			
			if(category != null && !category.equals("")) {
				map = service.getBoardList("pirate", category, page);
			}else {
				map = service.getBoardList("pirate", page);
			}		
		}
		int boardCnt = (int)map.get("rowCnt");	
		
		Pager pager = new Pager(pageCnt, pagerCnt, page, boardCnt);
		request.setAttribute("list", map.get("list"));
		request.setAttribute("pager", pager);
		RequestDispatcher dispatcher = request.getRequestDispatcher("../target/job/pirate/list.jsp");

		dispatcher.forward(request, response);
	}
}
