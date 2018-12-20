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

}
