package com.mavius.web.controller.guest;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/target/archer/list")
public class ArcherListController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		RequestDispatcher dispatcher = request.getRequestDispatcher("/board/target/job/archer/list.jsp");
		RequestDispatcher dispatcher = request.getRequestDispatcher("../job/archer/list.jsp");
		
		dispatcher.forward(request, response);
	}
}
