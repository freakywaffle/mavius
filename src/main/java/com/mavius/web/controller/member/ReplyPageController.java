package com.mavius.web.controller.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.google.gson.stream.JsonReader;
import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

import tool.Pager;

@WebServlet("/reply-pager")
public class ReplyPageController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		int pageCnt = 8;
		int pagerCnt = 5;

	    JsonReader reader = new JsonReader(request.getReader());
	    JsonParser parser = new JsonParser();
	    JsonElement element = parser.parse(reader);	    
	    String rPage_ = element.getAsJsonObject().get("page").getAsString();
	    System.out.println(rPage_);
	    int rPage = 1;
		
	    if(rPage_ != null && !rPage_.equals(""))
			rPage = Integer.parseInt(rPage_);
	    
	    int no = Integer.parseInt(element.getAsJsonObject().get("no").getAsString());
   
	    System.out.println(rPage);
	    System.out.println(no);
	    
	    BoardService service = new JdbcBoardService();
	    
	    Map<String, Object> map = service.getReplyListByBoardNo(no, rPage, pageCnt);
	    
	    int boardCnt = (int)map.get("rowCnt");
	    
	    Pager pager = new Pager(pageCnt, pagerCnt, rPage, boardCnt);
		
		map.put("pager", pager);	
		
		
		Gson gson = new Gson();
		String json = gson.toJson(map);		
		
		out.write(json);
	}
}
