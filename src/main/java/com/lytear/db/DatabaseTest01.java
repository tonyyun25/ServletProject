package com.lytear.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lytear.common.MysqlService;
@WebServlet("/db/test01")
public class DatabaseTest01 extends HttpServlet {

	
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		
		PrintWriter out = response.getWriter();
		
//		MysqlService mysqlService = new MysqlService();
		
		// 하나의 서버 여러개 객체 => 커넥션 많아지면 부하 걸림
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
//		String query = "INSERT INTO `real_estate`\r\n"
//				+ "(`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`,`createdAt`,`updatedAt`)\r\n"
//				+ "VALUE (3,'헤라펠리스 101동 5305호',350,'매매',1500000,NULL,now(),now())";
//		int count = mysqlService.update(query);//에러 없는지를 count 통해 확인
//		out.println("삽입 행 개수 : " + count);// 먼저 실행해 본다
		// 실행할 때마다 위 insert 또 실행되므로 한 번 실행 후 그 다음은 주석 처리했음
		
		
		String selectQuery = "SELECT * FROM real_estate ORDER BY `id` DESC LIMIT 10";
		
		
		ResultSet result = mysqlService.select(selectQuery);//selectQuery는 update 이 아니다
		
		try {
			while(result.next()) {
				out.print("매물 주소 : " + result.getString("address"));//result 자체에서 값을 가져온다
				out.print(" 면적 : " + result.getInt("area"));
				out.println(" 타입 : " + result.getString("type"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	
	}
	
	
	
	
	
	
	
}
