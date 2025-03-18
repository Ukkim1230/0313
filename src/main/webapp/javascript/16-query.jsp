<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="text" id="id1" name="id" value="id1"><br>
<input type="text" id="id2" name="id" value="id2"><br>
<script>
var id = document.getElementById('id1');
var ids= document.getElementsByname('id');
var tags = document.getElementByTagName('input');

var id = document.querySelector('#id1'); //#은 아이디
var ids = document.querySelectorALL('[name=id]'); //[]은 어트리뷰트
var tags = document.querySelectorALL('input'); //
</script>
</body>
</html>