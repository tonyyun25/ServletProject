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
//		몇개 짚어 드리면 일단 입력 화면에서
//		자기소개 부분은
//		아마 한줄로 나올거에요
//		textarea 태그 사용하시면 문제에 보는 형태로 될걱 타습니다.
//		그리고 출력하실때도 html 기본 태그들이 모두 포함되게 하면 더 좋을거 같아요

		
		PrintWriter out = response.getWriter();
		
		
		
		String name = request.getParameter("name");
		String introduction = request.getParameter("introduction");
		
		
		out.println("<html><head><title> 입사지원 </title><body>");
		out.println("<b>" + name + "님 지원이 완료되었습니다</b>" );
		out.println("<hr>");
		out.println("지원내용<br>" + introduction);
		out.println("</body></html>");
//		
		
	}	
}	