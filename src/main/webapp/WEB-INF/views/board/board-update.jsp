<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/board/update" method="POST">
	<input type="hidden" name="biNum" value="${board.biNum}">
	<input type="text" name="biTitle" placeholder="제목" value="${board.biTitle}"><br>
	<input type="text" name="uiNum" placeholder="유저넘버" value="${board.uiNum}"><br>
	<textarea placeholder="내용" name="biContent">${board.biContent}</textarea><br>
	<button>수정</button>
	<button type="button" onclick="location.href='/board/board-view?biNum=${board.biNum}'">돌아가기</button>
	</form>
</body>
</html>