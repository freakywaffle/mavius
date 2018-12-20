package com.mavius.web.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.Member;
import com.mavius.web.service.MemberService;
import com.mavius.web.service.jdbc.JdbcMemberService;

@WebServlet("/admin/member/edit")
public class MemberEditController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		MemberService service = new JdbcMemberService();
		
		String id = request.getParameter("id");
		String nickName = request.getParameter("nickname");
		String email = request.getParameter("email");
		String grade = request.getParameter("grade");
		int authority= Integer.parseInt(request.getParameter("authority"));
		
		System.out.println(id);
		System.out.println(nickName);
		System.out.println(email);
		System.out.println(grade);
		System.out.println(authority);
		Member mem = new Member(id, nickName, email, grade, authority);
		
		int edit = service.edit(mem);
		
		response.sendRedirect("/admin/member/management/list");
		
		
	}
}
