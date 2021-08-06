package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet ("/servlet/Dtest09")

public class DServletTest09 extends HttpServlet {
	
	@Override
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
//		response.setCharacterEncoding("utf-8");
//		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		String userId = request.getParameter("userId");
		String introduction = request.getParameter("introduction");
		
		out.println("<html><head><title> 입사 지원 </title></head><body>");
		
		out.println("<b>" + userId + "님 지원이 완료 되었습니다.</b><br>");
		out.println("<hr>");
		out.println("<small>지원 내용 </small><br>");
		out.println("<small>" + introduction + "</small>");
		
		out.println("</body></html>");
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
