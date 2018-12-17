package com.mavius.web.controller.member;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/board/target/archer/reg")
@MultipartConfig(
	    fileSizeThreshold = 1024*1024,
	    maxFileSize = 1024*1024*10, 
	    maxRequestSize = 1024*1024*10*5
	)
public class ArcherRegController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("../../../member/board/target/job/archer/reg.jsp");

		dispatcher.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		String sql = "INSERT INTO BOARD(ID, TITLE, CONTENT, WRITER_ID, CATALOG) "
	            + "VALUES(BOARD_SEQ.NEXTVAL, ?, ?, ?, ?)";
	      
	    String sql1 = "SELECT ID FROM(SELECT * FROM BOARD ORDER BY REGDATE DESC) "
	            +"WHERE ROWNUM =1";
		
		
		
//	 	String path = request.getServletContext().getRealPath("/target/upload");
//	 	
//	 	File file = new File(path);
//		if(!file.exists())
//			file.mkdirs();
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		List<Part> parts = (List<Part>) request.getParts();
		System.out.println(title);
		System.out.println(content);
		System.out.println(parts);
//		String fileName = part.getSubmittedFileName();
//		String filePath = path + File.separator + fileName;
//		InputStream fis = part.getInputStream();
//		OutputStream fos = new FileOutputStream(filePath);
	 	
		RequestDispatcher dispatcher = request.getRequestDispatcher("../../../member/board/target/job/archer/reg.jsp");

		dispatcher.forward(request, response);
	}
}
