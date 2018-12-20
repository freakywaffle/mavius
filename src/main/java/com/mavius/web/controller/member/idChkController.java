package com.mavius.web.controller.member;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.entity.Member;
import com.mavius.web.service.AuthService;
import com.mavius.web.service.jdbc.JdbcAuthService;

@WebServlet("/member/idchk")
public class idChkController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/member/idchk.jsp");
		//request.setAttribute("member", member);
		dispatcher.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String uid = request.getParameter("uid");
		
		String sql = "select * from member where id=?";
        boolean result = false;
		
        try {
           
           String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
           PreparedStatement st = con.prepareStatement(sql);
           st.setString(1, uid);
           ResultSet rs = st.executeQuery();
           
           System.out.println(uid);
           
           if(rs.next())
        	   result = true;
           
           System.out.println(result);
           
           rs.close();
           st.close();
           con.close();
           
        } catch (ClassNotFoundException e) {
           // TODO Auto-generated catch block
           e.printStackTrace();
        } catch (SQLException e) {
           // TODO Auto-generated catch block
           e.printStackTrace();
        }
		
		//AuthService service = new JdbcAuthService();
		
		//Member member = service.getMember(uid);
		System.out.println(uid);
		//System.out.println(member.getId());
		
		/*RequestDispatcher dispatcher = request.getRequestDispatcher("/member/idchk.jsp");
		//request.setAttribute("member", member);
		dispatcher.forward(request, response);*/
		
	}
}
