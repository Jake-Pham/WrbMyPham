package vn.cosmetics.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;




public class connectDB {
	public connectDB(){
		super();
	}
	public static Connection getConnect(){
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/cosmetics?allowPublicKeyRetrieval=true&useSSL=false&useUnicode=true&characterEncoding=UTF-8", "root",
					"123456789");
			return conn;

		} catch (Exception e) {
			System.out.println(e);
			System.out.println("ket noi khong thanh cong");
			return null;
		}
	}
	public static void main(String[] args) {
		System.out.println(getConnect());
	}

}