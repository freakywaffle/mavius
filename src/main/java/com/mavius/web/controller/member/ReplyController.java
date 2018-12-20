package com.mavius.web.controller.member;

import java.awt.SecondaryLoop;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.google.gson.stream.JsonReader;
import com.mavius.web.entity.Reply;
import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

import tool.Pager;

@WebServlet("/reply")
public class ReplyController extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}



	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		int pageCnt = 8;
		int pagerCnt = 5;

	    JsonReader reader = new JsonReader(request.getReader());
	    JsonParser parser = new JsonParser();
	    JsonElement element = parser.parse(reader);	    
	    String rPage_ = element.getAsJsonObject().get("content").getAsString();
	    
	    int rPage = 1;
		
	    if(rPage_ != null && rPage_.equals(""))
			rPage = Integer.parseInt(rPage_);
	    
	    Gson gson = new Gson();
	    
		int no = Integer.parseInt(element.getAsJsonObject().get("no").getAsString());
		String content = element.getAsJsonObject().get("content").getAsString();		
		
		BoardService service = new JdbcBoardService();
		HttpSession session = request.getSession();
		String uid = String.valueOf(session.getAttribute("uid"));
		
		Reply reply = new Reply(content, uid, no);
				
		service.reg(reply);

				
		Map<String, Object> map = service.getReplyListByBoardNo(no, rPage, pageCnt);
		
		int boardCnt = (int)map.get("rowCnt");
		Pager pager = new Pager(pageCnt, pagerCnt, rPage, boardCnt);
		
		map.put("pager", pager);
		
		
		
		String json = gson.toJson(map);		
		
//		
//		int boardCnt = (int)map.get("rowCnt");
//		
//		Pager pager = new Pager(pageCnt, pagerCnt, rPage, boardCnt);
//		request.setAttribute("list", map.get("list"));
//		request.setAttribute("pager", pager);
		
//		response.sendRedirect(returnUrl + "?no="+no);
		
		
		out.write(json);
	}
}
