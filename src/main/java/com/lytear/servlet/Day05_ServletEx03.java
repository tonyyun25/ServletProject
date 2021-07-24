package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet/Day04_ServletEx03")
public class Day05_ServletEx03 extends HttpServlet {	

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {// 메소드에서 두 개 파라미터 받음
	
		response.setCharacterEncoding("utf-8"); 
		response.setContentType("application/json");
		
		String id = request.getParameter("user_id");	
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
		
		
//		out.println("<html><head><title>get 파라미터 확인 </title></head>");
//		out.println("<body><h3>" +id +":" +name +":" +age +":"+ </h3></body></html>");
//		
		
		// ?user_id=jinil&name=윤진일&age=25
		//
//		 {"user_id":"jinil","name":"윤진일","age":25};
		out.println("{\"user_id\":\"" + id + "\",\"name\":\""+name+"\",\"age\":" + age + "}");	
		
		// 웹에 입력할 주소: http://localhost:8080/servlet/Day04_ServletEx03?user_id=hagulu&name="진일"&age=27
		
		
	}	
}
