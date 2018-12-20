package com.mavius.web.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mavius.web.entity.Member;
import com.mavius.web.service.AuthService;
import com.mavius.web.service.jdbc.JdbcAuthService;

@WebServlet("/member/login")
public class LoginController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		/*String uid=request.getParameter("uid");
		System.out.println(uid);*/
		RequestDispatcher dispatcher = request.getRequestDispatcher("/member/login.jsp");
		dispatcher.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AuthService service = new JdbcAuthService();

		String uid = request.getParameter("uid");
		String pwd = request.getParameter("pwd");
		System.out.println("uid머냐 " + uid);
		Member member = null;
		
		member = service.getMember(uid);
		/*System.out.println("누가 로그인 했나~ " + member.getId());
		System.out.println("그의 닉네임은~ " + member.getNickName());
		System.out.println("비번은~ " + member.getPwd());*/
		
		//아이디가 없거나, 비밀번호가 다를때
		if(member == null) {
			response.sendRedirect("?er=1"); //리다이렉트함
		} else if(!pwd.equals(member.getPwd())) {
			response.sendRedirect("?er=1");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("uid", uid);
			//request.setAttribute("nick", member.getNickName());
			/*session.setAttribute("uNick", member.getNickName());*/
			
			String returnUrl = request.getParameter("return-url");
			System.out.println("으데로 리턴되니? " + returnUrl);
			
			/*if(returnUrl != null)
				response.sendRedirect(returnUrl);
			else
				response.sendRedirect("../member/login-ok.jsp");*/
				//센드 리다이렉트말고 포워드로해서 보내는,
			RequestDispatcher dispatcher = request.getRequestDispatcher("/member/login-ok.jsp");
			request.setAttribute("member", member);
			dispatcher.forward(request, response);
		}
		
	}
}
