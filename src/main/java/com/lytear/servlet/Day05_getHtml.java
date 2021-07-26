package com.lytear.servlet;
// 단수를 파라미터로 받아서 이걸 한페이지에서 처리하자~!
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet/test05")// url 맵핑 주소 만들어 줌
public class Day05_getHtml extends HttpServlet {


		@Override
		public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {// 메소드에서 두 개 파라미터 받음
		
			response.setCharacterEncoding("utf-8"); 
			response.setContentType("application/json");
			
			PrintWriter out = response.getWriter();
			
//			String numberString = request.getParameter("name");//단수를 name이라고 내가 정했어
//			int number = Integer.parseInt(numberString);//파라미터 이름을 number로 정함
			// 한 줄로
			int number = Integer.parseInt(request.getParameter("number"));
			
			out.println("<html> <head> <title> 구구단 </title> </head>");
			out.println("<body> <ul>");	
			
			
			for(int i = 1; i <= 9; i++) {				
				
				out.println("<li>" + number + " X "+ i + " = " + (number * i) + "</li>");
			}	
			
			
			out.println("</ul> </body>");			
			
			out.println("</html>");
			// 최초 입력 : servlet/test05?number=3
			
			
			/*
			out.println("<html> <head> <title> 반복리스트 </title> </head>");
			//out.println("<body> <ul> <li>1번째 리스트 </li> <li> 2번째 리스트</li> </ul> ");
			out.println("<body> <ul>");//태그 쪼개기
			for(int i = 1; i <= 30; i++) {
				out.println("<li>" + i + " 번째 리스트</li>");
			}
			out.println("</ul>");		
			// <li>1번째 리스트 </li> <li> 2번째 리스트</li> </ul> ");
			out.println("</body> </html> ");
			*/
			
			
	
		}
	
	
	
	
	
	
	
	
}
