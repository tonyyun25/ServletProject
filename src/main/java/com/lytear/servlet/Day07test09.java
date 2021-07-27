package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet/test09")
public class Day07test09 extends HttpServlet {

	@Override
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
//		response.setCharacterEncoding("utf-8");
		
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String introduction = request.getParameter("introduction");
		out.println("<b>" + name + "님 지원이 완료되었습니다</b>" );
		out.println("<hr>");
		out.println("지원내용<br>" + introduction);
		
//		
		
	}	
}	