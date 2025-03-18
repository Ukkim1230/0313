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
//java array
var arr = [10] //10
document.write(arr + '<br>');
arr[arr.length] = 20; //10,20
document.write(arr + '<br>');
arr.push(30); //10,20,30
document.write(arr + '<br>');
arr.pop(); //10,20
document.write(arr + '<br>');
arr.splice(0,1);//20
document.write(arr + '<br>');
arr.unshift(10);//10,20
document.write(arr + '<br>');
arr.shift();//20
document.write(arr + '<br>');
</script>
</body>
</html>