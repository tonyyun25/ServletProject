package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Day02_test01 extends HttpServlet {

	@Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();//가져오는 값이 response의 body로 저장이 된다
		
		Date now = new Date();// 오늘의 날짜를 의미하는  date 객체를 만든다
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
		
		
		String dateString = formatter.format(now);//파라미터로 전달된 데이터(now)를 생성자 안에서 yyyy년 m월 d일로 교체해 준다
		// format이라는 메소드가 string을 돌려 준다
		
		
		out.println("오늘의 날짜는 " + dateString);
		
		
		
		
		
		
	}
	
	
}
