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
<th>나이</th>
<th>아이디</th>
<th>비밀번호</th>
<th>핸드폰번호</th>
<th>주소</th>
<th>성별</th>
</tr>
<tbody id ="tBody">
</tbody>
</table>
<script>
var user1 = {
		uiNum : 1,
		uiName : '김',
		uiAge : 20,
		uiId : 'k',
		uiPwd : 1313,
		uiPhone : 0100000,
		uiAddress : '하남',
		uiTrans : '남'
}
var user2 = {
		uiNum : 2,
		uiName : '이',
		uiAge : 25,
		uiId : 'l',
		uiPwd : 1313,
		uiPhone : 0100000,
		uiAddress : '하남',
		uiTrans : '남'
}
var user3 = {
		uiNum : 3,
		uiName : '김',
		uiAge : 20,
		uiId : 'k',
		uiPwd : 1313,
		uiPhone : 0100000,
		uiAddress : '하남',
		uiTrans : '남'
}
var user4 = {
		uiNum : 4,
		uiName : '김',
		uiAge : 20,
		uiId : 'k',
		uiPwd : 1313,
		uiPhone : 0100000,
		uiAddress : '하남',
		uiTrans : '남'
}
var users =[user1,user2,user3,user4];
var html = '';
for(var i=0;i<users.length;i++){
	const user = users[i];
	html += '<tr>';
	html += '<td>' + user.uiNum + '</td>';
	html += '<td>' + user.uiName + '</td>';
	html += '<td>' + user.uiAge + '</td>';
	html += '<td>' + user.uiId + '</td>';
	html += '<td>' + user.uiPwd + '</td>';
	html += '<td>' + user.uiPhone + '</td>';
	html += '<td>' + user.uiAddress + '</td>';
	html += '<td>' + user.uiTrans + '</td>';
	html += '</tr>';
}
document.getElementById('tBody').innerHTML = html;
</script>
</body>
</html>