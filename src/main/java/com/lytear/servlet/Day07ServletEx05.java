package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class Day07ServletEx05 extends HttpServlet {
	// get Method의 특징 : 주소 뒤의 파라미터 변수 값으로 이어져서 진행
	// post Method의 특징 : 주소에 아무것도 안 나옴. 우리가 눈으로 알 수 없는 request 몸통에 저장
	
	@Override
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request charset 설정해야 입력할 때 한 글 안 깨짐
		// 일반적인 url ...ex05라 끝나는 것 doGet 을 전제. so doPost는 오류
		response.setContentType("text/html");;
		
		// 저희가 필터에서 해준건 캐릭터 인코딩만이고요
//		컨텐츠 타입은 페이지별로 다를수 있기 때문에
//		그부분은 서블릿에서  항상 포함되어야 합니다

//		request.setCharacterEncoding("utf-8");
//		response.setCharacterEncoding("utf-8");
//		
		// 필터 추가하려면 webxml 세팅해야 함
		
		
		PrintWriter out = response.getWriter();
		
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		
		out.println("<html><head><title>회원정보</title><head>");
		out.println("<body><table border=1>");
//		
		out.println("<tr><td>아이디</td> <td>" + userId + "</td></tr>");
		out.println("<tr><td>이름</td> <td>" + name + "</td></tr>");
		out.println("<tr><td>생년월일</td> <td>" + birth + "</td></tr>");
		out.println("<tr><td>이메일</td> <td>" + email + "</td></tr>");
		
		out.println("</table></body></html>");
	
	}
}