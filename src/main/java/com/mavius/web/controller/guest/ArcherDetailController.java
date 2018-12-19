package com.mavius.web.controller.guest;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.Board;
import com.mavius.web.entity.BoardFile;
import com.mavius.web.entity.BoardView;
import com.mavius.web.entity.Reply;
import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

@WebServlet("/board/archer/detail")
public class ArcherDetailController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		BoardService service = new JdbcBoardService();
		
		
		BoardView board = service.getBoard(no);
		List<Reply> replyList = service.getReplyListByBoardNo(no);
		List<BoardFile> fileList = service.getBoardFileListByBoardNo(no);
		
		
		request.setAttribute("board", board);
		request.setAttribute("replyList", replyList);
		request.setAttribute("fileList", fileList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("../target/job/archer/detail.jsp");
		
		dispatcher.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("../target/job/archer/detail.jsp");
		
		dispatcher.forward(request, response);
	}
}
