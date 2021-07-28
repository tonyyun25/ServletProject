<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--<%@ page import="java.util.List" %>  
<%@ page import="java.util.ArrayList" %>  -->
<%@ page import="java.util.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
<!-- 


jsp는  html 기반이라 html tag 다 먹힘. 컴파일러는 아래 자바 코드는 해석 sum = 55까지는 읽으나
계산된 결과는 아래에서 써 줘야 함

value="10" 도 가능. jsp 출력하는 부분은 html 영향 전혀 안 받아 넣고 싶은 위치에 넣으면 됨
앞으로 리스트 매우 자주 쓸 거야
 -->


	<%
		int sum = 0;
		for (int i=1; i <= 10; i++) {
			sum += i;
		}
	
	
	%>



	<strong>합계 : <%=sum + 10 %> </strong>

	<input type="text" value="<%=sum %>">

	<%
		List<String> animal = new ArrayList<>();
		animal.add("dog");
		animal.add("cat");
	
	%>
	<br>
	<b><%=animal.get(0) %></b>
	<br>
	<b><%=animal.get(1) %></b>
	<br>

	<%!
	
		// member 변수. 우선 접근제어자 만들기
		private int num = 10;
	
		// method
		// 헬로 월드 리턴하는 메소드
		public String getHelloWorld() {
			return "Hello World";
		}
		
		
		
	%>

	<%=getHelloWorld() %>

	<%= num %>







</body>
</html>