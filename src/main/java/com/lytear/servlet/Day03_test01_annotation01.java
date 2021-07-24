package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test01_annotation01") 
public class Day03_test01_annotation01 extends HttpServlet {

	
		@Override
		public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
			
			PrintWriter out = response.getWriter();
			
			Date now = new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
			// 생성자를 통해서 formatter라는 객체를 만듦
			
			String dateString = formatter.format(now);
			
			out.print("<html> <head> <title>뉴스기사 출력</title> <head>");
			out.print("<body> <h1>[단독] 고양이가 필요해</h1>");
			out.println("기사입력 시간 : " + dateString);
			out.println("<hr> 끝 </body><html>");
			
			
		}
		/*
		 * 웹 프로젝트 부터는 실행할때 모든 파일을 다 컴파일 하고 진행이 됩니다
작업 중인 부분 이외에도 문제가 있으면 실행이 안되서
그런거에요

		 * */
		
	
	
	
	
	
	
	
	
	
	
}
