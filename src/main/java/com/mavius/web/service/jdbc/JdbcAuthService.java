package com.mavius.web.service.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.mavius.web.entity.Member;
import com.mavius.web.entity.MemberAuth;
import com.mavius.web.service.AuthService;

public class JdbcAuthService implements AuthService {

	@Override
	public String getDefaultAuthId(String memberId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member getMember(String uid) {
		// TODO Auto-generated method stub
		Member member = null;
		System.out.println("uid드오니? "+uid);
		String sql = "select * from member where id=?";
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"c##mavius","maplegg"); 
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uid);

			ResultSet rs =st.executeQuery(); //PreparedStatement를 사용할땐 리살트셋 괄호안에 쿼리문은 x

			if(rs.next())
				member = new Member(
						rs.getString("id"),
						rs.getString("pwd"),
						rs.getString("nickName"),
						rs.getString("eMail"),
						rs.getString("grade"),
						rs.getInt("exp"),
						rs.getDate("regDate"),
						rs.getInt("report"),
						rs.getInt("authority")
						);

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
		
		System.out.println(member);
		return member;
		
	}

	@Override
	public List<MemberAuth> getMemberAuthsById(String uid) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
}
