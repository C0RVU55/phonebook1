<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "com.javaex.vo.PhoneVo" %>
<%@ page import = "com.javaex.dao.PhoneDao" %>

<%--받은 값(request) 꺼내오기 --%>
<%
	/*http://localhost:8088/phonebook1/insert.jsp?name=이다현&hp=010-1111-1111&company=010-2222-2222*/
	/*writeForm.jsp에 데이터 입력할 때나 주소창에 직접 입력할 때 String이어도 "" 안 씀. 쓰면 DB에 ""도 같이 들어감.*/
	
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PhoneVo pVo = new PhoneVo(name, hp, company);
	
	PhoneDao pDao = new PhoneDao();
	pDao.phoneInsert(pVo);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--등록한 데이터를 DB로 보내는 페이지 
		주소창 데이터 입력시 기본형태 : 파일이름?키=값&키=값&키=값...--%>
	등록 요청 완료
</body>
</html>