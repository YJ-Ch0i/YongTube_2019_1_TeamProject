package Util;

import java.sql.*;
public class DBConn 
{
	public static Connection getConnection() throws SQLException
	{
		Connection conn = null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/yongtube?useSSL=false";
			conn = DriverManager.getConnection(url, "root", "cs1234");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return conn;
	}
}