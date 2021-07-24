package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet/test06") // webapp 아래 폴더 아래 파일 이름 명
public class Day05_getJson extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {// 메소드에서 두 개 파라미터 받음
	
		response.setCharacterEncoding("utf-8"); 
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		
		String name = request.getParameter("name");
		
		// json은  key 앞에 무조건 따옴표로 감싼다
//		?number1=10&number2=3
//		{
//				"addition":13,
//				"subtraction":7,
//				"multiplication":30,
//				"division":3
//		}
		
		
		out.println("{");
		out.println("\"addition\":" + (number1 + number2) + ",");
		out.println("\"subtraction\":" + (number1 - number2) + ",");
		out.println("\"multiplication\":" + (number1 * number2) + ",");
		out.println("\"division\":" + (number1 / number2));
		out.println("}");
		
		// 먼저 html에 가서 링크를 타고 우리가 만든 페이지로 접근을 하자
		// http://localhost:8080/servlet/test06.html가 아니라
//		http://localhost:8080/servlet/test06 치면 이 클래스 안으로 들어오는데
//		위에서 int number1 = .number1 
//		parseInt가 숫자로 된  가 아니면 다 null이 발생해 => 오류 
//		String name = request.getParameter("name"); <= 이거는 가능
		
	}	
		
}
