<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력</title>
</head>
<body>
<div id="gugu"></div>
<script>
	var guguDiv = document.getElementById('gugu');
	var html = '<table border="1">';
	for(var i=1; i<=9; i++){
		html += '<tr>';
		for(var j=1; j<=9; j++){
			html += '<td>' + i + 'x' + j + ' = ' + (i*j) + '</td>';
		}
		html += '</tr>';
	}
	html += '</table>';
	gugu.innerHTML = html;
</script>
</body>
</html>
