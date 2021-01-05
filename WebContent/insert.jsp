<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "java.util.List" %>
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
	
	//저장
	pDao.phoneInsert(pVo);
	
	//리스트
	List<PhoneVo> pList = pDao.getList();
	
	//리다이렉트 코드 : 저 주소에 다시 요청하면(이미 만들어진 거에 재요청) 알아서 해줄 거다 
	response.sendRedirect("./list.jsp"); 

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--등록한 데이터를 DB로 보내는 페이지 
		주소창 데이터 입력시 기본형태 : 파일이름?키=값&키=값&키=값... --> 리스트 출력되게 변경--%>
		
	<%-- 리다이렉트시킬 거라 원래 리스트 출력 코드는 주석 처리함
	<%for (int i=0; i<pList.size(); i++){ %>
		<table border="1">
			<tr>
				<td>이름(name)</td>
				<td><%pList.get(i).getName() %></td>			
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%pList.get(i).getHp() %></td>			
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%pList.get(i).getCompany() %></td>			
			</tr>	
		</table>
		<br>
	<%} %>
	--%>
</body>
</html>