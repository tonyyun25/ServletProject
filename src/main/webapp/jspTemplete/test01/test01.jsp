<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>채널 안내</title>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</head>
<%
    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
%>


<!--  선생님은 section 까지는 따로 안 빼고 메인에 두는 것 선호 
		우리가 만드는것은 모두 페이지 단위로 돌아가요
지금 템플릿 통해서 하는것은 하나의 페이지를 여러개로 쪼갠겁니다
각 쪼개진 페이지를 따로 불러서 사용하는건 안돼요
완성된 페이지만 호출해서 사용하는게 일반적입니다
따라서 menu.jsp 에서 content.jsp 로 링크를 연결하는게 아니라
test.jsp 페이지로 링크를 걸어야 합니다
		-->
<body>
<% String category = request.getParameter("category");%>
	
	<div class="container">
		<jsp:include page="header.jsp" /> <!-- / : 닫는 태그가 없는데 나 여기에서 끝낼거야 -->
		
		<jsp:include page="menu.jsp" />
		<!--<jsp:include page="content.jsp" />-->
		
		<section class="content ">
			<table class="table text-center"><!-- t4ext-center 중요 -->
			
				<thead>
					<tr class="">
						<th>채널</th>
						<th>채널명</th>
						<th>카테고리<%="<br>" %></th>
					</tr>
				
				</thead>
				<tbody >
					<%	
					// for(Map<String, String> item : list) 향상된 for문과 아래는 동일
					// 주소 직접 입력해:http://localhost:8080/jspTemplete/test01/test01.jsp?category=스포츠
					// 카테고리마다 각 페이지 만드는 것은 유지 관리 어려워
					for(int i = 0; i < list.size(); i++) {
						Map<String, String> item = list.get(i);
						
						if(category == null || item.get("category").equals(category)) {
							
							
					%>
					<tr><!--  데이타 수행의 단위는 tr이다. tr 단위로 반복문 만들자 -->
							<td><%= item.get("ch")%></td>
							<td><%= item.get("name")%></td>
							<td><%= item.get("category") + "<br>"%></td>
					</tr>
					
					<%
							
						}
					}// 중괄호 닫는 걸 tr 아래쪽에 위치시킴
					%>
				</tbody>
		
			</table>
		</section>
		
			
		<jsp:include page="footer.jsp" />
		
	</div>



</body>
</html>