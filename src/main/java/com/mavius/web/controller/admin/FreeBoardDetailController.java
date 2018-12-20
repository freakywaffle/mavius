package com.mavius.web.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.BoardView;
import com.mavius.web.entity.MemberView;
import com.mavius.web.service.BoardService;
import com.mavius.web.service.MemberService;
import com.mavius.web.service.jdbc.JdbcBoardService;
import com.mavius.web.service.jdbc.JdbcMemberService;

@WebServlet("/admin/board/community/freeboard/detail")
public class FreeBoardDetailController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		BoardService service = new JdbcBoardService();
		
		BoardView detail = service.getBoard(no);
		

		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/board/community/freeboard/detail.jsp");
		request.setAttribute("detail", detail);
		dispatcher.forward(request, response);
	}
	
}
