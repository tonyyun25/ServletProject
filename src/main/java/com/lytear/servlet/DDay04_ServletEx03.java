package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet/DDay04_ServletEx03") // 이곳은 태그를 눌렀을 때 내가 이동할 클래스 파일명이다
public class DDay04_ServletEx03 extends HttpServlet {

	
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		
		PrintWriter out = response.getWriter();//윤: out이 객체가 된다
		
		String id = request.getParameter("user_id");
		String name = request.getParameter("name");
		
		out.println("<html><head><title>Get parameter 확인</title></head>");
		out.println("<body><h3>" + id + " : " + name + "<h3></body></html>");			
		
		// url에 처음 입력하는 주소는 webapp/servlet/test04.html
		// 태그하면 주소가 url 매핑한 WebServlet으로 이동한다
	}
	
	
}
