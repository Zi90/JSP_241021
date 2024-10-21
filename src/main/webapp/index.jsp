<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello JSP World~!!</h1>
	<!-- 스크립틀릿 방식 -->
	<% for (int i = 0; i < 10; i++){ %>
		<h1><%= i %></h1>
	<% } %>
	
	<a href="step-1.jsp?name=홍길동&age=12"> step-1.jsp로 이동</a>
	<a href="step-2.jsp?name=귤&addr=제주"> step-2.jsp로 이동</a>
</body>
</html>