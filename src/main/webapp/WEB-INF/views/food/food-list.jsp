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
<form method="GET" action="food/food-list">
<a href="/food/food-insert">음식등록</a>
<table border="1">
	<tr>
		<th>번호</th>
		<th>음식명</th>
		<th>가격</th>
		<th>등록일</th>
	</tr>
	<c:forEach items="${foods}" var="food">
	<tr>
		<td>${food.fiNum}</td>
		<td><a href="/food/food-view?fiNum=${food.fiNum}">${food.fiName}</a></td>
		<td>${food.fiPrice}</td>
		<fmt:parseDate value="${food.CREDAT}" var="credat" pattern="yyyyMMdd"/>
		<td><fmt:formatDate value="${CREDAT}" pattern="yyyy-MM-dd"/></td>
		</tr>
	</c:forEach>
</table>
</form>
</body>
</html>