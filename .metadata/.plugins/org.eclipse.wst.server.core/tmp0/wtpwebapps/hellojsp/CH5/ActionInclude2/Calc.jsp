<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> Calc Page</h2>
	<hr>
	<jsp:include page="Adder.jsp">
		<jsp:param value = "2" name = "num1"/>
		<jsp:param value = "3" name = "num2"/>
	</jsp:include>
</body>
</html>