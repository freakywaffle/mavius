package com.mavius.web.controller.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.Member;
import com.mavius.web.entity.MemberView;
import com.mavius.web.service.AuthService;
import com.mavius.web.service.jdbc.JdbcAuthService;

@WebServlet("/member/join")
public class JoinController extends HttpServlet{

	/*@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/member/join.jsp");
		dispatcher.forward(request, response);
	}*/
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		//PrintWriter out = response.getWriter();

		AuthService service = new JdbcAuthService();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/member/join.jsp");
		//request.setAttribute("member", member);
		dispatcher.forward(request, response);
		
		String joinId = request.getParameter("uid");
		String joinPwd = request.getParameter("pwd");
		String joinEmail = request.getParameter("email");
		
		System.out.println("사용할 id : " + joinId);
		System.out.println("사용할 pwd : " + joinPwd);
		System.out.println("사용할 email : " + joinEmail);
		//out.write(buf);
		String sql = "insert into MEMBER (ID, PWD, EMAIL) values ('" + joinId + "'," + "'" + joinPwd + "'," + "'" + joinEmail + "'" + ")";
        
        try {
           
           String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
           Statement st = con.createStatement();
           ResultSet rs =st.executeQuery(sql);
           
           Member member = null;
           member = service.getMember(joinId);
           request.setAttribute("member", member);
           System.out.println("member : " + member);
           System.out.println(joinId + " 회원추가 완료");
           System.out.println(member.getId());

        } catch (ClassNotFoundException e) {
           // TODO Auto-generated catch block
           e.printStackTrace();
        } catch (SQLException e) {
           // TODO Auto-generated catch block
           e.printStackTrace();
        }
		
	}
	
}
