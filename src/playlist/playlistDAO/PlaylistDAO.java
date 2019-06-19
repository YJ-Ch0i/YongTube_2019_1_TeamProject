package playlist.playlistDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Util.DBConn;
import video.videoDTO.VideoDTO;

public class PlaylistDAO {

	private static PlaylistDAO playDao = new PlaylistDAO();
	private PlaylistDAO() {}
	public static PlaylistDAO getInstance() {
		return playDao;
	}
	
	public void playListRegist(String pl_id, String u_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "INSERT INTO playlist VALUES(?,?)";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pl_id);
			pstmt.setString(2, u_id);
			pstmt.executeUpdate();
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}
		}
	}
	
	public void playListDetailRegist(int v_id, String pl_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "INSERT INTO list_detail(v_id, pl_id) VALUES(?,?)";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, v_id);
			pstmt.setString(2, pl_id);
			pstmt.executeUpdate();
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}
		}
	}
	
	public ArrayList<VideoDTO> playListSearch(String pl_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<VideoDTO> list = new ArrayList<>();
		
		String sql = "SELECT v_id, v_img, v_title, v_desc, updated FROM user_playlist WHERE pl_id=?";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pl_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(new VideoDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getTimestamp(5)));
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
}
