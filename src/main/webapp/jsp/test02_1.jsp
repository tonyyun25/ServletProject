<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>날짜 시간 링크</title>
	
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
			
			
	</head>
	
	<body>
		
		<div class="container">
			<h1>날짜 시간 입력</h1>
			
			
			<!-- 	파라미터 잡는 것 : 파라미터는 무조건 키, 밸류 값 쌍이어야 함 (하나로는 안 됨)
			/jsp/test02_2.jsp?what=time
			
			/jsp/test02_2.jsp?what=date
					what 이라는 key를 가지고 getParameter 함. 뭘 보여줄 지에 대한 목적을 다음 페이지에 전달
			여기는 링크 외 자바 소스 없음
			 -->
			 
			<a href="/jsp/test02_2.jsp?what=time" class="btn btn-info">현재 시간 확인</a>
			
			<!-- 처음에는 href="" 상태였음 -->
			<a href="/jsp/test02_2.jsp?what=date" class="btn btn-success" >현재 날짜 확인</a>
			
		</div>
		
	</body>
</html>