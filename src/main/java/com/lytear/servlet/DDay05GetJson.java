package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/Dtest06")
public class DDay05GetJson extends HttpServlet {

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		out.println("<html><head><title> 연산 결과 JSON </title><head><body>");
		
		// 더하기, 빼기, 곱하기, 나누기
		out.println("addition : " + (number1 + number2));
		
		
		
		
		
		
		out.println("</body></html>");
	}
	
	
	
}
