package com.mavius.web.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

@WebServlet("/admin/board/community/delete")
public class BoardDeleteController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		String catalog = request.getParameter("catalog");
		
		
		BoardService service = new JdbcBoardService();
		
		String catalog_ = service.delete(no, catalog);
		
		if(catalog_.equals("free") || catalog_=="free")
			catalog_="freeboard";
		
		response.sendRedirect("/admin/board/community/"+catalog_+"/list");
	}
}
