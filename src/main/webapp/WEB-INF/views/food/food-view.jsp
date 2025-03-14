<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(request.getAttribute("food")==null){
	out.println("존재하지 않는 음식입니다.");
	out.println("<a href='/food/food-list'>돌아가기</a>");
}else{
%>
<form action="/food/delete" method="POST">
<input type="hidden" name="fiNum" value="${food.fiNum}">
<table border="1">
	<tr>
		<th>번호</th>
		<td>${food.fiNum}</td>
	</tr>
	<tr>
		<th>음식명</th>
		<td>${food.fiName}</td>
	</tr>
	<tr>
		<th>가격</th>
		<td>${food.fiPrice}</td>
	</tr>
	<c:if test="${food.fiNum == food.fiNum}">
	<tr>
		<th colspan="2">
		<a href="/food/food-update?fiNum=${food.fiNum}"><button type="button">수정</button></a>
		<button>삭제</button> <a href="/food/food-list"><button type="button">돌아가기</button></a>
	</c:if>
</table>
</form>
<%
}
%>
</body>
</html>