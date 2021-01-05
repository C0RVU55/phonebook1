<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PhoneVo" %>

<%
	int personId = Integer.parseInt(request.getParameter("id"));

	PhoneDao pDao = new PhoneDao();
	PhoneVo pVo = pDao.getPerson(personId); //id를 주면 여기에 해당되는 person정보를 입력창안에 줄 거 : PhoneDao에 사람 하나만 뽑아오는 메소드 추가 필요
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>이다현 전화번호 수정화면</h1>
	<p>
		수정 화면입니다.
		아래 항목을 수정하고 "수정"버튼을 누르세요.
	</p>
	
	<form action="./update.jsp" method="get">
		이름(name) : <input type="text" name="name" value="<%=pVo.getName() %>"><br> <%--pVo에 getPerson()을 적용한 상태. 또 value를 써서 값이 들어가게 해놓음. --%>
		핸드폰(hp) : <input type="text" name="hp" value="<%=pVo.getHp() %>"><br>
		회사(company) : <input type="text" name="company" value="<%=pVo.getCompany() %>"><br>
		
		코드(id) : <input type="hidden" name="id" value="<%=pVo.getPersonId() %>"> <br> <%--이거 사용자가 변경 또는 삭제할 수도 있어서 숨기는 게 나음 hidden 처리 --> 값이 있지만 입력창은 안 보임. --%>
		
		<button type="submit">수정</button>
	</form>

</body>
</html>