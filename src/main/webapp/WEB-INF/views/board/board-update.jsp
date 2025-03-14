<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/board/insert" method="POST">
<input type="hidden" name="uiNum" value="${user.uiNum}">
<input type="hidden" name="biNum" value="${board.biNum}">
 	<table border="1">
	<tr>
		<th>제목</th>
		<td><input type="text" name="biTitle" value="${board.biTitle}"></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td>${user.uiName}</td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea name="biContent" ${board.biCotent}></textarea></td>
	</tr>
		<tr>
			<th colspan="2">
				<button>등록</button>
			</th>
		</tr>
	</table>
</form>
</body>
</html>