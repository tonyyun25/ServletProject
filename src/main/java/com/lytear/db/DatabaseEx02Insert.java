package com.lytear.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lytear.common.MysqlService;

@WebServlet("/db/ex02_insert")
public class DatabaseEx02Insert extends HttpServlet {
	@Override
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
	
		PrintWriter out = response.getWriter();
		
		// 파라미터로 받을 내용 : 이름, 생년월일, 자기소개, 이메일
		String name = request.getParameter("name");		
		String birth = request.getParameter("yyyymmdd");		
		String introduce = request.getParameter("introduce");		
		String email = request.getParameter("email");		
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String insertQuery = "INSERT INTO \r\n"
				+ "`new_user` (`name`,`yyyymmdd`,`email`,`introduce`)\r\n"
//				+ VALUES ('유재석','20201112','yu@gmail.com','국민엠씨');
				+ "VALUES ('" + name + "','" + birth + "','" + email + "','" + introduce + "');";
		// insert 명을 변수명으로 바꿔주기
		int count = mysqlService.update(insertQuery);
		
		out.println("입력 성공" + count); // 입력하는 결과까지 확인하려고 출력
		
		
		
	}
	
}
