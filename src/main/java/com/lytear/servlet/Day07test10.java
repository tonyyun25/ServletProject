package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 일반적인 서비스에서 쓰는 로그인과 크게 다를 바 없음

@WebServlet("/servlet/test10")
public class Day07test10 extends HttpServlet {
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	// 생성자가 아니라 바로 입력 (흔치는 않음). final: 지금 이 맵에 put, remove 안 되도록 값 변경 안 됨
		{
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};
	
	@Override
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		out.println("<html><head><title> 로그인 </title></head><body>");
		
		if(!userId.equals(userMap.get("id"))) {
		// 보통 map은 key로(이미 앎) 접근해서 가져옴
			out.println("<h1>ID가 일치하지 않습니다 </h1>");
		}
		else if(!password.equals(userMap.get("password"))) {
			// 보통 map은 key로(이미 앎) 접근해서 가져옴
				out.println("<h1>password가 일치하지 않습니다 </h1>");
		}
		else {
			out.println("<h1>" + userMap.get("name") + "님 환영 합니다</h1>");
		}
		
		out.println("</body></html>");
	}
	

	
}
