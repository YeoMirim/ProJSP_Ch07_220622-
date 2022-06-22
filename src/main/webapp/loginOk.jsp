<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body>
	<%
		String mid = request.getParameter("id");	// iogin.jsp의 id값을 reqeest에 담아옴
		String mpw = request.getParameter("pw");
		
		if(mid.equals("tiger") && mpw.equals("12345")) {	// 로그인 확인
			
			Cookie cookie_id = new Cookie("memberId", mid);	// Cookie는 class라서 대문자
			Cookie cookie_pw = new Cookie("memberPw", mpw);	// memberId, memberPw는 Cookie class의 멤버 객체
			
			response.addCookie(cookie_id);	// 서버에서 클라이언트로 response에 담아보냄
			response.addCookie(cookie_pw);
			
			out.println("안녕하세요 " + mid + "님, 로그인하셨습니다. <br>");
			out.println("쿠키가 생성되었습니다.");
		}
		
		else {	// 로그인 안 될 경우
			response.sendRedirect("login.jsp");	// 보내고싶은 주소나 jsp명 쓰면 그쪽으로 보내줌
		}
	%>
	<br><br>
	<a href="cookieCheck.jsp">쿠키정보 확인하기</a>
</body>
</html>