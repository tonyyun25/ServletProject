<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>날짜 시간</title>
		
		
	</head>
	<body>
	
		
		
		
		<!-- 표현식 : 스크립틀릿이나 선언문에 선언된 변수 값이나 메소드의 리턴 값을 출력 
		Date도 java.util 안에 있음
		
		
		-->
			
	
		
		<% 
			// what=date or what=time
			String what = request.getParameter("what");
			
		
		
			// 오늘 날짜를 기준으로 날짜 표현과 시간 표현
			// http://localhost:8080/jsp/test02_2.jsp 치면 독립된 페이지로 날짜 일단 확인(dateString, timeString) 가능
			Date now = new Date();
			String string = null;
			// 날짜 표현
			
			
			// 날짜 조건
			if(what.equals("date")) {
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
				string = "현재날짜" + formatter.format(now);
				//string = "현재날짜 " + string;
			}
			else { //시간 조건
				SimpleDateFormat formatterTime = new SimpleDateFormat("H년 m분 s초");
				string = formatterTime.format(now);
			}
			
			
		
		%>
		
		<div>
		
			<h1><%=string %></h1>
			
			
		</div>
		
		
		
		
	
	</body>

	
	
</html>