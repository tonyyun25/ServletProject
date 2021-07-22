package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletEx01 extends HttpServlet { // 톰캣에 연동해서 웹서비스 한다면 무조건 이렇게 상속

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {// 메소드에서 두 개 파라미터 받음
		// 한글 깨짐 방지 => response에서 인코딩 잡기
		response.setCharacterEncoding("utf-8"); //요즘 가장 많이 쓰이는 인코딩이 utf-8
		response.setContentType("text/plain");//이 타입이 어떤 파일이야 => 컴퓨터는 확장자로 확인
		// 서버에서 브라우저로 보낼 때는 어떤 데이터는 문자열로 보내기 때문에 어떤 타입인지 판단 못하므로
		// response 할 때 content type이 어떤 타입인지 적어준다. text/plain : 일반 텍스트. 구글링 mime
		
		
		// Date 클래스 : 날짜와 시간 관리
		Date now = new Date();// java.util 오류 해결
	
		// response의 body 값 주입
		PrintWriter out = response.getWriter();//add throws declaration
		
		out.println(now);//Date 객체 now 를 프린트 함수에 집어 넣으면 객체의 toString 메소드로 출력
		// Data 클래스 안에서 toString이 있기에 가능
		
		// 2021-07-20 14:10:10
		// formatting
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//0~12tl : hh
		// 여기까지 포맷할 준비만 함
		out.println(formatter.format(now));//우리가 원하는 형태로 리턴		
		
		/*
	404가 나오는이유는 일반적으로
url pattrn 쪽 이랑 주소 쪽이 맞지 않을경우와
대소문자가 명확하지 안을때 발생을 마니 합니다



스 로 해주시고요
서버를 껏다 켜면
이제 주소 입력할때
프로젝트 이름은 생략할수 있습니다
http://localhost:8080/ServletProject/servlet/ex01
에서 모듈에서 edit해서 path:/ServeletProject에 / 뒤 지워주면
localhost:8080/servlet/ex01
요런식이 되는거죠

		*/
		
		
		
		
	}	
	
	
	
	
	
	
	
	
	
	
}
