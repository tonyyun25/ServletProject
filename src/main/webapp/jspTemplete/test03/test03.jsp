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
	String query = "SELECT used_goods.title, used_goods.price, seller.nickname 
			FROM `seller`
			JOIN `used_goods`
			ON seller.id=used_good.sellerId;
";
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
				<img width="250" src="https://media.istockphoto.com/photos/laptop-with-blank-screen-on-table-in-office-loft-interior-building-picture-id1128886108?b=1&k=6&m=1128886108&s=170667a&w=0&h=KsOIsSD1aeCv8y5By2h2xJz2Pq-TPyBuELUfZYq9_Jo=">
			</div>
			
			
			<div class="title"><%=result.getString("title") %></div>
			
			
			<div class="price"><%=result.getInt("price") %></div>
			<div class="seller">최준</div>
		</div>
		
		
		
		<% 	
		}
		
		%>
		
		
	</section>
	
	<jsp:include page="footer.jsp" /> 
	
	
</body>
</html>