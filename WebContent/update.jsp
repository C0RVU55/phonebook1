<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import= "com.javaex.vo.PhoneVo"%>
<%@ page import= "com.javaex.dao.PhoneDao"%>

<%--데이터 수정해서 넣고 다시 수정사항 반영된 리스트 redirect 출력 --%>


<%
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	int personId = Integer.parseInt(request.getParameter("id"));
	
	PhoneVo pVo = new PhoneVo(personId, name, hp, company);
	
	PhoneDao pDao = new PhoneDao();
	pDao.phoneUpdate(pVo);
	
	response.sendRedirect("./list.jsp");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>