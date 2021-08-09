package com.lytear.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DMysqlService {

	// ===============   싱글턴 패턴 추가  ========================
	
	private static MysqlService mysqlService = null;
	
	// ===============   싱글턴 패턴 추가  ========================
	private String url;
	private String userId;
	private String password;
	
	
	private Connection connection;
	private Statement statement;
	
	
	public DMysqlService () {
		
		this.url = "jdbc:mysql://localhost:3306/web_jinilyoon";
		this.userId = "root";
		this.password = "root";
		
	}
	
	// ===============   싱글턴 패턴 추가  ========================
	
	public static MysqlService getInstance() {
		if(mysqlService==null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	
	// ===============   싱글턴 패턴 추가  ========================
	
	
	
	public void connect() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			this.connection = DriverManager.getConnection(this.url, this.userId, this.password);
			this.statement = this.connection.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public int update (String query) {
		int count = 0;
		try {
			count = this.statement.executeUpdate(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
		
	}
	
	public ResultSet select(String query) {
		ResultSet result = null;
		try {
			result = this.statement.executeQuery(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public void disconnect() {
		try {
			this.statement.close();
			this.connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		
	}
}
