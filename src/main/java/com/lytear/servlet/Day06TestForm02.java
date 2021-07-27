package com.lytear.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet/test08") // webapp 파일명과 url 매핑 주소는 일치해야 한다
public class Day06TestForm02 extends HttpServlet {

	// ★ 굉장히 많이 쓰이는 패턴의 문제
	// https://github.com/hamsh5312/ServletProject 함서현

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();//윤: out이 객체가 된다
		
		String keyword = request.getParameter("keyword");		
		
		
		
		List<String> list = new ArrayList<>(
				Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요.")
		);
//		List<String> lst = Arrays.asList(strs); // new ArrayList<String>(); 대신에 사용
//		List<String>list = new ArrayList<> (new ArrayList<String>() ) ;
//		Arrays.asList(
//		        "강남역 최고 맛집 소개 합니다.", 
//		        "오늘 기분 좋은 일이 있었네요.", 
//		        "역시 맛집 데이트가 제일 좋네요.", 
//		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
//		        "자축 저 오늘 생일 이에요.")
//		String[] strs = {"강남역 최고 맛집 소개 합니다.", 
//		        "오늘 기분 좋은 일이 있었네요.", 
//		        "역시 맛집 데이트가 제일 좋네요.", 
//		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
//		        "자축 저 오늘 생일 이에요."}; 
//		List<String> list = new ArrayList<>(스트링 배열);
//		List<Integer> numbers = new ArrayList<>();
//		
//		numbers.add(5);
		
		
		
		out.println("<html><head><title>검색하기</title></head><body>");
		
		
		
		Iterator<String> iter = list.iterator();//일반 index 반복문 또는 향상된 for 문도 가능
		
		while(iter.hasNext()) {
			String string = iter.next();//일단 문장 하나 꺼내는 것에 집중
			
			if(string.contains(keyword)) {
//				강남역 최고 <b>맛집</b> 소개합니다
//				맛집 -> <b>맛집</b> : 맛집이 한 문제에 두 번 나오면 첫번째만 바뀌고 두 번쨰 거 처리 어려워
//				아예 위와 같이 바꾸어 줌
//				
//				string.replace(keyword, "<b>" + keyword + "</b>");// 수정한 문자열을 저장하는 것이 아니라
				// 리턴해 주는 것임
				string = string.replace(keyword, "<b>" + keyword + "</b>");// 위와 달리 변수를 새로 바꾸어 저장
				out.println(string + "<hr>");
				// replaceAll 은 정규표현식 타입 사용 가능, replace는 일반적인 string 형태. replace도 전체 다가 바뀜
			}		
			
		}	
		out.println("</body></html>");			

		/*
		Iterator<Integer> iter = lists.iterator();
		
		iter = lists.iterator();
		while(iter.hasNext()) {
			System.out.println("test");
			int number = iter.next();
			// 위 3번 문제가 있을 경우  출력 안 됨
			// 위 3번 문제가 없을 경우 element = 20, element = 3  
//			System.out.println("출력 test");
//			System.out.println(element);
//			
			
			if(number % 2 == 0) {
				iter.remove();
				System.out.println("짝수");
			}
			// iterator: 지웠으니 그 다음거는 얘를 가리켜야지 스스로 관리함
			
		}
		System.out.println(lists);
		*/

//		for(int i = 0; i < 5; i++) {
//			if(list.get(i).contains(keyword)) {
//				char[] arr = new char[list.get(i).length()];
//				for(int j = 0; i < list.get(i).length(); j++) {
//					arr[j] = list.get(i).charAt(j);
//				}
//				
//				char[] temp = arr;
//				
//				int size = keyword.length();
//				int idx = 0;
//				for(int k=0; k < temp.length - size + 1; k++) {
//					if(temp[k] == keyword.charAt(k)) {
//						idx = k;
//					}
//					
//					
//				}
//				int firstidx = idx;
//				String front = "";
//				out.println("<h1>"+list.get(i)+"</h1>");
//			}		
//			
//		}
		
		
				
///		replace 함수 사용해 바뀔 문자열 이용
	}	
	
}	