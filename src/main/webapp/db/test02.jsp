<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lytear.common.MysqlService"%>     
<%@ page import="java.sql.ResultSet" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();

	String query = "SELECT * FROM `urlAddress`ORDER BY `id` DESC";
	ResultSet result = mysqlService.select(query);
	%>
	<table border="1">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
				<th>삭제 </th>
			</tr>
		</thead>
		
		<tbody>
		<%
			while(result.next()) {
			%>
			
	
			<tr>
				<td><%=result.getString("name") %></td>
				<td><a href="<%=result.getString("url") %>"><%=result.getString("url") %></a></td>
				<td><a href="/db/test02_delete?id=<%=result.getInt("id") %>">삭제</a></td>
			</tr>
			
		</tbody>
		<%
		}
		%>
	
	
	<!--  4, 5번 문제는 out.println 입력성공 출력이 아니라 리스트 페이지로 이동시키는 것 -->
	</table>



</body>
</html>