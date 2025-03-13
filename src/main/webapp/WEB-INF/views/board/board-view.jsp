<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(request.getAttribute("board")==null){
	out.println("존재하지 않는 게시판입니다.");
	out.println("<a href='/board/board-list'>돌아가기</a>");
}else{
%>
<form action="/board/delete" method="POST">
<input type="hidden" name="biNum" value="${board.biNum}">
<table border="1">
	<tr>
		<th>번호</th>
		<td>${board.biNum}</td>
	</tr>
	<tr>
		<th>제목</th>
		<td>${board.biTitle}</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>${board.biContent}</td>
	</tr>
	<tr>
		<th>유저넘버</th>
		<td>${board.uiNum}</td>
	</tr>
	<tr>
	<th colspan="2">
	<a href="/board/board-update?biNum=${board.biNum}"><button type="button">수정</button></a>
	<button>삭제</button> <a href="/board/board-list"><button type="button">돌아가기</button></a>
	</tr>
</table>
</form>
<%
}
%>
</body>
</html>