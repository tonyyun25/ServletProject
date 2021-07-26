package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet/exGet")
public class DDay05_html extends HttpServlet {

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		int number = Integer.parseInt(request.getParameter("number"));
		
		out.println("<html><head><title> 구구단 </title><head>");
		
		
		out.println("<body><ul>");
		
		for(int i= 1 ; i <= 9 ; i++ ) {
			out.println("<li>"+  number + "X" + i + " = " + (number*i) + "</li>");			
		}
		
		
		
		
		out.println("</ul></body>");
		
		out.println("</html>");
		
		
	}
	
	
}
