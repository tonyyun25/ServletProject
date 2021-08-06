<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
  
<!DOCTYPE html>


<html>
<head>
	<meta charset="UTF-8">
	<title>책 목록</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!--  매우 중요. 실제 상황에서 굉장히 많이 씀 -->

</head>
<!-- 제목 클랙했을 때 첫 번째 맵에서 뭘 전달할지를 고민해. 처음은 리스트 내용
보여주기 하고 그 다음은 책 제목을 보여줬을 때 상세 페이지 연결. 하나의 jsp 파일 안에 다 들어가야 함
상세페이지 따로 만들어보고, 파라미터 어떻게 전달할지도 고민
선생님 : 제가예제로 보여드릴때 말고는
키셋은 안쓰는게 좋아요
맵은 무조건
키를 알고 있다는 가정으로 하는게 좋아요
지금 키셋으로 가져오니 원하는 순서대로 값을 못꺼내는거에요

 -->
	<%
	List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {
        { 
            put("id", 1000);
            put("title", "아몬드"); 
            put("author", "손원평"); 
            put("publisher", "창비");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1001);
            put("title", "사피엔스"); 
            put("author", "유발 하라리"); 
            put("publisher", "김영사");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1002);
            put("title", "코스모스"); 
            put("author", "칼 세이건"); 
            put("publisher", "사이언스북");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1003);
            put("title", "나미야 잡화점의 기적"); 
            put("author", "히가시노 게이고"); 
            put("publisher", "현대문학");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
        } 
    };
    list.add(map);
	%>
<body>
	<div class="container">
	
		<h1 class="text-center">책 목록</h1>
		
		<table class="table">
			<thead>
				<tr>
					<th>id</th>
					<th>표지</th>
					<th>제목</th>
					
					
					
				</tr>
			</thead>
			
			<tbody>
				
				<!-- <퍼센트
						for(Map<String, Object> info : list) {
							if(info.get("menu").equals(searchMenu)) {
								if(startPointFilter != null && (Double)info.get("point") < 4) {
									continue; 
								}
							%> -->
					<!-- 특정한 메뉴 이름이 검색이 되면 테이블에 보여주게 되어 있음. 맵은
					무조건 키로 접근한다. 맵은 젤 많이 쓰는 메소드 put, get 말고는 거의 없다
					처음에 한 아래 내용은 반복문 돌수록 아래 내용 계속 보여준다
					<tr>	
						<td>퍼센트이퀄info.get("menu") %></td>
						<td>퍼센트이퀄info.get("name") %></td>
						<td>퍼센트이퀄info.get("point") %></td>
					</tr>
					<퍼센트
								//}
							}
						}
					%>
					 -->
					<!--        ====================== -->
				
				
				<% 
				for(Map<String, Object> item : list) {
					%>	
				<tr>
					<td><%= item.get("id")%></td>	
					
					 <td><img width="100" src=<%= item.get("image")%>></td>	
				
					 
					 <td><a href="/jsp/test08_2.jsp?id=<%=item.get("id")%>"> <%=item.get("title") %></a></td>	
					
				</tr>
				
				<% 
				}
				%>
		
			</tbody>
		</table>
	</div>
</body>
</html>