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
<th>제목</th>
<th>내용</th>
</tr>
<tbody id="tBody">
</tbody>
</table>
<script>
var board1 = {
		biNum : 1,
		biTitle : 'TEST',
		biContent : 'ㅎㅇ'
}
var board2 = {
		biNum : 2,
		biTitle : '별 하나에',
		biContent : '별 하나에'
}
var board3 = {
		biNum : 3,
		biTitle : 'ezen',
		biContent : 'ezen'
}
var board4 = {
		biNum : 4,
		biTitle : 'r',
		biContent : 's'
}
var boards = [board1,board2,board3,board4];
var html = '';
for(var i=0;i<boards.length;i++){
	const board = boards[i];
	html += '<tr>';
	html += '<td>' + board.biNum + '</td>';
	html += '<td>' + board.biTitle + '</td>';
	html += '<td>' + board.biContent + '</td>';
	html += '</tr>';
}
document.getElementById('tBody').innerHTML = html;
</script>
</body>
</html>