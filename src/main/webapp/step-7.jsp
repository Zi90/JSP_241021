<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "jstl_study.Student" %>
    <%@ page import = "java.util.ArrayList" %>
    <%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		ArrayList<Student> list = new ArrayList<>();
		list.add(new Student(1, "신짱구", "010-1111-2222", "이젠1", 5));
		list.add(new Student(2, "한유리", "010-3333-4444", "이젠2", 5));
		list.add(new Student(3, "김철수", "010-5555-6666", "이젠3", 5));
		list.add(new Student(4, "이훈이", "010-7777-8888", "이젠4", 5));
		list.add(new Student(5, "맹구", "010-9999-0000", "이젠5", 5));
		request.setAttribute("sList", list);
	%>
	<c:forEach items="${requestScope.sList }" var="s" varStatus="i">
		<h3>${i.count }. ${s }</h3>
	</c:forEach>
</body>
</html>