package com.lytear.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {

	// 다 끝나고 싱글턴 방법 아래 추가
	private static MysqlService mysqlService = null;//클래스 설계 순간부터 MysqlService 변수 만들어짐 (객체 없어도)
	// 변수 앞 static : 클래스 객체 생성 되던 안 되던 변수 만들어짐. 클래스에 속해진 딱 하나의 변수가 됨
	
	
	// 라이브러리에 접속하는 방법을 간단 명표하게 바꾸는 방법. 우선 DB 접속시 필요한 멤버 변수
	// url, userId, password
	
	private String url; // 설계도 일 뿐 변수가 만들어지진 않는다
	private String userId;
	private String password;
	// 멤버 변수 초기화 => 생성자 만들어서 씀. url,userId, password 다 알고 있으므로 파라미터로 외부에서 받을 필요 X
	
	
	// 접속 관리 객체 : 해당하지 메소드 하나가 아니라 여러 메소드에서 사용하기 위해 멤버 변수로 따로 뺌
	private Connection connection;
	private Statement statement;
	
	public MysqlService() {
		// 일반적으로 변경하지 않으면 기본 포트 번호는 3306
		this.url = "jdbc:mysql://localhost:3306/web_jinilyoon";
		this.userId = "root";
		this.password = "root";
		
	}
	
	// static 변수 사용시 메소드도  static 이면 좋음
	public static MysqlService getInstance() {
		// new + 로 객체 생성 X. getInstance() 호출해서 사용. static 메소드이니 객체생성 상관 없음
		if(mysqlService==null) {
			mysqlService = new MysqlService(); // 최초 한 번만 객체 생성
		}
		
		return mysqlService; // 최초 객체 생성 이후에는 계속 돌려 씀
	}
	
	
	
	
	
	
	// 이제 접속을 위한 메소드 (register -> connection -> statement를 하나로)
	public void connect() {
		try {
			DriverManager.registerDriver (new com.mysql.jdbc.Driver());
			// 그 다음 위 접속관리 객체로 감
			this.connection = DriverManager.getConnection(this.url, this.userId, this.password);
			// 쿼리 수행 위한 statement와 접속하기 위한 connection
			this.statement = this.connection.createStatement();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	// 쿼리 수행 메소드
	// 업데이트 메소드 INSERT, UPDATE, DELETE
	// 수행할 쿼리를 파라미터로 받음
	public int update(String query) {
		int count = 0;//count 0이라는 건 뭔가 잘못 됐다는 것. 행이 제대로 수행 안 됨
		try {
			count = this.statement.executeUpdate(query);// 이건 사용법. 성공한 행 결과 저장
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
		
	}
	
	// select 쿼리수행 메소드
	public ResultSet select(String query) {
		// 쿼리 수행은 statement를 통해 함
		ResultSet result = null;
		try {
			result = this.statement.executeQuery(query);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// 데이터 베이스 연결 끊기 메소드 : 서버 접속 했음 계속 물고 있음 안 되고 사용 다 했음 끊어져야 해
	public void disconnect() {
		try {
			this.statement.close();
			this.connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	// 지금까지 복잡한 사용법 간단히 쓸 수 있게 포장.나중에는 이걸 사용 안 하고 spring 넘어감
	
	
	
	
}
