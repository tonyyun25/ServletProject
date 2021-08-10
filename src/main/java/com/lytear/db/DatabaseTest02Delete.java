package com.lytear.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lytear.common.MysqlService;

@WebServlet("/db/test02/delete")
public class DatabaseTest02Delete extends HttpServlet {

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String id = request.getParameter("id");
		
		
		
		String deleteQuery = "DELETE FROM `urlAddress` WHERE `id` = " + id; 
		// id가 숫자지만 문자열로 쓰일 거라 변환 안 함
		mysqlService.update(deleteQuery);
		
//		out.println("삭제 성공 : " + count);
		
		// db 사용 하고 나서 (redirect 하기 전에) 남들도 쓸 수 있게 disconnect. 다 들어가야 함
		
		
		response.sendRedirect("/db/test02_1.jsp");
		
		
	}
	
	
	
}
