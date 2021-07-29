<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과페이지</title>
</head>

	<!-- 서블릿은 doGet, doPost 떄문에 request.getParameter 가능. jsp 는
	화면에 보이기 위한 특성화된 개체이기 때문에 request가 미리 준비되어 있다 -->
<body>
	<b>아이디 : </b> <%=request.getParameter("user_id") %>
	<b>이름 : </b> <%=request.getParameter("name") %>
	<b>나이: </b> <%=request.getParameter("age") %>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>