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
		
		String uid = "khh1111";
		String keyword = request.getParameter("keyword");
		String catalog = request.getParameter("catalog");
		String page_ = request.getParameter("page");
		
		int page=1;
		int pageCnt=10;
		int pagerCnt=5;
		
		if(page_ !=null && !page_.equals(""))
			page = Integer.parseInt(request.getParameter("page"));
		
		int startPage = pagerCnt*(page/pagerCnt)+1;
		int endPage = startPage+pagerCnt-1; 
		
		
		if(keyword !=null && !keyword.equals("")) 
		{
			if(catalog !=null && !catalog.equals("")) 
			{
				bm = service.getBoardListById(uid, page, pageCnt, keyword, catalog);
			}
			else 
			{
				bm = service.getBoardListById(uid, page, pageCnt, keyword);
			}
		}
		else 
		{
			bm = service.getBoardListById(uid, page, pageCnt);
		}
		
		System.out.println(bm.get("rowCnt"));
		
		int boardCnt = (int)bm.get("rowCnt");
		int maxPage =(int)Math.ceil(boardCnt/pageCnt);
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		request.setAttribute("list", bm.get("list"));
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/member/mypage/board/list.jsp");
		dispatcher.forward(request, response);
		
		
	}
	
	

}
