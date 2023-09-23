<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- <빈즈 객체 생성 -->
	<jsp:useBean id="Login" class="model.LoginBean">
		<%-- <jsp:setProperty property="userid" name="Login"/> --%>
		<jsp:setProperty property="userpassword" name="Login"/>
		<jsp:setProperty property="*" name="Login" />
	</jsp:useBean>
	
	<% 
		if(Login.checkUser()){
			out.println("로그인 성공!");
		}
		else {
			out.println("로그인 실패!");
		}
	%>
	
	<h2>Login.Proc.jsp</h2>

	<p> id : <jsp:getProperty property="userid" name="Login"/> </p>
	<p> password :<jsp:getProperty property="userpassword" name="Login"/>
	<p> email :<jsp:getProperty property="useremail" name="Login"/> </p>

	<p> id : <%= request.getParameter("userid") %></p>
	<p> password : <%= request.getParameter("userpassword") %>
	<p> email : <%= request.getParameter("useremail") %></p>

	</body>
	</html>