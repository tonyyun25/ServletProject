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
    int bookId = Integer.parseInt(request.getParameter("id"));
    
    
    /* Map <String, String> target = null;
    for(Map<String, String> item : list) {
    	if(item.get("id").equals(request.getParameter("id"))) {
    		target = item;
    		break;
    	}
    }*/
%>
    <div class="container">
 		<div class="d-flex">
 			<% 
 			// 첫번쨰 책 정보. 아래 삭제한 명령이 아니라 특정한 데이터를 기반으로 내가 표시할 데이터를 찾아낸다:제일 만만한 게 타이틀	
 			// 책 제목 중복 위험 있으니 고유한 정보인 id로 받는다
 			//Map<String, Object> target = list.get(0);
 			
 			for(Map<String, Object> item: list) {
 				if(bookId == (Integer)item.get("id")) { //Object인 상태로 Integer로 캐스팅(이미 Integer로 저장되어서 가능)
 					
 				
 			
 			%>
 		
 			<!-- 표지 -->
 			<div><img src=<%=item.get("image") %>></div>
 			<!-- 정보 -->
 			<div>
 				<div class="display-1"><!-- 한줄 한줄 스타일 주기 위해 div 감쌈 -->
	 				<%=item.get("title") %>
	 			</div >
	 			<div class="display-3 text-info">
	 				<%=item.get("author") %>
	 			</div>
	 			<div class="display-4 text-secondary">
	 				<%=item.get("publisher") %>
	 			</div>
	 			<% 
	 			}
 			}
 			%>	
 			</div>
 			
 		</div>   
    
    </div>
    	
<body>

</body>
</html>