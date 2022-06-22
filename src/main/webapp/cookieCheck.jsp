<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 정보 확인</title>
</head>
<body>
	
	<h2>쿠키 객체 정보 확인</h2>
	<hr>
	<%	/* cookie는 클라이언트 서버에 저장되서 클라이언트가 서버로 보내야함=> request 객체 사용 */
		Cookie[] cookies = request.getCookies();	// 배열로 반환
	
		out.println("쿠키 객체의 개수 : " + cookies.length + "<br><br>");	// for문(인덱스가 있어서 이게 편함)이나 while문으로 돌려야함
		out.println("<br>");
		
		for(int i=0; i<cookies.length; i++) {
			out.println("쿠키의 이름 : " + cookies[i].getName() + "<br><br>");
			out.println("쿠키의 값 : " + cookies[i].getValue() + "<br><br>");
			out.println("<br>");
			out.println("<br>");
		}
	%>
	
	<a href="cookieDelete.jsp">쿠키 삭제</a>
	
</body>
</html>