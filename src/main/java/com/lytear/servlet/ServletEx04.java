package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// http://localhost:8080/servlet/ex03?user_id=jinil&name=kim?age=30
// 위 형태로 값 받으려면 request에서 값 꺼내와야 함
@WebServlet("/servlet/ex04_2") // webapp 파일명과 url 매핑 주소는 일치해야 한다
public class ServletEx04 extends HttpServlet {

	/*
	 * 웹서버도 함수다
	 * http://marondal.com /우리 컴퓨터까지 도달하기 위한 정보
	 * lesson/quiz_list 함수 이름
	 * lectureId=10012&lectureListId-10130
	 * 웹 안에서 쓰는 메소드 : Get Method (주소 안에 파라미터가 보이는 형태),
	 * 호스트 메소드
	 * request.getId(파라미터 이름) // 파라미터 이름 = url 뒤에 있는 user_id=11123&name=kim
	 * 사용자는 스스로 인식 못 하며 위 url로 넘어감. 그 이유는 
	 * 사용자가 인풋한 입력이 서버에 전달되며 그 과정을 Form 이라 한다.
	 * Input type="text" font
	 * <form method="get" action= "/hello"> : "호출할 주소(path 뒤에 붙은 것 : 이 주소로 전달하세요)">
	 * 내가 검색 버튼을 딱 누르는 순간 get 형태(주소 뒤의 물음표에서 변수를 독해하는 것)로 요청을 날린다
	 * action : 요청할 주소. 아래는 파라미터 전달
	 *  	<input type="text" name="keyword (인풋의 네임에 지정된 키워드(맛집))">
	 * 		<input type="submit" value="검색">
	 * </form>
	 * 검색을 누르는 순간 get 메소드 실행되며 이 url 주소가 만들어짐
	 * 
	 * 
	 * post 메소드 localhost:8080/hello => request는 header(정보저장), body 나뉘는데
	 * body(keyword="맛집")으로 저장 => 데이터가 사용자에가 노출 X, 많은 양의 데이타 저장 가능
	 * 
	 * 
	 * */
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");	
		response.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("user_id");
		// 우리가 id 눌렀을 때 타고갈 링크를 사용자에게 전해 준다
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		
		
		PrintWriter out = response.getWriter(); // response에서 print할 꺼라 꺼내온다
		
		out.println("<html><head><title>get 파라미터 확인  </title></head>");
		out.println("<body><h3>" + id + " : " + name + " : " + age + "</h3></body></html>");
		
		
		
		
	}	
	
	
}