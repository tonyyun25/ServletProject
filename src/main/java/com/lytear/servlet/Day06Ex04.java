package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// /servlet/ex04?user_id=jinil&name=윤진일&birth=19990712&email=ytonyyun@naver.com
@WebServlet("/servlet/ex04")
public class Day06Ex04 extends HttpServlet {

	// backup.marondal.com (aws 백업으로 이용)
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");;
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		// 테이블 형태로 출력
		out.println("<html><head><title>회원정보</title><head>");
		out.println("<body><table border=1>");
//		이름 : 윤진일
//		생년월일 : 19990412. 키, 밸류 형태로 테이블 만듦
		out.println("<tr><td>아이디</td> <td>" + userId + "</td></tr>");
		out.println("<tr><td>이름</td> <td>" + name + "</td></tr>");
		out.println("<tr><td>생년월일</td> <td>" + birth + "</td></tr>");
		out.println("<tr><td>이메일</td> <td>" + email + "</td></tr>");
		
		out.println("</table></body></html>");
		// html은 클래스와는 전혀 관련 무. html에는 Web app 경로 넣어줌
		// 창에 입력: http://localhost:8080/servlet/ex04?user_id=jinil&name=%EC%9C%A4%EC%A7%84%EC%9D%BC&birth=19990412&email=ytonyyun@naver.com
//	form의 기능 : action에 기재된  url로 파라미터를 만들어서 값을 넘긴다
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
