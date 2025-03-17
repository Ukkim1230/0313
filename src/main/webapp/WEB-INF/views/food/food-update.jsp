<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/food/insert" method="POST">
		<input type="hidden" name="uiNum" value="${user.uiNum}">
		<input type="hidden" name="fiNum" value="${food.fiNum}">
		<talbe border="1">
		<tr>
			<th>음식</th>
			<td><input type="text" name="fiName" value="${food.fiName}"></td>
		</tr>
		<tr>
			<th>가격</th>
			<td><input type="text" name="fiPrice" value="${food.fiPrice}"></td>
		</tr>
		<tr>
			<th colspan="2">
				<button>등록</button>
			</th>
		</tr>
		</talbe>
</form>
</body>
</html>