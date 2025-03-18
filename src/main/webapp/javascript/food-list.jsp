<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border ="1">
<tr>
<th>번호</th>
<th>음식</th>
<th>가격</th>
</tr>
<tbody id="tBody">
</tbody>
</table>
<script>
var food1 = {
	fiNum : 2,
	fiName : '라면',
	fiPrice : 4000,
	uiNum : 1
}
var food2 = {
		fiNum : 3,
		fiName : '떡볶이	',
		fiPrice : 20000,
		uiNum : 1
	}
	
var food3 = {
		fiNum : 4,
		fiName : '짜계치',
		fiPrice : 4300,
		uiNum : 1
	}
	
var foods = [food1, food2, food3];
var html = '';
for(var i=0;i<foods.length;i++){
	const food = foods[i];
	html += '<tr>';
	html += '<td>' + food.fiNum + '</td>';
	html += '<td>' + food.fiName + '</td>';
	html += '<td>' + food.fiPrice + '</td>';
	html += '</tr>';
}
document.getElementById('tBody').innerHTML = html;
</script>
</body>
</html>