package com.mavius.web.controller.member;

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

@WebServlet("/board/free/detail")
public class FreeBoardDetailController extends HttpServlet{

	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		System.out.println("detail"+no);
		
		BoardService service = new JdbcBoardService();
		List<ReportReason> reason = new ArrayList();
		
		
		Board boardDetail = service.getBoard(no);
		//System.out.println(boardDetail);
		
		reason = service.getReportReason();
		System.out.println(reason);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/board/community/free/detail.jsp");
		request.setAttribute("reason", reason);
		request.setAttribute("detail", boardDetail);
		dispatcher.forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//�뿬湲곗꽌 �젣異쒕컺�쑝硫� �뜲�씠�꽣 ���옣�븯湲�!
		
			
		
	
		
//		String PostContent_ =request.getParameter("postContent");
//		String PostContent =null;
//		
//		//�삤瑜섏껜�겕
//		System.out.println(PostContent_);
//		
//		
//		if(!PostContent_.equals("")&&PostContent_!=null)
//			PostContent = PostContent_;
//		
//		//�삤瑜섏껜�겕
//		System.out.println(PostContent);
//		
//		
//		int PostNo = Integer.parseInt(request.getParameter("postNo"));//DB�뿉�꽌 諛쏆븘�삤湲� 
//		
//		ReportReason reportRe = new ReportReason();
		
	}
	
}
