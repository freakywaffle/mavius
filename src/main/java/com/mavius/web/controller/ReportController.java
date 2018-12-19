package com.mavius.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.Board;
import com.mavius.web.entity.Member;
import com.mavius.web.entity.ReportReason;
import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

@WebServlet("/admin/report")
public class ReportController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
//		Member member= new Member();
//		Board board = new Board();
//		int reportedNo = board.getNo();
//	    String reporterId = member.getId();
		 // 게시글 넘버로 받아야 된다.
		String reason = request.getParameter("content");
		//System.out.println("이유: "+reason);
		String contentEtc = request.getParameter("contentEtc");
		//System.out.println("이유etc: "+contentEtc);
		String type = request.getParameter("type");
		//System.out.println("타입: "+type);
		int reportedNo = Integer.parseInt(request.getParameter("no"));
		
		//String writerId =request.getParameter("writerId");
		
		BoardService service = new JdbcBoardService();
		List<ReportReason> list = new ArrayList();
//		int reportNo = service.regReport(reportedNo, contentEtc,reason,reporterId,type);
		service.regReport(reportedNo, contentEtc,reason,"khh1111",type);
		//System.out.println(2);
				
		RequestDispatcher dispatcher = request.getRequestDispatcher("/board/community/freeboard/detail.jsp");
		dispatcher.forward(request, response);
		
		
		
	}

}
