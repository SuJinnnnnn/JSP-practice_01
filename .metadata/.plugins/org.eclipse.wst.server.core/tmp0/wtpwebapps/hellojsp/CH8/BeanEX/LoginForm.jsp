<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> LoginForm.jsp (파라메티를 전달)</h2>
<form action="LoginProc.jsp" method="get">
		<table border="1">
			<tr height="50" align="center">
				<td width="100"> 아이디 </td>
				<td width="200">
					<input type="text" name="userid">
				</td>
			</tr>
			
			<tr height="50" align="center">
				<td width="100"> 패스워드 </td>
				<td width="200">
					<input type="text" name="userpassword">
				</td>
			</tr>
			
				<tr height="50" align="center">
				<td width="100"> 이메일 </td>
				<td width="200">
					<input type="text" name="useremail">
				</td>
			</tr>
		
			
			<tr height ="50" align="center">
				<td colspan="2">
					<input type="submit" value="확인" >
					<input type="reset" value="취소" >
				</td>
			</tr>
		</table>
	</form>
</body>
</html>