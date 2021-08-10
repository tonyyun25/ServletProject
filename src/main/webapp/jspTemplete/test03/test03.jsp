<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lytear.common.MysqlService" %>    
<%@ page import="java.sql.ResultSet" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="test03style.css"> 
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    
</head>
<body class="wrap">

	
	<%
	MysqlService mysqlService = MysqlService.getInstance();		
	mysqlService.connect();
	String query = "SELECT used_goods.picture, used_goods.title, used_goods.price, seller.nickname FROM `seller` JOIN `used_goods` ON seller.id=used_goods.sellerId ORDER BY used_goods.id DESC;";
	
	ResultSet result = mysqlService.select(query);
	
	%>
			
	
	
	<jsp:include page="header.jsp" />
	
	<jsp:include page="menu.jsp" /> 
	
	<section  class=" d-flex flex-wrap justify-content-around mt-3">
		<%
		while(result.next()) {
			
			
			
		%>
		
	
		<div  class="main-link">
			
			<div>
				
				<%
					String picture = result.getString("picture");
					if(picture!=null) {
					%>
				<img width="250" src="<%=result.getString("picture") %>">
					<% } else {
					
					%>
					<div class="photo bg-success" >이미지 없음</div>
					
					<%} %>
					
				
			</div>
			
			
			<div class="title"><%=result.getString("title") %></div>
			
			
			<div class="price"><%=result.getInt("price") %></div>
			<div class="seller"><%=result.getString("nickname") %></div>
		</div>
		
		
		
		<% 	
		}
		
		%>
		
		
	</section>
	
	<jsp:include page="footer.jsp" /> 
	
	
</body>
</html>