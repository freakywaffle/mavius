package com.mavius.web.service.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mavius.web.entity.Member;
import com.mavius.web.service.ConfirmService;

public class JdbcConfirmService implements ConfirmService{

	@Override
	public Member getMember(String id, String nickName, String pwd) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int join(Member member) {
		//ConfirmService service = new JdbcConfirmService();
		
		int affected=0;
		String sql = "insert into MEMBER (ID, NICKNAME, PWD) values (?, ?, ?)";
        //String sql2 = "select * from member where id=?";
        		
        try {
           
           String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
           PreparedStatement st = con.prepareStatement(sql);
           st.setString(1, member.getId());
           st.setString(2, member.getNickName());
           st.setString(3, member.getPwd());
           
           affected = st.executeUpdate();
           System.out.println(affected);
           st.close();
           con.close();
        } catch (ClassNotFoundException e) {
           // TODO Auto-generated catch block
           e.printStackTrace();
        } catch (SQLException e) {
           // TODO Auto-generated catch block
           e.printStackTrace();
        }
		return affected;
	}

	@Override
	public Member getMember(String uid) { //중복체크
		// TODO Auto-generated method stub
		
		Member member = null;
		
		String sql = "select * from member where id=?";
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		
		try {
	           Class.forName("oracle.jdbc.driver.OracleDriver");
	           Connection con = DriverManager.getConnection(url,"c##mavius","maplegg");
	           PreparedStatement st = con.prepareStatement(sql);
	           st.setString(1, uid);
	           ResultSet rs = st.executeQuery();
	           
	           System.out.println("uid111 : "+uid);
	           
	           if(rs.next())
	        	   member = new Member(
	        			    rs.getString("id"),
							rs.getString("pwd"),
							rs.getString("nickName"),
							rs.getString("email"),
							rs.getString("grade"),
							rs.getInt("exp"),
							rs.getDate("regDate"),
							rs.getInt("report"),
							rs.getInt("authority")
							);
	           System.out.println("member111 : " + member);
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
		
		return member;
	}

	@Override
	public int memberChk(String uid) 
	{
		// TODO Auto-generated method stub
		
		
		return 0;
	}

}
