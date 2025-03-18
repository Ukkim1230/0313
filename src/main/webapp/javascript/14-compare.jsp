<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
var n1 = 1;
var n2 = '1';
document.write((n1==n2) + '<br>'); //true
document.write((n1===n2) + '<br>'); //false

document.write((n1!=n2) + '<br>'); //false
document.write((n1!==n2) + '<br>'); //true

n1 = 2;
n2 = '11';
n2 = parserInt(n2);
document.write((n1<n2) + '<br>'); //true
document.write((n1<=n2) + '<br>'); //true
</script>
</body>
</html>