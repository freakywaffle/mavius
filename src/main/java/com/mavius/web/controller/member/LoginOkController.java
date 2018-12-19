package com.mavius.web.controller.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.Member;
import com.mavius.web.service.AuthService;
import com.mavius.web.service.jdbc.JdbcAuthService;

@WebServlet("/member/login-ok")
public class LoginOkController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		/*AuthService service = new JdbcAuthService();
		String uid = request.getParameter("uid");
		//List<Member> list = service.getMember(uid);
		
		Member member = null;
		member = service.getMember(uid);*/
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/member/login-ok.jsp");
		//request.setAttribute("member", member);
		dispatcher.forward(request, response);
	}
	
}
