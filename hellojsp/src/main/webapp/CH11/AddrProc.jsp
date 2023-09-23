<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> addrProc.jsp () </h2>
	<%
		//한글 깨짐 방지
		request.setCharacterEncoding("utf-8");
		%>
		
		<!-- 입력한 값을 Do에 한방에 받음!! -->
		<jsp:useBean id="ado" class="addrBook.addressDo" />
		<jsp:setProperty property="*" name="ado"/>
		
		<!-- Dao클래스를 이용하여 입력값을 저장(insertAddr()) -->
		<jsp:useBean id="adao" class="addrBook.addressDao"/>
		
		<% 
		//체크박스 처리(여러개 테이터가 전달될 경우, 모두 저장하기 위한 처리)
		String[] job = request.getParameterValues("job");
		String jobText = "";
		for(int i =0; i < job.length; i++) {
			jobText += job[i] + "";
		}
		//out.println("jobText : " + jobText);
		
		//ado의 job의 값을 jobText 값으로 변경...
		ado.setJob(jobText);

		//입력한 데이터 저장 DAO이동)...
		adao.insertAddr(ado);
			
        %>
        		<a href ="AddrList.jsp"> 전체 주소록 보기 </a>
        
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
					<%= jobText %>
				</td>
			</tr>
		
		</table>

</body>
</html>