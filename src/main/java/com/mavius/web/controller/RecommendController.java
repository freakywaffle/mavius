package com.mavius.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

@WebServlet("/recommend")
public class RecommendController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String uid_ =null;
		String uid = null;
		BoardService service = new JdbcBoardService();
		int no = Integer.parseInt(request.getParameter("no"));
		int sep = Integer.parseInt(request.getParameter("sep"));
		uid_=request.getParameter("uid");
		//게시글 작성자아이디
		//리포터아이디를 받아와서 duplechk
		if(uid_!=null) {
				uid= uid_;
		System.out.println("recommend uid:"+uid+"recommend no:"+no+"null이 아님");}
		else
			System.out.println("recommend 널입니다");
		
		int chk=service.recommend(uid,no,sep);//
		//추천이 됐으면 -> 리코멘드를 
//		if(chk!=-1)
//		service.getBoard(no).getRecommend();
//		dispacther->detail;
//		out.write()
		
		
	}
	
}
