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
 	
 	String query = "SELECT `nickname` FROM `seller`;";
 	ResultSet result = mysqlService.select(query);
 	
 	
 	%>
 	
 	<div class="wrap">
 	
		<jsp:include page = "header.jsp" />
		<jsp:include page = "menu.jsp" />
		
		<div class="d-flex justify-content-center mt-3" >
		
			<form method="post" action="/db/test03/insert">
				<div class="contents mb-3">물건 올리기</div>
				
				<div class="d-flex">	
					<select name="" class="">
						<option value="">-아이디선택-</option>
						<% while(result.next()) { %>
						
						<option value=""><%=result.getString("nickname") %></option>
						
						<%} %>
						
					</select>
					
					<input type="text" class="ml-4" name="" placeholder="제목">
					
					<div class="input-group ml-4">
						<input type="text"	placeholder="가격">		
						<div class="input-group-append">
							<span class="input-group-text">원</span>
						</div>
					</div>
					
					
				</div>
				
				<div class="input-group mt-3 ">
					<div class="input-group-prepend">
						<span class="input-group-text">설명</span>
					
					</div>
					<textarea class="box-3"></textarea>
				</div>
				
				<div class="input-group mt-3 ">
					<div class="input-group-prepend">
						<span class="input-group-text">이미지 url</span>
					
					</div>
					<input type="text" class="box">
				</div>
				
				<button type="submit" class="btn btn-light mt-3 box-2">저장</button>
			</form>
			
		</div>
	</div>

</body>
</html>