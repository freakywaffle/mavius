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

import com.mavius.web.service.QnaService;
import com.mavius.web.service.jdbc.JdbcQnaService;

import tool.Pager;

@WebServlet("/mypage/qna/list")
public class MypageQnaListController extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		
		QnaService service = new JdbcQnaService();
		Map<String,Object> qm = new HashMap<String, Object>();
		
		String uid = "ws";
		String during =request.getParameter("during");
		String page_ = request.getParameter("page");
		
		int page=1;
		int pageCnt=10;
		int pagerCnt=5;
		
		if(page_ !=null && !page_.equals(""))
			page = Integer.parseInt(request.getParameter("page"));
		
//		int startPage = pagerCnt*(page/pagerCnt)+1;
//		int endPage = startPage+pagerCnt-1; 
		
		
		if(during !=null && !during.equals("")) 
		{
			
			qm = service.getMyQnaList(uid, during, page, pageCnt);
			
		}
		else 
		{
			qm = service.getMyQnaList(uid, page, pageCnt);
		}
		
		System.out.println(qm.get("rowCnt"));
		
		int boardCnt = (int)qm.get("rowCnt");
//		int maxPage =(int)Math.ceil(boardCnt/pageCnt);
		
//		if(endPage > maxPage) {
//			endPage = maxPage;
//		}
		
		Pager pager = new Pager(pageCnt, pagerCnt, page, boardCnt);
		request.setAttribute("list", qm.get("list"));
//		request.setAttribute("startPage", startPage);
//		request.setAttribute("endPage", endPage);
		request.setAttribute("pager", pager);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/member/mypage/qna/list.jsp");
		dispatcher.forward(request, response);
		
		
		
	}
	
}
