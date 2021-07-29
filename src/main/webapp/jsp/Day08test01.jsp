<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
    
	<!--  
	실문에서는 java.util.* 하면 데이터 커지니까 안 되고 하나씩 타이트하게 줘야 함
	
	Iterator<String> iter = scoreList.iterator();
		
		
		while(iter.hasNext()) {
			String string = iter.next();
			if(string.equals("O")) {
				count += 10;
			}
			
		}
		3번은 메소드를 하는 느낌으로. 1회용으로만 사용되고ㅡ, 멤버 변수 안에서만 사용되므로
		변수를 꺼내는 건(private int result = 0) 구조적으로 좋지 ㅇ낳아
	-->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>


	<%
		int[] scores = {80, 90, 100, 95, 80};
		int total = 0;
		
		
		for(int i = 0; i < scores.length; i++) {
			
			total += scores[i];
		}
		double average = total / (double)scores.length;
		
		
	%>
	<h1>점수 평균은 <%= average  %> 입니다.</h1>
	
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		for(String check:scoreList) {
			if(check.equals("O")) {
				score += 10;
			}
			
		}
	%>
	<h1>채점 결과는 <%= score %> 점입니다. </h1> 
	
	<%!
		public int allSum(int number) {
			int sum = 0;
			for(int i = 1; i <= number; i++ ) {
				
				sum += i;
			}
			return sum;
		}
		
	
	%>
	<h1>1에서 50까지의 합은 <%=allSum(50) %></h1>
	
	
	<%
		String birthDay = "20010820";
		
		int yearBorn = Integer.parseInt(birthDay.substring(0,4));
		int currentYear = 2021;
		int age = currentYear - yearBorn + 1;
		
	
	%>
	
	
	
	
	
	
	<h1>나이는 <%= age%> 살 입니다.</h1>
	
	


</body>
</html>