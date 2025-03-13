<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="GET" action="board/board-list">
<select name="search">
	<option value="biTitle" ${param.search=="biTitle"?"selected":""}>제목</option>
	<option value="biContent" ${param.search=="biContent"?"selected":""}>내용</option>
	<option value="uiNum" ${param.search=="uiNum"?"selected":""}>유저넘버</option>
</select>
<input type="text"name="searchStr" value="${param.searchStr}"><button>검색</button>
</form>
	<a href="/board/board-insert">게시판등록</a>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>유저번호</th>
		</tr>
		<c:forEach items="${boards}" var="board">
			<tr>
				<td>${board.biNum}</td>
				<td><a href="/board/board-view?biNum=${board.biNum}">${board.biTitle}</a></td>
				<td>${board.biContent}</td>
				<td>${board.uiNum}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>