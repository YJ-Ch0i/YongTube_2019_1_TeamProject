package user.userDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Util.DBConn;
import user.userDTO.UserDTO;

public class UserDAO {

	private static UserDAO userDao = new UserDAO();
	private UserDAO() {}
	public static UserDAO getInstance() {
		return userDao;
	}

	/**
	 * 유저 아이디 중복 체크
	 * 유저가 이미 가입되어 있다면 false를 반환
	 * @param uId
	 * @return
	 */
	public boolean isUserRegist(String uId) {
		//유저 아이디 중복체크
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select u_id from User where u_id = ?";
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(1).equals(uId)) return false;				
			}
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}
			if(rs != null) try{rs.close();}catch(SQLException sqle){}
		}
		return true;
	}
	
	public boolean isUserAliasRegist(String alias) {
		//유저 닉네임 중복체크
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select u_alias from User where u_alias = ?";
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, alias);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(1).equals(alias)) return false;				
			}
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}
			if(rs != null) try{rs.close();}catch(SQLException sqle){}
		}
		return true;
	}
	
	
	/**
	 * 유저 로그인
	 * @param u_id
	 * @param u_pass
	 * @return
	 */
	public int userLogin(String u_id, String u_pass) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select AES_DECRYPT(UNHEX(u_pass),'cs1234') from user where u_id = ?";
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(1).equals(u_pass)) return 1;
				else return 0;
			}
			return -1;
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}
			if(rs != null) try{rs.close();}catch(SQLException sqle){}
		}
		return -2;
	}
	
	public int userRegister(UserDTO user) {
		Connection conn = null;
		Statement stmt = null;
		
		int isCheck = (user.isCheck()) ? 1: 0;
		int isPossible = (user.isPossibility()) ? 1: 0;
				
		String sql = "INSERT INTO user VALUES('"+user.getU_id()+"',HEX(AES_ENCRYPT('"+user.getU_pass()+"','cs1234')),'"+
				user.getU_name()+"','"+user.getU_alias()+"','"+user.getPl_id()+"','"+user.getU_idhash()+"','"+
				isCheck+"','"+user.getRegidate()+"','"+isPossible + "')";
		try {
			conn = DBConn.getConnection();
			stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {
			if(stmt != null) try{stmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}
		}
		return -1;
	}
	
	public boolean getEamilChecked(String u_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT ischeck FROM user WHERE u_id = ?";
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				return rs.getBoolean(1);
			}
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {
			if(rs != null) try{rs.close();}catch(SQLException sqle){}
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}			
		}
		return false;
	}
	
	public boolean setEmailCheck(String u_id, String pl_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "UPDATE user SET ischeck = true, pl_id=? WHERE u_id = ?";
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pl_id);
			pstmt.setString(2, u_id);
			pstmt.executeUpdate();
			return true;
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {			
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}			
		}
		return false;
	}
	
	public UserDTO getUser(String u_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UserDTO user = null;
		
		//String sql = "SELECT * FROM user where u_id = ?";
		String sql = "SELECT u_id, AES_DECRYPT(UNHEX(u_pass),'cs1234'), u_name, u_alias, pl_id, ischeck, regidate, possibility FROM user WHERE u_id = ?";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				user = new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getBoolean(6), rs.getDate(7), rs.getBoolean(8));
			}
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {			
			if(rs != null) try{rs.close();}catch(SQLException sqle){}
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}			
		}
		return user;
	}
	
	public ArrayList<UserDTO> getAllUser() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<UserDTO> list = new ArrayList<>();
		
		String sql = "SELECT u_id, AES_DECRYPT(UNHEX(u_pass),'cs1234'), u_name, u_alias, pl_id, ischeck, regidate, possibility FROM user";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getBoolean(6), rs.getDate(7), rs.getBoolean(8)));
			}
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {			
			if(rs != null) try{rs.close();}catch(SQLException sqle){}
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}			
		}
		return list;
	}
	
	public boolean setTruePossibility(String u_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "UPDATE user SET possibility=true WHERE u_id = ?";
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			pstmt.executeUpdate();
			return true;
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {			
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}			
		}
		return false;
	}
	
	public boolean setFalsePossibility(String u_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "UPDATE user SET possibility=false WHERE u_id=?";
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			pstmt.executeUpdate();
			return true;
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {			
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}			
		}
		return false;
	}
}
