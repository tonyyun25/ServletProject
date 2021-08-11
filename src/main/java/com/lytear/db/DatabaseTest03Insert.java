package com.lytear.db;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lytear.common.MysqlService;
@WebServlet ("/db/test03/insert")
public class DatabaseTest03Insert extends HttpServlet {

	@Override
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");		

		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		//String nicknameString = request.getParameter("nickname");
		String sellerId = request.getParameter("nickname");
		
		String title = request.getParameter("title");
		String price = request.getParameter("price");//int 이나 String 처리
		String description = request.getParameter("description");
		String picture = request.getParameter("picture");
		// nickname 파라미터로 받는 법
		
		
//		int sellerId = 0;//
		// 아래 ResultSet은 테스트
			/*
				String query = "SELECT `id`,`nickname` FROM `seller`;";
				ResultSet result = mysqlService.select(query);
				try {
					while(result.next()) {
						if(result.getString("nickname").equals(nickname)) {
							sellerId = result.getInt("id");
						}
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
				*/
				// 여기까지 테스트
		
		String insertQuery = "INSERT INTO `used_goods`\r\n"
				+ "(`sellerId`,`title`,`price`,`description`,`picture`,`createdAt`,`updatedAt`)\r\n"
				+ "VALUES\r\n"
				+ "(" + sellerId + ",'" + title + "'," + price + ",'" + description + "','" + picture + "',now(),now());";
		
		
//		https://pixabay.com/ko/images/search/xbox/
		
		
		
		mysqlService.update(insertQuery);
//		out.println("입력 성공 : " + count);
		response.sendRedirect("/jspTemplete/test03/test03_1.jsp");
		
		
		
	}
	
	
	
}
