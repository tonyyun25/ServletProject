<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 데이터 너무 길어질 때는 get 보다 post가 낫다. 화면에 보여줄
	내용이 없어 action에 jsp 아닌 servlet으로 만듦 -->
	<form method="post" action="/db/ex02_insert">
		<label>이름</label> <input type="text" name="name">
		<br>
		<label>생년월일</label> <input type="text" name="yyyymmdd">
		<br>
		<label>자기소개</label> <br>
		<textarea rows="5" cols="50" name="introduce"></textarea>
		<br>
		<label>이메일</label> <input type="text" name="email">
		<button type="submit"> 추가</button>
	</form>



</body>
</html>