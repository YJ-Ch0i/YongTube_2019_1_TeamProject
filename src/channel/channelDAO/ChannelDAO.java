package channel.channelDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Util.DBConn;
import channel.channelDTO.ChannelDTO;
import video.videoDTO.VideoDTO;

public class ChannelDAO {

	private static ChannelDAO channelDao = new ChannelDAO();
	private ChannelDAO() {}
	public static ChannelDAO getInstance() {
		return channelDao;
	}
	
	public void ChannelRegister(String u_id, String ch_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "INSERT INTO channel VALUES(?,?)";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			pstmt.setString(2, ch_id);
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
	

	public ChannelDTO selectChannel(String u_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ChannelDTO dto = null;
		
		String sql = "SELECT * FROM channel WHERE u_id=?";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto = new ChannelDTO(rs.getString(1), rs.getString(2));
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
		return dto;
	}
}
