package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet/ex04_1") // 클래스 이름과 WebServlet 안의 주소와는 전혀 연관이 없다
// 클래스로 만든 부분은 WebServlet 안의 주소로 접속한다. 클래스 이름과 (WebServlet) 주소는 연관이 없다
public class Day05_ServletEx03 extends HttpServlet {	

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {// 메소드에서 두 개 파라미터 받음
	
		response.setCharacterEncoding("utf-8"); 
		response.setContentType("application/json");
		
		String id = request.getParameter("user_id");	
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
		
		
//		out.println("<html><head><title>get 파라미터 확인 </title></head>");
//		out.println("<body><h3>" +id +":" +name +":" +age +":"+ </h3></body></html>");
//		
		
		
		//
//		 
		
		// ?user_id=jinil&name=윤진일&age=25
//		 {"user_id":"jinil","name":"윤진일","age":25}  : 맨 앞 뒤 " 는 내가 입력함
//		
		
//		out.println("{\"user_id\":\" " + id + "\",\"name\":\""+name+"\",\"age\":" + age + "}");		
		out.println("{\"user_id\":\" " + id + "\",\"name\":\""+name+"\",\"age\":" + age + "}");
		// id 부분을 하나의 변수로 만들어야 되니까 그 앞에 따옴표를 줘서 "{\"user_id\":\" " 를 하나의 덩어리로 만듦
//		"\",\"name\":\""+name+"\",\"age\":" + age + "}" : 이게 나머지 하나의 덩어리
//		첫째 덩어리 : "  {   \"  user_id   \":\"  "   =>   "user_id"    :  "  +   id +
//		둘째 덩어리 : " \",\"name\":\" "  : 윤진일을 name이라는 변수로 변환했다. => "   ,"name":   " + name+
//		셋째 덩어리 : "  \",\"age\":  " + age       =>   "    ,"age": + age +  
//		넷째 덩어리 : "   }  "    =>   }
		// 웹에 입력할 주소: http://localhost:8080/servlet/Day04_ServletEx03?user_id=hagulu&name="진일"&age=27
		
//		클래스 이름으로 된 주소는 없습니다
//
//		지금 쓰일 주소는 딱 두가지 입니다 
//
//		클래스로 작성한 페이지를 접근할떄는 
//
//
//		http://localhost:8080/servlet/ex04_1?user_id=jinil&name=%EC%9C%A4%EC%A7%84%EC%9D%BC&age=27 
//
//		이 주소고요
//
//		링크가 들어 있는 html 주소 
//
//		http://localhost:8080/servlet/ex04_1.html 를 의미하신게 맞는지요? 
//
//		이거 두개 입니다. 
//
//		그외의 주소는 사용할 수 없습니다. 
//
//		주소는 명확합니다. 
//
//		WebServlet 을 통해서 url 매핑을 해준 주소와
//		html 파일 경로 뿐입니다. 
//
//
//		다른건 전혀 관여 하지 않습니다. 
	}	
}
