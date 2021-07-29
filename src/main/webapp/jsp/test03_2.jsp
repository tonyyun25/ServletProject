 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		
	</head>
	
	<body>
	<!--  퍼센트 느낌표(선언문) : JSP에서 멤버 변수와 메소드를 선언하는 용도 -->
	
	<%

	
		String heightString = request.getParameter("height");
		String weightString = request.getParameter("weight");
		
		int height = Integer.parseInt(heightString);
		int weight = Integer.parseInt(weightString);
		
		double bmi = weight / ((height / 100.0)*(height / 100.0)); 
		
		String state = null;
		// if else의 장점 : 필터링처럼 위에서 부터 하나씩 걸러서 내려온다. 좁은 범위 -> 넓은 범위 조건 축소 가능
		// jsp에서는 바로 출력이 아니라 내가 출력하고 싶은 걸 변수에 저장하는 것이 중요
		if(bmi <= 20) {
			state = "저체중";		
		}	
		else if(bmi <= 25) {
			state = "정상";		
		}
		else if(bmi <= 30) {
			state = "과체중";		
		}
		else {
			state = "비만";		
		}
	%>	
	<%! 
		
	%>
		<div class="container">
		
		
			<h1>BMI 측정 결과  </h1>
			<div class="display-4">당신은 <span class="text-info"><%= state %></span> 입니다. </div>
			<div>BMI 수치 : <%= bmi %></div>
		</div>
	</body>
	
</html>