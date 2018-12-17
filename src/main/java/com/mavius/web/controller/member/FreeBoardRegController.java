package com.mavius.web.controller.member;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mavius.web.entity.Board;
import com.mavius.web.service.BoardService;
import com.mavius.web.service.jdbc.JdbcBoardService;

@WebServlet("/board/community/freeboard/reg")
public class FreeBoardRegController extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		BoardService service = new JdbcBoardService();
//		List<Board> list = service.getBoardList("freeboard",1,1);//占쏙옙占싹곤옙占쏙옙占쏙옙 list占쏙옙 占쏙옙占쏙옙獵占� 占쏙옙占쏙옙
		
//		System.out.println(list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("reg.jsp");
//		request.setAttribute("list", list);
		dispatcher.forward(request, response);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		String path = request.getServletContext().getRealPath("community/freeboard/upload"); //application
		System.out.println(path);

		File file = new File(path);

		if(!file.exists())//파일이 존재하지 않는다면
			file.mkdirs();//파일 디렉토리를 만들어라






		String title = request.getParameter("title");
		String [] titles = request.getParameterValues("titles");

		String content = request.getParameter("content");
		Part part = request.getPart("file");
		//request.getParts()
		String fileName = part.getSubmittedFileName();
		String filePath = path + File.separator + fileName;
		//getName();키값의 이름을 빼옴
		InputStream fis = part.getInputStream();
		OutputStream fos = new FileOutputStream(filePath);
		System.out.println(fileName);
		byte[] buf = new byte[1024];

		int size = 1024;

		while((size = fis.read(buf)) >= 0)		// 1024, 1024, 23, -1, -1, -1, -1
			fos.write(buf, 0, size);
		
		fos.close();
		fis.close();
		System.out.println(title);

//		String [] titles = request.getParameterValues("title");
//		for (String title : titles) 
//			System.out.println("타이틀"+title);

//		Collection<Part> parts = request.getParts();
//		for(Part p : parts)
//			if(p.getName().equals("file"))
				//System.out.println("파트:"+p.getName()+","+p.getSubmittedFileName());
		//모든 파트들이 온다 즉 타이틀 컨텐트도 같이옴 쓸려면 키값. getName에서 파일을 걸어주는 제어문을 넣고 사용해야한다


		String sql = "insert into BOARD_FREE(ID, TITLE, WRITER_ID, CONTENT) "
				+ "VALUES(BOARD_SEQ.NEXTVAL, ?, ?, ?)";
		String sql1 = "SELECT ID FROM (SELECT * FROM BOARD_FREE ORDER BY REGDATE DESC) WHERE ROWNUM =1";
		//"현재 게시글 중에서 가장 최근 게시글의 id를 얻는 쿼리 ";
		String sql2 ="insert into BOARD_file(ID, NAME, NOTICE_ID) "
				+ "VALUES(BOARD_FILE_SEQ.NEXTVAL, ?, ?)";
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");


			con.setAutoCommit(false);


			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, title);
			st.setString(2, "LEE");
			st.setString(3, content);
			int affected = st.executeUpdate();




			PreparedStatement st1 = con.prepareStatement(sql1);
			ResultSet rs = st1.executeQuery();
			rs.next();
			int boardId =rs.getInt("id");//이렇게 사용하기위해서는 DB에서 외래키 설정해줘야한다. 
			rs.close();


			PreparedStatement st2 = con.prepareStatement(sql2);
			st2.setString(1, fileName);
			st2.setInt(2, boardId);
			st2.executeUpdate();

			con.commit();
			//ResultSet rs =st.executeQuery();
			st.close();
			st1.close();
			st2.close();
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		response.sendRedirect("list");

	}
	
}
