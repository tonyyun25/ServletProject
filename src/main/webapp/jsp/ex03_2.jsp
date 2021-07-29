<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String nickName = request.getParameter("nickname");
		String hobby = request.getParameter("hobby");
		String animal = request.getParameter("animal");
		// String food = request.getParameter("food");
		String[] foodArray = request.getParameterValues("food");
	
		String fruit = request.getParameter("fruit");
		
		
		
		
		// pizza, puppa : 이것을 이어줄 문자열 변수를 아래에 만든다
		String result = "";
		
		for(int i=0; i < foodArray.length; i++) {
			String food = foodArray[i];
			result += food + ",";
		}
		result = result.substring(0, result.length() - 1);
		
	
	%>
	<table border=1>
	
		<tr>
			<th>별명</th>
			<td><%=nickName %></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%=hobby %></td>
		</tr>
		<tr>
			<th>동물</th>
			<td><%=animal %></td>
		</tr>
		<tr>
			<th>음식</th>
			<td>
				<!-- 배열은 그냥 출력이 안 되므로 반복문 사용 -->
				<%= result %>
			</td>
		</tr>
		<tr>
			<th>과일</th>
			<td><%= fruit %></td>
		</tr>
	</table>











</body>
</html>