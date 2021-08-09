package com.lytear.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lytear.common.MysqlService;

@WebServlet("/db/test02_delete")
public class DatabaseTest02Delete extends HttpServlet {

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String id = request.getParameter("id");
		
		
		
		String deleteQuery = "DELETE FROM `urlAddress` WHERE `id` = " + id; 
		int count = mysqlService.update(deleteQuery);
		
		out.println("삭제 성공 : " + count);
		
		
	}
	
	
	
}
