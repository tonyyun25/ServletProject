package com.lytear.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lytear.common.MysqlService;

@WebServlet("/db/test02_insert")
public class DatabaseTest02Insert extends HttpServlet {

	@Override
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
	
		PrintWriter out = response.getWriter();
	
		String name = request.getParameter("name");
		
		String url =  request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		// 종합문제 홍당무 풀어보면 spring 이해하는 데 굉장히 도움 됨. 탄탄하게 됨
		
		String insertQuery = "INSERT INTO `urlAddress`\r\n"
				+ "(`name`,`url`,`createdAt`,`updatedAt`)\r\n"
//				+ "VALUES('마론달','http://marondal.com',now(),now());"  
				+ "VALUES('" + name + "','" + url + "',now(),now());";  
//		mysqlService.update(insertQuery);
		int count = mysqlService.update(insertQuery);
		out.println("입력 성공 : " + count);
		
	}
	
	
	
	
}
