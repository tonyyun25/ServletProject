<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lytear.common.MysqlService" %>   
<%@ page import="java.sql.ResultSet" %>




 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
</head>
<body>
<!--  new_user 모든 값을 table 태그를 통해서 출력. jsp 에서 db 접근하는 법 배움.
자바 코드에서 썼던 건 모두 여기(jsp scriptlet)에서 사용 가능 -->

<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();

	// new_user 테이블에 있는 모든 값 출력
	String query = "SELECT * FROM `new_user`";
	ResultSet result = mysqlService.select(query); 
	// 일단 result를 코드에 html 섞어 가면서 표시
	
%>
<%
	// resultSet을 위한 반복문.  아까와 달리 outprinln 안 쓰고 아래처럼 쉽게 가져옴
	// 과제 : 테이블에 행 당 사람 하나씩 쌓으면서 예쁘게 만들어보기. 지금 흐름에서
	// db 연결만 하면 웹서비스 전체 흐름 만들어 내는 것임
	%>
	
	<!--  new user 모든 값을 table 태그를 통해서 출력 -->
		<table border="1">
			<thead></thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>생년월일</th>
					<th>자기소개</th>
					<th>이메일</th>
					<th>삭제</th>
				</tr>
			<tbody>
			<!--  result.next는 뒤로 한 칸 씩 이동하기 떄문에 나중에 뒤에 것 안 나옴 -->
			<%
			while(result.next()) {
			%>
			
				<tr>
				<!--<div>이름 : 표현식result.getString("name") %>, 생년월일 : 표현식result.getString("yyyymmdd") %></div>-->		
					<td><%=result.getInt("id") %></td>
					<td><%=result.getString("name") %></td>
					<td><%=result.getString("yyyymmdd") %></td>
					<td><%=result.getString("introduce") %></td>
					<td><%=result.getString("email") %></td>
					<td><a href="/db/ex02_delete?id=<%=result.getInt("id") %>">삭제</a></td>
					
				</tr>	
				<%
			}
			%>
			<!-- 웹서비스의 대부분이 이거야. 삭제하고 필요 한 거 보여주고 -->	
				
			</tbody>
		</table>
	




<!--new_user 테이블에 있는 모든 값 출력  --> 




</body>
</html>