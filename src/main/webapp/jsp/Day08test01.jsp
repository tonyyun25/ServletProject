<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>

	<!--  
	1
	-->

	<%
		int[] scores = {80, 90, 100, 95, 80};
		double average = 0;
		int total = 0;
		for(int i = 0; i < scores.length; i++) {
			
			total += scores[i];
		}
		average = total / scores.length;
		
		
		int count = 0;
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		Iterator<String> iter = scoreList.iterator();
		
		while(iter.hasNext()) {
			String string = iter.next();
			if(string.equals("O")) {
				count += 10;
			}
			
		}
		
		
		int N = 50;
		int sum = 0;
		
		for(int i = 1; i <= N; i++ ) {
			
			sum += i;
		}
		
		String birthDay = "20010820";
		
		int yearBorn = Integer.parseInt(birthDay.substring(0,4));
		int currentYear = 2021;
		int age = currentYear - yearBorn + 1;
		
		
	%>
	
	<%= "점수 평균은 " + average + " 입니다." %>
	<br>
	<%= "채점 결과는 " + count + " 점입니다." %>
	
	<br>
	<%= "1에서 " + N + "까지의 합은 " + sum %>
	<br>
	<%= birthDay + " 의 나이는 " + age + "살 입니다."%>
	
	


</body>
</html>