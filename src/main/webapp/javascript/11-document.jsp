<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="test">안녕</div>
<script>
	var test = document.getElementById('test');
	var html = '<table border="1">';
	var cnt = 1;
	for(var i=1; i<=3; i++){
		html += '<tr>';
		for(var j=1;j<=3;j++){
			html += '<td>'+ cnt++ + '</td>'
		}
		html += '</tr>';
	}
	html += '</table>';
	test.innerHTML = html;	
</script>
</body>
</html>