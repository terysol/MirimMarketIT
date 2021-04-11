package kr.hs.mirimmarket.common;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	private Connection conn;
	
	public static Connection getConnection() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/mirimmarket?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
			String dbID = "root";
			String dbPassword = "mirim2";

			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}
}
