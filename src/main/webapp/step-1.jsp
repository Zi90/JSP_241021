<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>step-1.jsp</h1>
	<!-- queryString에서 보낸 데이터 받기 param.key -->
	<!-- EL 방식으로 받기 -->
	<h3>index.jsp에서 보낸 데이터</h3>
	<h3>이름 : ${param.name }</h3>
	<h3>나이 : ${param.age }</h3>
	
	<!-- c:if : if명령어 JSTL 명령어 - 별도의 라이브러리 생성 -->
	<!-- test = "조건식 eq ne" name eq 홍길동  -->
	<c:if test="${param.age <= 18 }">
		<h3>${param.name }님은 미성년자입니다.</h3>
	</c:if>
	
	
	<!-- queryString name=귤&addr=제주 step-2.jsp 보내고 -->
	<!-- step-2.jsp 생성 후 상품명: 귤 / 원산지: 제주 출력 -->
	
</body>
</html>