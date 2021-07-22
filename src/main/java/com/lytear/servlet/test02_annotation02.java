package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test02_annotation02")
public class test02_annotation02 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 앞으로 xml  열지 말고 WebServlet
		
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
			
		PrintWriter out = response.getWriter();
		
		out.println("<html> <head> <title> 반복리스트 </title> </head>");
		//out.println("<body> <ul> <li>1번째 리스트 </li> <li> 2번째 리스트</li> </ul> ");
		out.println("<body> <ul>");//태그 쪼개기
		for(int i = 1; i <= 30; i++) {
			out.println("<li>" + i + " 번째 리스트</li>");
		}
		out.println("</ul>");		
		// <li>1번째 리스트 </li> <li> 2번째 리스트</li> </ul> ");
		out.println("</body> </html> ");
		
		
		// ul도 ul 안에 리스트가 반복되는 것이지 ul에 직접 반복 주면 안 됨. list에 준다
	}
		
	
	
}
