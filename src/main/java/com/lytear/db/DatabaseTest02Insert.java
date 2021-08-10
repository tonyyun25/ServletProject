package com.lytear.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lytear.common.MysqlService;

@WebServlet("/db/test02/insert")
public class DatabaseTest02Insert extends HttpServlet {

	@Override
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String url =  request.getParameter("url");
		// 다른 링크에서 파라미터 받아온다가 아니라 독립적으로 내가 이 파라미터를 받아 수행하는 페이지를 만든다고 생각해
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		
		// 종합문제 홍당무 풀어보면 spring 이해하는 데 굉장히 도움 됨. 탄탄하게 됨
		
		String insertQuery = "INSERT INTO `urlAddress`\r\n"
				+ "(`name`,`url`,`createdAt`,`updatedAt`)\r\n"
//				+ "VALUES('마론달','http://marondal.com',now(),now());"  
				+ "VALUES('" + name + "','" + url + "',now(),now());";  
//		mysqlService.update(insertQuery);
		int count = mysqlService.update(insertQuery);
		
//		out.println("입력 성공 : " + count);// 입력 성공 대신 다른 페이지로 이동시키자 jsp에는 더 이상 제어콘 없음
		// 구글링 서블릿 리다이렉트
		response.sendRedirect("/db/test02_1.jsp");//주소로 이동 O 이 페이지 저 페이지가 연결됐다 X		
	}
	
	
	
	
}
