<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> sessionProc1.jsp</h2>
	<% 
		String id = request.getParameter("id");
		String password = request.getParameter("password"); //빈칸문제
	
		//세션이 세로 설정되면
		session.setAttribute("id", id);
		session.setAttribute("password", password); //빈칸문제(sessionMain 값은 주어짐)

%>
<p> id : <%= id %> </p>
<p> password : <%= password %> </p>
</body>
</html>