package com.lytear.hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloController extends HttpServlet { // 빨간 줄 임포트
	 // 웹 서비스 형태로 받으려면 상속을 받아야 함
	
	@Override // 부모클래스가 가진 메소드를 재정의
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();//add throws declaration
		
		out.println("hello world");
		// 그 다음 위 내용이 불러지도록 만들어야 한다 -> src/ webapp		
		
		
		
		
	}
	
	// 오늘 내용 굉장히 중요 (21.07.20)
	/*
	LOCALHOST: 자신의 컴퓨터의 서버에 접속할 때 쓰이는 주소  
	ex) http://localhost:8080/ServletProject/hello
	 
	8080:포트 번호. 해당 프로그램에서 어떤 서버 프로그램에 접속해서 실행할 지 결정
	톰캣(IP랑 포트번호 확인)이라는 웹서버를 컴퓨터에 깜. 이외에 mysql도 database 서버임
	 서버는 하나가 아니라 여럭 개의 웹서버(80), database, 메일서버, Telnet, FTP 등으로 구성
	 
	 잘 알려진 웹서버 포트 번호는 80을 쓰기로 표준으로 정해짐 naver.com:80
	 우리는 8080이라는 임의의 또다른 포트 번호 (패스트용 포트). 4000 이상은 얼마든지 만들어 쓰면 됨
	 
	 아파치 깥은 웹서버(WAS)는 리퀘스트를 객체화함 (dispatcher servlet)
	 
	 아파치 톰캣 : java 기반의 웹 서버, 클라이언트와 네트워크 통신, Servlet을 통해서 
	 request,response 처리, servlet 컨테이너
	 
	 java program 을 통해 mysql에 접속해서 database를 가져올 수 있다
	 
	 Dispatcher servlet은 url mapping(호스트 뒤에 있는 path를 확인, 매칭)을 통해
	  우리가 만들어 놓은 java program class로 전달
	 
	 http : 스키마(schema) 또는 프로토콜
	marondal.com : 호스트 (도메인) => 우리 웹서버에 당도
	 /less/example_list : path => 우리가 만든 코드는 어떤 코드에 들어가 수행할 지 결정하는 위치. 위에서 doGet
	 
	 web.xml
	 
	 

	<servlet>
		<servlet-name>hello</servlet-name>
		<servlet-class>com.lytear.hello.HelloController</servlet-class>
	</servlet>

	<servlet-mapping>
		<servlet-name>hello</servlet-name> : hello라는 맵핑시킬 서브렛 명칭
		<url-pattern>/hello</url-pattern> : 어 떤 url과 매칭
		
	</servlet-mapping>

	 

	 */
	

}
