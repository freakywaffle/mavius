package com.mavius.web.controller.guest;

import java.io.IOException;
import java.util.List;
import java.util.Map;

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

import tool.Pager;

@WebServlet("/board/archer/detail")
public class ArcherDetailController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		int pageCnt = 8;
		int pagerCnt = 5;
		String rPage_ = request.getParameter("rPage");
		int rPage = 1;
		if(rPage_ != null && rPage_.equals(""))
			rPage = Integer.parseInt(rPage_);
		
		
		BoardService service = new JdbcBoardService();
		
		service.addHit(no);
		
		BoardView board = service.getBoard(no);
		List<BoardFile> fileList = service.getBoardFileListByBoardNo(no);
		
		Map<String, Object> map = service.getReplyListByBoardNo(no, rPage, pageCnt);
		int boardCnt = (int)map.get("rowCnt");
		
		Pager pager = new Pager(pageCnt, pagerCnt, rPage, boardCnt);
		
		request.setAttribute("board", board);
		request.setAttribute("replyList", map.get("list"));
		request.setAttribute("pager", pager);
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
