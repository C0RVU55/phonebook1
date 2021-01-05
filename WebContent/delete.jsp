<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "com.javaex.dao.PhoneDao"  %>


<%--원하는 항목 삭제하고 리스트 출력(redirect) --%>

<%
	int personId = Integer.parseInt(request.getParameter("id"));

	PhoneDao pDao = new PhoneDao();
	pDao.phoneDelete(personId);
	
	response.sendRedirect("./list.jsp"); 
	// 이게 있으면 아래 html 내용이 실행되기 전에 redirect되기 때문에 아래 내용이 필요 없어짐. 다 지워도 됨.
	// 또 브라우저에서는 주소가 재요청 들어간 주소로 바뀜. delete.jsp?id=7 --> list.jsp
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
삭제 테스트
</body>
</html>