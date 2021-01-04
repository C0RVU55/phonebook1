<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%--자동 import 안 돼서 아래처럼 수동으로 써줘야 됨. --%>
<%@ page import = "java.util.List" %>
<%@ page import = "com.javaex.dao.PhoneDao" %>
<%@ page import = "com.javaex.vo.PhoneVo" %>

<%--
	list.jsp에서 리스트 출력, 추가번호등록에 writeForm.jsp 연결 
	writeForm에서 입력받은 데이터, 즉 submit 받은 데이터를 insert.jsp에서 처리해서 DB에 등록함
	
	「list.jsp
	  전화번호 리스트 <---------------------------------------------------------------┐
	  추가 번호 등록」 -----> [writeForm.jsp 전화번호 등록] -----> [insert.jsp 이름, 전번, 회사 DB]
--%>

<% 
	//드라이브 연결 : build path말고 deployment assembly > add > java build path 들어가서 같은 오라클 드라이브 연결해야 됨.
	//DB데이터 꼭 커밋하기. 커밋하기 전에는 가상의 데이터라 브라우저에 출력이 안 됨.
	
	PhoneDao phoneDao = new PhoneDao();
	List<PhoneVo> pList = phoneDao.getList();
	
	System.out.println(pList.toString());
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>이다현 전화번호 리스트</h1>

	<p>입력한 정보 내역입니다.</p>
	
	<%for (int i=0; i<pList.size(); i++){ //자바 범위 안에서 값을 나타낼 때는 '=' %>
		
		<table border="1">
			<tr>
				<td>이름(name)</td>
				<td><%=pList.get(i).getName() %></td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%=pList.get(i).getHp() %></td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%=pList.get(i).getCompany() %></td>
			</tr>
		</table>
		<br>
	<%} %>
	
	<br><br>
	<a href="./writeForm.jsp">추가번호 등록</a> <%--등록페이지 연결 --%>
	
</body>
</html>