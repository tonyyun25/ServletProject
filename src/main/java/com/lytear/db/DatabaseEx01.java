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
@WebServlet("/db/ex01")
public class DatabaseEx01 extends HttpServlet {

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		
		PrintWriter out = response.getWriter();
		
		
		// 아래 싱글톤 패턴 쓰려고 두 줄 지움
//		MysqlService mysqlService = new MysqlService();
//		mysqlService.connect();
		
		MysqlService mysqlService = MysqlService.getInstance();
		//mysqlService는 객체 생성 신경 안 쓰고 값 하나 만들어서 내놔 라고 하는 것
		mysqlService.connect();
		// 서버에 객체에 무수히 만들 경우 무리 갈 수 있어 이런 경우에만 (예외적) 싱글턴 => 하나를 가지고
		// 돌려쓰는 거라 자주 사용되지는 않음
		
		String insertQuery = "INSERT INTO `used_goods`\r\n"
				+ "(`title`,`price`,`description`,`sellerId`,`createdAt`,`updatedAt`)\r\n"
				+ "VALUE ('고양이간식 팝니다',2000,'저희 고양이가 입맛이 까다로워서 안 먹네요',5,now(),now());";
		
//		int count = mysqlService.update(insertQuery);
		
//		out.println("삽입성공 " + count);
		
		// 새로  url 맵핑하면 서버 껐다 켜야 잘 적용
		String selectQuery = "SELECT * FROM used_goods";
		// 여러 행이라 특수한 형태의 ResultSet 사용 iterator와 일부 유사
		ResultSet result = mysqlService.select(selectQuery);
		
		// 가져올 행이 있다면 true, 없으면 false라고 리턴 & 반복 중단. ResultSet 자체(에서부터 값 가져옴)가 지금 현재 행을 의미
		try {
			while(result.next()) {
				out.println(result.getInt("id"));//resultSet안에 getInt, getString 메소드 이미 정의됨
				out.println(result.getString("title"));
				out.println(result.getInt("price") + " <br>");
				
				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
