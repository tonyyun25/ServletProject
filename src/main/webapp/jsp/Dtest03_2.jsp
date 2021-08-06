<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>    
<%@ page import="java.text.SimpleDateFormat" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method</title>
</head>
<body>

	
		<%
			
			String what = request.getParameter("what");	
			
			Date now = new Date();	
		
			String string = null;
			
			if(what.equals("time")) {
				SimpleDateFormat formatterTime = new SimpleDateFormat("H시 m분 s초");
				string = "현재 시간" + formatterTime.format(now); 				
			}
			else if(what.equals("date")) {
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
				string = "오늘 날짜" + formatter.format(now) ;
			}
			
			
			
		%>
		<%= string %>
		


	
</body>
</html>