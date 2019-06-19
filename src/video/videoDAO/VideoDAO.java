package video.videoDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Util.DBConn;
import user.userDTO.UserDTO;
import video.videoDTO.VideoDTO;

public class VideoDAO {

	private static VideoDAO videoDao = new VideoDAO();
	private VideoDAO() {}
	public static VideoDAO getInstance() {
		return videoDao;
	}
	
	public boolean videoRegister(VideoDTO v) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "INSERT INTO video(u_id, v_title, v_desc, v_path, v_img, ch_id, updated) VALUES(?,?,?,?,?,?,?)";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, v.getU_id());
			pstmt.setString(2, v.getV_title());
			pstmt.setString(3, v.getV_desc());
			pstmt.setString(4, v.getV_path());
			pstmt.setString(5, v.getV_img());
			pstmt.setString(6, v.getCh_id());
			pstmt.setTimestamp(7, v.getUpdated());
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
	
	public boolean videoDelete(int v_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "DELETE FROM video WHERE v_id=?";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, v_id);
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
	
	public ArrayList<VideoDTO> videoSearchUID(String u_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		ArrayList<VideoDTO> list = new ArrayList<>();
		
		String sql = "SELECT * FROM video WHERE u_id=?";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(new VideoDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getTimestamp(8)));
			}
			
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}
		}
		return list;
	}
	
	public VideoDTO videoSearchVID(int v_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		VideoDTO dto = null;
		
		String sql = "SELECT * FROM video WHERE v_id=?";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, v_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto = new VideoDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getTimestamp(8));
			}
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}
		}
		return dto;
	}
	
	public ArrayList<VideoDTO> videoSearch() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		ArrayList<VideoDTO> list = new ArrayList<>();
		
		String sql = "SELECT * FROM video";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(new VideoDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getTimestamp(8)));
			}
			
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}
		}
		return list;
	}
	
	public ArrayList<VideoDTO> videoSearchAJAX(String v_title) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		ArrayList<VideoDTO> list = new ArrayList<>();
		
		String sql = "SELECT * FROM video WHERE v_title LIKE ?";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+ v_title + "%");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(new VideoDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getTimestamp(8)));
			}			
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}
		}
		return list;
	}
	
	public UserDTO videoUploaderSearch(int v_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		UserDTO dto = null;
		
		String sql = "SELECT u_name, u_alias FROM video_uploader WHERE v_id=?";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, v_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto = new UserDTO(rs.getString(1), rs.getString(2));
			}
			
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}
		}
		return dto;
	}
}
