<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	String a = request.getParameter("num1");
	int a1 = Integer.parseInt(a);

	String b = request.getParameter("num2");
	int b1 = Integer.parseInt(b);
	
	
/* 	request.getParameter("num1");
	
	
	String b = request.getParameter("num2"); 
	int b1 = Integer.parseInt(b); */
	%>
	

	<p> <%= a1 %> + <%= b1 %> = <%= a1+b1 %> </p>
</body>
</html>