<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post method 폼태그</title>
</head>
<body>

	<form method="post" action="/jsp/ex03_2.jsp">
		<label>별명은 무엇인가요?</label><input type="text" name="nickname"> <br>
		<label>취미는 무엇인가요?</label><input type="text" name="hobby"><br>
		
		강아지 또는 고양이<br>
		<label>강아지 <input type="radio" name="animal" value="dog"></label>
		<label>고양이 <input type="radio" name="animal" value="cat"></label>
		다음 중 선호하는 것을 고르세요 <br>
		<label>민트초코 <input type="checkbox" name="food" value="mincho" ></label>
		<label>하와이안피자(파인애플) <input type="checkbox" name="food"  value="pizza"></label>
		<label>번데기 <input type="checkbox" name="food"  value="puppa"></label>
		<br>
		<!-- 체크박스 여러개 값인데 하나밖에 안 넘어 가므로, request.getParameter를 달리 설정.
		form 을 통해 전달하려면 기본적으로 name 이 있어야 한다 
		Select box에는 value 지정하지 않으면 옵션 사이에 있는 값이 밸류로 된다. 그래도 지정이 좋다
		-->
		좋아하는 과일을 고르세요.<br>
		<select name="fruit">
			<option value="사과">사과</option>
			<option value="바나나">바나나</option>
			<option value="복숭아">복숭아</option>
			<option value="딸기">딸기</option>
			
		
		</select>
		
		
		
		<button type="submit">제출</button>
		
		
		
	
	
	</form>




</body>
</html>