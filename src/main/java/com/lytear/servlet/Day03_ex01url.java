package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex01url") // 모듈에서 설정 변경했다면 "servlet/~"이 아니라 바로 "/~"

public class Day03_ex01url extends HttpServlet{


	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
	
		int sum = 0;
				
		for(int i = 1; i <= 10; i++) {
			sum += i;
		}		
		 out.print("<html><head><title>합계</title></head><body>");
		 out.print("합계:<strong>"+sum+" </strong>");
		 out.print("</body></html>");
		
		
	}	
	
	
	
}
/*
 * localhost : 자신의 컴퓨터에 접속할 수 있는 도메인 . 8080: 포트번호
 * 이미 내 컴퓨터에 두 개의 서버 (웹서버:톰켓, DB: mysql)가 설치됨. 외부에서
접속해서 포트 번호에 따라 구분해서 접속함 ex: 웹서버 80, DB 3306, 메일서버 25,
Telnet 23, FTP 21. 
* naver.com:80에 :80 생략. 우리는 일반적인 웹서버 만든게 아니라 8080이라는 
* 임의의 포트를 씀
* 브라우저로부터 전달된 request를 dispatcher servlet이 객체 형태로 변환해서 우리가 만들 코드 쪽으로 전달
* 브라우저로부터 전달 "될" 내용 미리 만들어 둠: HttpServletRequest request
* 우리가 전달 할 내용 : HttpServletResponse response
* 개발자  : dispatcher servlet로부터 request 객체와 response 객체를 받는다.
*
*override 할 때 annotation 쓴 적있어 : @Override
* url mapping 할 때 annotation 사용  => web.xml 쓰지 않고 간단하게 맵핑하는 방법
* @WebServlet("/hello")   <+ 또는 /ex01  클래스를 이 주소에 맵핑 시켜준다
* 
*
*
*  @WebServlet("")
*/