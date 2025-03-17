<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<th colspan="6"><a href="/desktop/desktop-insert">게시물 등록</a></th>
	</tr>
	<tr>
		<th>번호</th>
		<th>견적명</th>
		<th>CPU</th>
		<th>RAM</th>
		<th>SSD</th>
		<th>설명</th>
	</tr>
	<c:if test="${empty desktops }">
	<tr>
		<th colspan="6">게시물이 없습니다.</th>
	</tr>
	</c:if>
	<c:forEach items="${desktops}" var="desktop">
		<tr>
			<td>${desktop.diNum}</td>
			<td><a href="/desktop/desktop-view?diNum=${desktop.diNum}">${desktop.diName}</a></td>
			<td>${desktop.ciName}</td>
			<td>${desktop.diRam}</td>
			<td>${desktop.diSsd}</td>
			<td>${desktop.diDesc}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>