<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lytear.common.MysqlService" %>    
<%@ page import="java.sql.ResultSet" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="test03_1style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
</head>
<body>
 	
 	<% 
 	MysqlService mysqlService = MysqlService.getInstance();
 	mysqlService.connect();
 	
 	String query = "SELECT `id`,`nickname` FROM `seller`;";
 	ResultSet result = mysqlService.select(query);
 	 
 	/*2. 전에 설명드린대로 input 하는 곳에서 seller 테이블에 대한 select를 수행을 해서 
 	input select box를 채우는 형태로 만들어야 합니다. 
 	그러면 거기에서 selleId도 같이 가져올수 있으니 이를 활용하면 입력 화면에서 sellerId를 전달할수 있을겁니다. 
 	파라미터로 nickname 이 아니라 sellerID를 직접 받는 형태가 더욱 좋습니다. 
 	그 방법으로 한번 강구해보시면 좋을거 같아요 */ 
 	%>
 	<div class="wrap">
 	
		<jsp:include page = "header.jsp" />
		<jsp:include page = "menu.jsp" />
		<div class="d-flex justify-content-center mt-3" >
		
			<form method="post" action="/db/test03/insert">
				<div class="contents mb-3">물건 올리기</div>
				
				<div class="d-flex">	
					<select name="nickname" class="">
						<option >-아이디선택-</option>
						<% 
						
						String sellerId = "";
						while(result.next()) { %>
						
						<option value="person"><a href="/db/test03/insert?sellerId=<%=result.getString("id")%>"><%=result.getString("nickname") %></a></option>
						
						<%} %>
					</select>
					<%
					%>
					<input type="text" class="ml-4" name="title" placeholder="제목">
					
					<div class="input-group ml-4">
						<input type="text"	name="price" placeholder="가격">		
						<div class="input-group-append">
							<span class="input-group-text">원</span>
						</div>
					</div>
					
					
				</div>
				
				<div class="input-group mt-3 ">
					<div class="input-group-prepend">
						<span class="input-group-text">설명</span>
					
					</div>
					<textarea class="box-3" name="description" ></textarea>
				</div>
				
				<div class="input-group mt-3 ">
					<div class="input-group-prepend">
						<span class="input-group-text">이미지 url</span>
					
					</div>
					<input type="text" class="box" name="picture" >
				</div>
				
				<button type="submit" class="btn btn-light mt-3 box-2">저장</button>
			</form>
			
		</div>
	</div>

</body>
</html>