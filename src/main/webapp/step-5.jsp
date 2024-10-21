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
	<h1>step-5.jsp 화면</h1>
	<!-- 메뉴판을 체크박스 형태로 만들어서 step-6.jsp로 전송 -->
	<!-- 주문자명: input -->
	<!-- method="post" -->
	<form action="step-6.jsp" method="post"></form>
	<form action="step-6.jsp">
		<h3>주문자명: <input type="text" name="customer"></h3>
		<input type ="checkbox" name="menu" value="김치찌개"> 김치찌개<br>
		<input type ="checkbox" name="menu" value="된장찌개"> 된장찌개<br>
		<input type ="checkbox" name="menu" value="순두부찌개"> 순두부찌개<br>
		<input type ="checkbox" name="menu" value="갈치구이"> 갈치구이<br>
		<input type ="checkbox" name="menu" value="고등어구이"> 고등어구이<br>
		<button type="submit">step-6.jsp로 전송</button>
	</form>
	<hr>
	<!-- request 객체는 보내는 대상 jsp에서만 사용 가능 -->
	<c:forEach items="${list }" var="c" varStatus="i">
		<h3>${i.count }. ${c } => toString</h3>
	</c:forEach>
</body>
</html>