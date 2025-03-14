<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/food/insert" method="POST">
<input type="hidden" name="uiNum" value="${user.uiNum}">
	<table border="1">
		<tr>
			<th>음식명</th>
			<td><input type="text" name="fiName"></td>
		</tr>
		<tr>
			<th>가격</th>
			<td><input type="text" name="fiPrice"></td>
		</tr>
		<tr>
			<th colspan="2">
			<button>등록</button> <button type="button" onclick="location.href='/food/food-list'">돌아가기</button>
			</th>
		</tr>
	</table>
</form>
</body>
</html>