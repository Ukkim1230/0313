<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="text" id="dan">
<button onclick="make()">생성</button>
<div id="gugudan"></div>
<script>
function make(){
	var dan = document.getElementById('dan');
	alert(dan.value);
var html = '<table border="1">';
for(var i=1; i<=dan.value;i++){
	html += '<tr>';
	for(var j=1;j<=dan.value;j++){
		html += '<td>' + i + 'x' + j + ' = ' + (i*j) + '</td>';
	}
	html += '</tr>';
}
html += '</table>';
document.getElementById('gugudan').innerHTML = html;
	//dan.value가 5라면 5단
}
</script>
</body>
</html>