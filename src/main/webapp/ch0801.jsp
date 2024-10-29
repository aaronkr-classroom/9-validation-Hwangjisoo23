<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Validation 1</title>
	<script type = "text/javascript">
		// 변수를 선언할 떄 키워드 3가지 종료 있다.
		//var 변수 이름; 오래된 예약어(주의)
		//let 변수 이름; ECMAScript 5부터 기본 예약어
		//const 변수 이름; 상수(변경하지 않는 것)
		function checkForm(){
			let id = document.getElementById("input_id");
			let pw = document.getElementById("imput_pw");
			
			alert("아이디: " + id + "\n비밀번호: " + pw);
			console.log("ID", id);
			
		}
	</script>
</head>
<body>
	<form id = "loginForm" name = "loginForm">
		<p> 아이디: <input type = "text" name  ="id"  id = "input_id"/></p>
		<p> 비밀번호: <input type = "passward"  id = "input_pw" name = "passwd" /></p>
		<P> <input type = "sumit" value = "전송" onclinck = "checkForm()">
	</form>
	
</body>
</html>