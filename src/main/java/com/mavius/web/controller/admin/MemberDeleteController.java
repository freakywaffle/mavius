package com.mavius.web.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.Member;
import com.mavius.web.service.MemberService;
import com.mavius.web.service.jdbc.JdbcAuthService;
import com.mavius.web.service.jdbc.JdbcMemberService;

@WebServlet("/admin/member/delete")
public class MemberDeleteController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		MemberService service = new JdbcMemberService();
		
		String id = request.getParameter("id");
		String nickName = request.getParameter("nickname");
		String chk = request.getParameter("chk");
		
		if(chk==null)
		System.out.println("h");
		else if (chk.equals("on"))
			System.out.println("^^");
		//System.out.println(nickName);
	//	Member mem = new Member(id,nickName);
		
//		int del = service.delete(mem);
		
		response.sendRedirect("/admin/member/management/list");
		
		
	}
}
