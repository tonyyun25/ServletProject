<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!-- 정확히는 java.util.Map -->    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 사용</title>
</head>
<body>
<%
	// 지금 배우는 부분은 실제로 가장 실무에서 많이 사용
	// map 을 테이블로 표현하기
	// 성적 정보 저장
	// {"korean"=85,"english"=72,"math"=90,"science"=100}
	Map<String, Integer> scoreMap = new HashMap<>();
	scoreMap.put("korean", 85);
	scoreMap.put("english", 72);
	scoreMap.put("math", 90);
	scoreMap.put("science", 100);
	// keyset 을 이용해서 맵에 있는 값 다 가져오기 => 반복문
	Set<String> keys = scoreMap.keySet();
	//  set이기 때문에 순서는 정해져 있지 않음
	// 이 예제에서는 keyset을 썼지만 map은 웬만하면 keyset 을 쓰는 것보다 
	// 반복문에 하나하나 바로 접근하는 것이 낫다
	
%>	
	<!-- 
		<tr>
			<th>국어</th>
			<td>메소드기호scoreMap.get("korean")</td>
		
		</tr>
	 -->
	
	<table border="1">
		<% 
			for(String key:keys){
				
			
		%>
		<tr>
			<th><%=key %></th>
			<td><%=scoreMap.get(key)%></td>
		</tr>	
		<% } %> 
		
	
	</table>
</body>
</html>