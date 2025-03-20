<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   <%--page request session application --%>
   <c:if test="${empty sessionScope.user}">
   <script>
   		alert('로그인이 필요한 페이지 입니다.');
   		location.href='/user/login';
   </script>
   로그인이 안되었군요
   </c:if>
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
			<th>작성자</th>
			<th>게시일</th>
		</tr>
		<c:forEach items="${boards}" var="board">
			<tr>
				<td>${board.biNum}</td>
				<td><a href="/board/board-view?biNum=${board.biNum}">${board.biTitle}</a></td>
				<td>${board.uiName}</td>
				<fmt:parseDate value="${board.credat}" var="credat" pattern="yyyyMMdd"/>
				<td><fmt:formatDate value="${credat}" pattern="yyyy-MM-dd"/></td>
				<!--<td><fmt:formatDate value="${credat}" pattern="yyyy년-MM월-dd일"/></td>-->
			</tr>
		</c:forEach>
	</table>
</body>
</html>