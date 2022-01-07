package utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBManager {
	
	private DBManager() {};
	
	public static Connection getConnection() {
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://junggo-db.chhmnd3itapy.ap-northeast-2.rds.amazonaws.com:3306/JungGoDB?serverTimeZone=UTC";
			String user = "admin";
			String password = "mqaRNbPH8S9m3CQB";
			
			conn = DriverManager.getConnection(url, user, password);
			
			if(conn != null) {
				System.out.println("JungGo-Server@aws-rds Database 연동 성공!");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
}
