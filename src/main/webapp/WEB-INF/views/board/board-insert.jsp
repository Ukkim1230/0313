<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 등록</title>
</head>
<body>
	<form action="/board/insert" method="POST">
	<input type="text" name="biTitle" placeholder="제목"><br>
	<input type="text" name="uiNum" placeholder="유저넘버"><br>
	<textarea placeholder="내용" name="biContent"></textarea><br>
	<button>등록</button> <button type="button" onclick="location.href='/board/board-list'">돌아가기</button>
	</form>
</body>
</html>