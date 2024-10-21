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
	<h1>form 태그로 전달한 파라미터 받기</h1>
	<!-- EL 태그 방식은 내부적으로 형변환을 하여 연산이 가능함 -->
	<h3>이름 : ${param.name }</h3>
	<h3>나이 : ${param.age-1 }</h3>
	<hr>
	<!-- 스크립틀릿 방식으로 파라미터 가져오기 -->
	<!-- java에서는 파라미터로 가져오는 값은 무조건 String. 연산 불가능. 형변환 필요 -->
	<h3>이름 : <%= request.getParameter("name") %></h3>
	<h3>나이 : <%= Integer.parseInt(request.getParameter("age"))-1 %></h3>
	
	<!-- taglib 선언 후 c:if 이용하여 나이가 20세 이상이면 성인입니다 라고 출력 -->
	<c:if test="${param.age >= 20}">
		<h3>${param.name }님은 성인입니다.</h3>
	</c:if>
	
	<!-- c:choose를 사용하여 다중조건 처리 -->
	<!-- age 18세 이상은 성인 / 15세 이상은 청소년 / 5세 이상은 어린이 / 나머지는 유아 -->
	<!-- c:choose c:when / c:otherwise -->
	<c:choose>
		<c:when test="${param.age >= 18 }">
			<h3>${param.name }님은 ${param.age } / 성인입니다.</h3>
		</c:when>
		<c:when test="${param.age >= 15 }">
			<h3>${param.name }님은 ${param.age } / 청소년입니다.</h3>
		</c:when>
		<c:when test="${param.age >= 5 }">
			<h3>${param.name }님은 ${param.age } / 어린이입니다.</h3>
		</c:when>
		<c:otherwise>
			<h3>${param.name }님은 ${param.age } / 유아입니다.</h3>
		</c:otherwise>
	</c:choose>
	
	<hr>
	
	<form action="step-4.jsp">
		<input type="checkbox" name="food" value="바나나">바나나<br>
		<input type="checkbox" name="food" value="귤">귤<br>
		<input type="checkbox" name="food" value="딸기">딸기<br>
		<input type="checkbox" name="food" value="사과">사과<br>
		<input type="checkbox" name="food" value="복숭아">복숭아<br>
		<button type="submit">step-4.jsp로 전송</button>
	</form>
</body>
</html>