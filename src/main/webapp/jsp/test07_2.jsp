<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
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
<!-- 여기서 제일 먼저 할 건 아래 list를 화면에 예쁘게 뿌려주는 것.
바로 데이터 넣지 말고 샘플 데이터 넣어 확인해 tbody에 치킨, 교촌치킨, 4.3

리스트 안에서 맵을 꺼낸다는 딱 아래까지임
for(Map<String, Object> info : list) {
					
					
				}

다른 페이지에서 넘어왔다 가정하고 어떻게 출력할지 고민해봐 당연히  for 문 들어가
String searchMenu = "치킨";
오늘 이 흐름이 웹 서비스의 거의 대부분이야 여기까지만 잘해 도 DB 연동만 잘 시키면 웹서비스 하나 만들수 있다
이 부분 굉장히 중요해
시간 날 때 자바 2 리스트, 맵 복습해. 코딩테스트에 엄청 많이 쓰임
 -->
<body>
<%
	List<Map<String, Object>> list = new ArrayList<>();
	Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	list.add(map);

	//String searchMenu = "치킨";
	String searchMenu = request.getParameter("menu");
	String startPointFilter = request.getParameter("startPointFilter");
	
%>
	<!--  아래는 확인용 
	<h3><퍼센트 이퀄startPointFilter %></h3>
	-->
	
	<table class="table">
		<thead>
			<tr>
				<th>메뉴</th>
				<th>상호</th>
				<th>별점</th>
			</tr>
		</thead>	
		<tbody>
			<%
				for(Map<String, Object> info : list) {
					// 처음에는 비어 있었으나 아래 if문 추가함
					if(info.get("menu").equals(searchMenu)) {
					// 치킨일 경우만 출력하게 함. 그 다음은 "치킨은"	파라미터에 담아 변수에 연결
					// startPointFilter == null || (startPointFilter == true && point >= 4)	
						//if(startPointFilter == null || ((Double)info.get("point") >= 4)) {
						// 웹은 객체만 다룰 수 있어 그냥 wrapper class Double 사용
						// 위에서 (startPointFilter.equals("true") && 안 줘도 수행 잘 됨. if 논리연산자 들어갔을 때
								// 흐름이 null이 아닌 경우 Double 로 바로 가는데 이는 이미 null이 아닌 거라 앞에 조건 필요가 없어
						// if로 처리하는 다른 방법 한 가지(아래). 출력하지 말아야 할 것
						if(startPointFilter != null && (Double)info.get("point") < 4) {
						// 체크포인트가 체크된 상태에서 포인트가 4보다 작다면 출력이 되면 안 된다
						// -> 체크가 되어 있으면 4.0 이하는 보이면 안 된다
							continue; // 그 아래 있는 코드 수행하지 않고 바로 다시 반복문 수행함
						}
					%>
					
					
			
			
			<!-- 특정한 메뉴 이름이 검색이 되면 테이블에 보여주게 되어 있음. 맵은
			무조건 키로 접근한다. 맵은 젤 많이 쓰는 메소드 put, get 말고는 거의 없다
			처음에 한 아래 내용은 반복문 돌수록 아래 내용 계속 보여준다
			<td>퍼센트이퀄info.get("menu") %></td>
				<td>퍼센트이퀄info.get("name") %></td>
				<td>퍼센트이퀄info.get("point") %></td>
			
			 -->
			<tr>
				<td><%=info.get("menu") %></td>
				<td><%=info.get("name") %></td>
				<td><%=info.get("point") %></td>
			</tr>
			<%
						//}
					}
				}
			
			%>
			
			
		</tbody>	
	</table>





</body>
</html>