package com.mavius.web.controller.member;

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

import com.mavius.web.entity.Board;
import com.mavius.web.entity.BoardView;
import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

import tool.Pager;

@WebServlet("/board/free/list")
public class FreeBoardListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//		String page_ = request.getParameter("p");
//		int page = 1;
//
//		if(page_ != null && !page_.equals(""))
//			page = Integer.parseInt(page_);
		//System.out.println("sssss");

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
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
				map = service.getBoardList("free", category, option, keyword, page);
			}else {
				map = service.getBoardList("free", page, option, keyword);
			}
			
		}else {
			
			if(category != null && !category.equals("")) {
				map = service.getBoardList("free", category, page);
			}else {
				map = service.getBoardList("free", page);
			}		
		}
		int boardCnt = (int)map.get("rowCnt");	
		
		Pager pager = new Pager(pageCnt, pagerCnt, page, boardCnt);

		
		
		
		

		
		 map = service.getBoardList("free",1);
		
		//System.out.println(list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/board/community/free/list.jsp");
		request.setAttribute("pager", pager);
		request.setAttribute("list", map.get("list"));
		dispatcher.forward(request, response);
		
		

	}
}
