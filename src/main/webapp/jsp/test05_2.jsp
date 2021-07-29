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
		
		String sizeChangeString = request.getParameter("sizeChange");
		double sizeChange = Integer.parseInt(sizeChangeString);
		
		String[] sizeArray = request.getParameterValues("size");
		
		String inch = null;
		String yard = null;
		String feet = null;
		String meter = null;
		
		
		String result = "";
		for(int i = 0; i < sizeArray.length; i++) {
			
			if(sizeArray[i].equals("inch")) {
				inch = String.format("%.2f", sizeChange / 2.54);
				//inch = String.valueOf(sizeChange / 2.54);
				result += inch + " in" + "<br>";
			}
			else if(sizeArray[i].equals("yard")) {
				yard = String.format("%.2f", sizeChange / 91.44);
				
				result += yard + " yd" + "<br>";
			}
			else if(sizeArray[i].equals("feet")) {
				feet = String.format("%.2f", sizeChange / 30.48);
				
				result += feet + " ft" + "<br>";
			}
			else if(sizeArray[i].equals("meter")) {
				meter = String.format("%.2f", sizeChange / 100);
				
				result += meter + " m" + "<br>";
			}			
		}
		//result = result.substring(0,result.length() - 1);
		//반복문 통해 체크된 개수만큼만 출력한다. 출력할 결과를 문자열로 만들어놓고 마지막에 출력한다
		// 체크된 세개줄만 하나의 문자열에 다 저장시키고 줄바꿈은 br tag
		// for, if 이용해 차곡차곡 String 쌓아줘
		// String afterSize = null;
		
		
		
	
	%>
	
	<div class="container">
		<h1>변환결과</h1>
		<b><%= sizeChange %>cm</b>
		<hr>
		<b><%= result %></b>
	
	</div>

</body>
</html>