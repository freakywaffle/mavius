package com.mavius.web.controller.member;

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

@WebServlet("/mypage/boardlist")
public class MypageBoardListController extends HttpServlet
{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		
		BoardService service = new JdbcBoardService();
		Map<String,Object> bm = new HashMap<String, Object>();
		String uid = request.getParameter("uid");
		String category = request.getParameter("category");
		String keyword = request.getParameter("keyword");
		String catalog = request.getParameter("catalog");
		String page_ = request.getParameter("page");
		
		int page=1;
		
		if(page_ !=null && !page_.equals(""))
			page = Integer.parseInt(request.getParameter("page"));
		
		if(catalog !=null && !catalog.equals(""))
			bm = service.getBoardListById(uid, page, keyword, catalog);
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/member/mypage/board/list.jsp");
		request.setAttribute("bm", bm);
		dispatcher.forward(request, response);
		
		
	}
	
	

}
