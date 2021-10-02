package main;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class MemberDao {
	private static MemberDao mDao;
	private  Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	

	public static synchronized MemberDao getInstance() {
		if (mDao == null) {
			mDao = new MemberDao();
		}
		return mDao;
	}
	
	public Connection getConnection() {
		String url = "jdbc:mysql://127.0.0.1:3306/bookrecommendationdb?serverTimezone=UTC&characterEncoding=utf-8&useSSL=false";
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

    public boolean loginCheck(String id, String password) {
    	
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean loginCon = false;
        try {
        	 con = this.getConnection();
           	 String strQuery = "select userid, userpw from userinfotbl where userid = ? and userpw = ?";

         	 pstmt = con.prepareStatement(strQuery);
         	 pstmt.setString(1, id);
        	 pstmt.setString(2, password);
       	 	 rs = pstmt.executeQuery();
       	   	 loginCon = rs.next();
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
        	this.close(con, pstmt, null);
        }
        return loginCon;
    }	
	
    public boolean memberInsert(MemberDto mDTO) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        try {
        	con = this.getConnection();
            String strQuery = "insert into userinfotbl values(?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, mDTO.getId());
            pstmt.setString(2, mDTO.getName());
            pstmt.setString(3, mDTO.getPassword());
            pstmt.setString(4, mDTO.getMail());
            pstmt.setString(5, mDTO.getPhonenumber());
            pstmt.setString(6, mDTO.getGender());
            pstmt.setString(7, mDTO.getRole());

            int count = pstmt.executeUpdate();

            if (count == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
        	this.close(con, pstmt, null);
        }
        return flag;
    }	
	
  	public List listmembers(MemberDto mDto) {
  		Connection con = null;
        PreparedStatement pstmt = null;
  		List<MemberDto> memList = new ArrayList<MemberDto>();
  		String mName = mDto.getName();
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
  			ResultSet rs = pstmt.executeQuery();
  			while(rs.next()) {
  				
  				String id = rs.getString("id");
  				String pwd = rs.getString("password");
  				String name = rs.getString("name");
  				String p_num = rs.getString("phonenumber");
  				String email = rs.getString("mail");
  				String gender = rs.getString("gender");
  				String role = rs.getString("role");
  				
  				MemberDto dto = new MemberDto();
  				
                dto.setId(id);
                dto.setPassword(pwd);
                dto.setName(name);
                dto.setPhonenumber(p_num);
                dto.setMail(email);
                dto.setGender(gender);
                dto.setRole(role);
                  
                memList.add(dto);
  			}
  		}catch(Exception e) {
  			e.printStackTrace();
  		}finally {
          	this.close(con, pstmt, null);
          }
  		return memList;
  	}
	

}
