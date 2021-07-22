package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class test02 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// HttpServletRequest,HttpServletResponse는 정해져 있는 클래스 이름. 그 뒤는 파라미터
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain"); // 때로 text/html
		
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("HH시 mm분 ss초입니다"); // 생성자 만들기
		String dateString = formatter.format(now);// date 객체를 string으로 만든다
		
		out.println("현재 시간은 " + dateString);
		
		// 웹 서버는 url이 정해지지 않으면 아무 의미가 없다
		// url 새로 맵핑했을 떄는 서버를 껐다 켜야 새로 만든 클래스를 인식한다
		// 웹에서 제일 중요한 것은 흐름이다
		/*
		 * 브라우저와 내가 코딩한 코드는 완전 떨어져 있는 다른 환경에 있다고 생각하라
		 * 
		 * 
		 * 
		 * 
		 * 
		 * 
		 * 
		 * */
		
	}
	
	
	
	
	
}
