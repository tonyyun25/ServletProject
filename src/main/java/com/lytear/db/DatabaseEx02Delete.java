package com.lytear.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lytear.common.MysqlService;

@WebServlet("/db/ex02_delete")
public class DatabaseEx02Delete extends HttpServlet {

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
	
		PrintWriter out = response.getWriter();
	
		// 화면에 보여줄 게 없어 jsp가 아니라 클래스 형태로 사용
		
		String id = request.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String deleteQuery = "DELETE FROM `new_user` WHERE `id` = " + id;
		int count = mysqlService.update(deleteQuery);//id를 기반으로 주면 1(성공) 아니면 0(잘못)
		
		out.println("삭제 성공 : " + count);
		
		
		
	}
	
}





