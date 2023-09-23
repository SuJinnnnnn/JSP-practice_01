<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 스크립트릿 연습1</h2>
	<%
	//자바코드가 위치함
	for( int i=1; i<=10; i++ ){
		out.println(i + "<br>");
		}
	%>
	<h2> 스크립트릿 연습2 (표현식 이용)</h2>
	<%
		for(int i=0; i<10; i++){
	%>
		<%=i %> <br>
		
	<%
		}
	%>
	<h2> 스크립트릿 연습3 (구구단 출력)</h2>
	<%
		for(int i = 2; i <= 9; i ++)
		{ 
			for(int j = 1; j <=9; j++)
			{
	%>
		<%=i %> * <%= j %> = <%= i*j %> <br>
		
	<%
			}
	%>
		<br>

	<%
		}
	%>
		<h2> 스크립트릿 연습4 (별 출력)</h2>
	<%
		for(int i=1; i<=5; i++ ){
			for(int j=1; j<=i; j++){
	%>
		<%= '*' %>
		
	<%
			}
	%>
		<br>

	<%
		}
	%>
		
		<h2> 스크립트릿 연습4 (별 출력)</h2>
	<%
		for(int i=3; i>=1; i-- ){
			for(int j=1-i; j<=i-1; j++){
	%>
		<%= '*' %>
		
	<%
			}
	%>
		<br>

	<%
		}
	%>
	
		<h2> 스크립트릿 연습4 (별 출력)</h2>
	<%
		for(int i=0; i<=5; i++ ){
			for(int j=1; j<=i; j++){
	%>
		<%= '*' %>
	<%
		for(int a=1; a<=i; a++){
	%>
		<%= ' ' %>
		
	<%
			}
	%>
		<br>

	<%
		}
	%>
	<%
	}
	%>
</body>
</html>