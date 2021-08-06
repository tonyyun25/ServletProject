<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>장 목록</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<!--
우선 아래 만든 후 수정해
	<table class="table">
		<thead>
			<tr>
				<th>번호</th>
				<th>품목</th>
			</tr>
		
		</thead>
		
		<tbody>
			<tr>
				<td>1</td>
				<td>우유</td>
			</tr>
			<tr>
				<td>2</td>
				<td>요플레</td>
			</tr>
			<tr>
				<td>3</td>
				<td>딸기</td>
			</tr>
		
		
		</tbody>
	</table>	 
	뭐를 기준으로 반복시킬 거냐가 제일 중요
	
	 -->



<body>
	
<% 
 	List<String> goodsList = Arrays.asList(new String[]{ 
    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
	});
%>
	<h1 class="text-center">장목록</h1>
	<table class="table">
		<thead>
			<tr>
				<th>번호</th>
				<th>품목</th>
			</tr>
		
		</thead>
		
		<tbody>
			<%
				for(int i = 0; i < goodsList.size(); i++) {
					String goods = goodsList.get(i);
					
				
			
			
			%>
			<tr>
				<td><%= i+1 %></td>
				<td><%=goods %></td>
			</tr>
			<% } %>
			
			
		
		</tbody>
		
		
		
	
	
	
		
	
	</table>
</body>
</html>