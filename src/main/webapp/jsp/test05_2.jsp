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

	<%
		
		//String sizeChangeString = request.getParameter("length");
		int centimeter = Integer.parseInt(request.getParameter("length"));
		
		String[] types = request.getParameterValues("type");
	%>	
	
	<h2>변환결과</h2>
	<h3><%=centimeter %>cm</h3>
	<hr>
	
	
	 	
		
		
	
		<!-- 
		String result = "";
		// 방법1. 자바 코드 반복문 안에서 출력하는 방법. out이라는 객체를 jsp에서 기본으로 제공함
		// 추천 안 함. 소스 안에 포함되어 있어 출력되는지 안 되는지 눈에 잘 안 들어와
		/*for(int i = 0; i < types.length; i++) {
			out.println("테스트");
		
		}
		
		
			
		
		방법2	: for 문을 열고 닫는 걸 쪼개 버려서 그 중간에 출력 넣음. 실제 반복문 이거 제일 많이 씀 --> 
	
	
	<% 	
		//double inch = String.format("%.2f", centimeter / 2.54);
		//inch = String.valueOf(sizeChange / 2.54);
		//아래는 제일 손쉬은 출력 방법(코드 안 출력까지 한 번에 하는 건 추천은 X => html 코드 부분은 쪼개라)
		// out.println(inch + "in<br>");
	
		for(int i = 0; i < types.length; i++) {	
			String type = types[i];
			
			if(types.equals("inch")) {
				double inch = centimeter * 0.39;
				%>
			
				<h3><%=inch %> in <br></h3>
			<% //자바코드 입력 필요하니깐 다시 열어준다
			} else if(types.equals("yard")) {
				double yard = centimeter * 0.010936133;
				%>
				
				<h3><%=yard %>yd <br></h3>
				<!-- out.println(yard + "yd<br>");-->
			<% 
			} else if(types.equals("feet")) {
				double feet = centimeter * 0.32808399;
				%>
				
				<h3><%=feet %>ft <br></h3>
				<!-- out.println(feet + "ft<br>");-->
			<%
			} else if(types.equals("meter")) {
				double meter = centimeter / 100.0;
				%>
				
				<h3><%=meter %>m <br></h3>
				<!-- out.println(feet + "ft<br>");-->
			<%
			} 	
		}
		
		//
		
		//<!-- result = result.substring(0,result.length() - 1);-->
		//반복문 통해 체크된 개수만큼만 출력한다. 출력할 결과를 문자열로 만들어놓고 마지막에 출력한다
		// 체크된 세개줄만 하나의 문자열에 다 저장시키고 줄바꿈은 br tag
		// for, if 이용해 차곡차곡 String 쌓아줘
		// String afterSize = null; -->
	%>


</body>
</html>