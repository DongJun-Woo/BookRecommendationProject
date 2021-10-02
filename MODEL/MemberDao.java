package com.member; //eclipse로 실행할 때 제가 임의로 등록한 폴더 명입니다 원하시는대로 바꿔주세요
		    //같은 폴더에 있어서 MemberVO가 있었습니다

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.sql.Connection;

public class MemberDao {
	private static MemberDao mDao;
	private  Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	//DB 액세스
	public static synchronized MemberDao getInstance() {
		if (mDao == null) {
			mDao = new MemberDao();
		}
		return mDao;
	}
	
	public Connection getConnection() {
		String url = "jdbc:mysql://127.0.0.1:3306/thornbooksdb?serverTimezone=UTC&characterEncoding=utf-8&useSSL=false";
		String id = "root", pw = "1234";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, id, pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//회원정보 검색
	public List listmembers(MemberVO mvo) {
		List<MemberVO> memList = new ArrayList<MemberVO>();
		String mName = mvo.getName();
		try {
			con = this.getConnection();
			String query = "select * from member";
			
			if((mName != null && mName.length() != 0)) {
				query += " where name=?";
				pstmt = con.prepareStatement(query);
                pstmt.setString(1, mName);
			}else {
				pstmt = con.prepareStatement(query);
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				
				//rs.getString(이 안에는 db에 등록한 이름)
				
				String id = rs.getString("id");
				String pwd = rs.getString("password");
				String name = rs.getString("name");
				String p_num = rs.getString("phone_number");
				String email = rs.getString("email");
				String gender = rs.getString("gender");
				Date joinDate = rs.getDate("join_date");
				
				MemberVO vo = new MemberVO();
                vo.setId(id);
                vo.setPwd(pwd);
                vo.setName(name);
                vo.setP_num(p_num);
                vo.setEmail(email);
                vo.setGender(gender);
                vo.setJoinDate(joinDate);
                
                memList.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
        	this.close(con, pstmt, null);
        }
		return memList;
	}
}
