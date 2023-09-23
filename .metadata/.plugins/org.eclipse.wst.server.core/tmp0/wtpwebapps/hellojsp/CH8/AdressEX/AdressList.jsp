<%@page import="adress.AdressDo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 모든 주소록 보기 (Adress.jsp)</h2>
	<!--주소록 추가-->
	<a href= "AdressForm.jsp"> 주소록 추가</a>
	<hr>
			<table border="1">
				<tr height="50" align="center">
				<td width="100"> 이름 </td>
				<td width="100"> 전화번호 </td>
				<td width="100"> 이메일 </td>
				<td width="100"> 직업 </td>
			</tr>
			<jsp:useBean id="aDao"
						class="adress.AdressDao"
						scope="application"/>
			<%
			//저장되어 있는 모든 주소록 데이터 가져오기(Dao 객체활용) //코드를 쓰면 import해야하기 때문에  ctrl + space 눌러줘영~ 안그러면 빨간줄 나와영~
				ArrayList<AdressDo> v = aDao.getAdr();
			
			for(int i =0; i < v.size(); i++){
				AdressDo ado= v.get(i);
				
			%>
				<tr height="50" align="center">
					<td width="100"> <%=ado.getName() %> </td>
					<td width="100"> <%=ado.getTel() %> </td>
					<td width="100"> <%=ado.getEmail() %> </td>
					<td width="100"> <%=ado.getJob() %> </td>
				</tr>
			<%
				}
			%>
				
		</table>
		
	
</body>
</html>