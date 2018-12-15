package com.mavius.web.controller.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.Board;
import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

@WebServlet("/board/community/freeboard/list")
public class FreeBoardListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//		String page_ = request.getParameter("p");
//		int page = 1;
//
//		if(page_ != null && !page_.equals(""))
//			page = Integer.parseInt(page_);



		BoardService service = new JdbcBoardService();
		List<Board> list = service.getBoardList("freeboard",1,1);//리턴값으로 list가 담겨있는 상태
		
		System.out.println(list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("list.jsp");
		request.setAttribute("list", list);
		dispatcher.forward(request, response);

	}
}
