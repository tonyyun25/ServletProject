<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>    
<%@ page import ="java.text.SimpleDateFormat" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	<%
		Calendar today = Calendar.getInstance();// 캘린더는 new로 객체 생성하지 않는다
		out.println(today);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		//formatter.format(today);
		out.println(formatter.format(today.getTime()) + "<br>");
		// today 안에서 date 객체를 가지고 있어서 위와 같이 꺼내옴
		
		// 날짜 연산
		Calendar calendar = Calendar.getInstance();
		// 132일전으로 돌아가자!
		calendar.add(Calendar.DATE, -132);//값을 리턴하는 것이 아니라 캘린더 객체에 그 내용이 저장됨 (값이 바로 변함)
		// 250일 이후
		calendar.add(Calendar.DATE, 250);
		
		// 3개월 이후
		calendar.add(Calendar.MONTH, 8);
		calendar.add(Calendar.YEAR, 10);
		
		
		out.println(formatter.format(calendar.getTime()) + "<br>"); // 줄바꿈 입력
		
		// 두 날짜를 비교 (오늘 날짜를 기준으로). 캘린더가 더 큰 경우 -1 출력. 작은 경우 1. 같은 경우 0. 앞에거-뒤에거
		// 기준이 되는 날짜와 파라미터에 전달 되는 날짜 비교
		// 기준이 되는 날짜가 더 작을 때 -1
		// 기준이 되는 날짜가 더 컷을 때 1
		// 두 날짜가 같을 때 0
		//int result = today.compareTo(calendar);
		int result = today.compareTo(today);
		
		
		out.println(result);
		// 분기문
		if(result > 0) {
			out.println("오늘이 더 크다");
			
		} else if (result < 0) { // = 음수인 경우
			out.println("오늘이 더 작다");
		} else {
			out.println("같다");
		}
		
		// 캘린더 기준으로 오늘은 0일. 1 더하면 내일이 1일. 문제 상으로는 오늘=1일이라고 계산이라 조정 필요
		// 네이버링 100일 계산기
		
		
		
	%>
	




</body>
</html>