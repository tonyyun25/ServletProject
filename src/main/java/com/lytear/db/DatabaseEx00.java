package com.lytear.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/db/ex00")
public class DatabaseEx00 extends HttpServlet{

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			// 그 다음 과정도 try 안에서 다 진행. 여기서 진행 안 됐는데  catch로 가면 안 되니까
			String url = "jdbc:mysql://localhost:3306/web_jinilyoon";
			String userId = "root";
			String password = "root";
			
			Connection connection = DriverManager.getConnection(url, userId, password);
			// 쿼리를 수행하기 위한 준비 아래 시작
			Statement statement = connection.createStatement();
			
			String selectQuery = "SELECT * FROM used_goods";
			// 위 쿼리를 위에서 만든 statement 통해 쿼리 실행. select는 select 한 결과를 받아야 수행 가능 => ResultSet
			ResultSet resultSet = statement.executeQuery(selectQuery);
			// selectQuery로 전달된 결과는 resultSet에 저장됨
			
			PrintWriter out = response.getWriter();
			
			
			
			while(resultSet.next()) {
				out.println(resultSet.getString("title"));//resultSet 자체가 지금 (수행) 한 행을 의미. 반면 iterator는 next 한 값을 변수에 저장
				out.println(resultSet.getInt("price"));
				
			}
			
			String insertQuery = "INSERT INTO `used_goods`\r\n"
					+ "(`title`,`price`,`description`,`sellerId`,`createdAt`,`updatedAt`)\r\n"
					+ "VALUE ('고양이간식 팝니다',2000,'저희 고양이가 입맛이 까다로워서 안 먹네요',5,now(),now());";
			
			// 다음은 이 쿼리를 수행. select는 쿼리 이후에 나온 결과를 resultSet으로 돌려주기 위해 executeQuery
			// 이지만 insert는 돌려줄 값이 없으나 실행한 결과 행수(5 rows returned 같은 것)를 리턴함
			int count = statement.executeUpdate(insertQuery);
			
			out.println("삽입성공!!" + count);
			
			// mysql에서는 delete row 하고 apply 까지 해야 지워짐 (안전을 위해 작동)
			
			
			
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		
		
	}
}
