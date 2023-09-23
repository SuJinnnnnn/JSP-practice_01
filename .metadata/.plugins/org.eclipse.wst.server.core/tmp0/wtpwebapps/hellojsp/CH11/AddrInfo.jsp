<%@page import="addrBook.addressDo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>  수정할 주소록 보기 (AddrInfo.jsp) </h2>
	<hr>
	
	<jsp:useBean id="adao" class="addrBook.addressDao"/>
	
	<%
		//어떤 주소 제이터를 수정할지 데이터 가져오기
		int num = Integer.parseInt(request.getParameter("num"));
	
		//ado에서 getOneAddr() 이용하여 num 에 해당되는 데이터 가져오기
		addressDo ado = adao.getOneAddr(num);	
	%>
	<table border="1">
		<tr height="50" align="center">
			<td width="100"> 사용자 이름 </td>
			<td width="300">
				<!-- input type="text" name="name">-->
				<%= ado.getName() %>
			</td>
		</tr>
		
		<tr height="50" align="center">
			<td width="100"> 전화번호 </td>
			<td width="300">
				<!-- <input type="text" name="tel"> -->
				<%= ado.getTel() %>
			</td>
		</tr>
		
			<tr height="50" align="center">
			<td width="100"> 이메일 </td>
			<td width="200">
				 <!-- <input type="text" name="email"> -->
				<%= ado.getName() %>
			</td>
		</tr>
		
			<tr height="50" align="center">
			<td width="100"> 취미 </td>
			<td width="300">
				<!-- <input type="text" name="hobby"> -->
				<!-- <select name=:"hobby">
					<option value="tennis"> 테니스 </option>
					<option value ="run"> 달리기 </option>
					<option value ="eat"> 먹기 </option>
					</select> -->
					<%= ado.getHobby() %>
			</td>
		</tr>
		
			<tr height="50" align="center">
			<td width="100"> 직업 </td>
			<td width="300">
				<!-- <input type="text" name="job"> -->
				<!-- <input type ="checkbox" name="job" value="웹백엔드"> 웹백엔드
				<input type ="checkbox" name="job" value="웹프론드"> 웹프론트
				<input type ="checkbox" name="job" value="UI/UX"> UI/UX -->
				<%= ado.getJob() %>
			</td>
		</tr>
	
	</table>
</body>
</html>