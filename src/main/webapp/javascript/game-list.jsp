<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<th>번호</th>
<th>이름</th>
<th>가격</th>
<th>장르</th>
<th>설명</th>
</tr>
<tbody id ="tBody">
</tbody>
</table>
<script>
var game1 = {
		giNum : 1,
		giName : 'GTA',
		giPrice : 400,
		giGenre : '비디오',
		giDesc : '자유도'
}
var game2 = {
		giNum : 2,
		giName : '배틀그라운드',
		giPrice : 28000,
		giGenre : '배틀로얄',
		giDesc : '개꿀'
}
var game3 = {
		giNum : 3,
		giName : 'fc온라인',
		giPrice : 0,
		giGenre : '스포츠',
		giDesc : '꿀잼'
}
var games = [game1,game2,game3];
var html = '';
for(var i=0;i<games.length;i++){
	const game = games[i];
	html += '<tr>';
	html += '<td>' + game.giNum + '</td>';
	html += '<td>' + game.giName + '</td>';
	html += '<td>' + game.giPrice + '</td>';
	html += '<td>' + game.giGenre + '</td>';
	html += '<td>' + game.giDesc + '</td>';
	html += '</tr>';
}
document.getElementById('tBody').innerHTML = html;
</script>
</body>
</html>