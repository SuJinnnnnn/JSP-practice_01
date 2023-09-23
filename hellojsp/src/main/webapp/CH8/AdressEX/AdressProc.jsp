<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--한글 깨짐 방지-->
<% 
request.setCharacterEncoding("utf-8");
%>

	<jsp:useBean id="aBean" class="adress.AdressDo">
		<!-- <한번의 값을 가져옴> -->
		<jsp:setProperty name = "aBean" property="*"/> 
		</jsp:useBean>
		
		 <!-- DAO객체를 이용하여 입력된  DO객체를 ArrayList에 저장 -->
		 <jsp:useBean id="aDao" class="adress.AdressDao" scope="application"/>
		 <%
		 	aDao.insertAddr(aBean);
		 %>
		 
		<table border="1">
			<tr height="50" align="center">
				<td width="100"> 이름 </td>
				<td width="200">
					<%=aBean.getName() %>
				</td>
			</tr>
			
			<tr height="50" align="center">
				<td width="100"> 전화번호 </td>
				<td width="200">
					<%=aBean.getTel() %>
				</td>
			</tr>
			
				<tr height="50" align="center">
				<td width="100"> 이메일 </td>
				<td width="200">
					<%=aBean.getEmail() %>
				</td>
			</tr>
		
				<tr height="50" align="center">
				<td width="100"> 직업 </td>
				<td width="200">
					<%=aBean.getJob() %>
				</td>
			</tr>
		</table>
		
	<!--전체 주소록 보기  -->
	<a href="AdressList.jsp"> 전체 주소록 보기 </a>	
		
</body>
</html>