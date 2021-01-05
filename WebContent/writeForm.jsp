<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--등록문 만드는 거라 DB연결할 필요 없음. 다른 클래스 메모리에 안 올리고 writeForm.jsp 객체에만 코드 짜서 response시킴.-->
	<h1>전화번호 등록</h1>
	<p>
		전화번호를 출력하려면 <br>
		아래 항목을 기입하고 "등록" 버튼을 클릭하세요.
	</p>
	
	<!--http://localhost:8088/phonebook1/insert.jsp?name=이다현&hp=010-1111-1111&company=010-2222-2222 -->
	<form action="./insert.jsp" method="get"> <!--아래가 위처럼 만들어주는 거. 데이터 넣을 주소 ./insert.jsp로 쓰고 전달방식 get으로 선택 -->
		이름(name): <input type="text" name="name"> <br>
		핸드폰(hp) : <input type="text" name="hp"> <br>
		회사(company) : <input type="text" name="company"> <br>
		<button type="submit">등록</button>
	</form>
	
	<!-- 
		*전달방식
		get : 주소창에 입력 데이터(파라미터)가 나타남
		post : 파라미터 있는 건 위와 같지만 주소창에 입력 데이터가 나타나지 않음
	 -->

</body>
</html>