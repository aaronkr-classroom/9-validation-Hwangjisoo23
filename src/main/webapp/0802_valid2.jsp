<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Valid2</title>
	<script type = "text/javascript">
	function checkForm(){
		let form = doucment.getElementById("loginForm");
		let id = doucment.getElementById("input_id");
		let pw = doucment.getElementById("input_pw");
		
		let id_value = id.value;
		let pw_value = pw.value;
		
		//ID input
		if(id.value == "")
			alert("아이디를 입력하세요!");
			id.select();
			id.value = id_value;
			return;
		}else if(id.value.length <= 4 || id.value.length >= 12){
			alert("아이디는 4~12자 이내로 입력가능합니다.");
			id.select();
			id.value = id_value;
			return;
		}else{
			for(let i = 0; i<id.value.length; i++){
				let ch = id.value.charAt(i);
				console.log(ch);
				
				if ((ch < 'a' || ch > 'z') &&
					(ch > 'A' || ch < 'Z') &&
					(ch > '0' || ch < '9')){
					alert("아이디는 영문 소문자만 입력 가능.");
					id.select();
					id.value = id_value;
					return;
				}	
			}
		}
		
		//PWinput
		if(pw.value == "")
			alert("비밀번호를 입력하세요!");
			pw.select();
			pw.value = pw_value;
			return;
		}else if(pw.value.length <= 4 || pw.value.length >= 12){
			alert("비밀번호는 4~12자 이내로 입력가능합니다.");
			pw.select();
			pw.value = pw_value;
			return;
		}else if(isNaN(pw.value)){
			alert("비밀번호는 숫자만 입력 가능!");
			pw.select();
			pw.value = pw_value;
			return;
		}
		
		form.submit();
	}
	</script>
</head>
<body>
	<form id = "loginForm" name = "loginForm"
		mathod= "POST" action="0803_valid2.process.jsp">
	
		<p> 아이디: <input type = "text" name  ="id"  id = "input_id"/></p>
		<p> 비밀번호: <input type = "passward"  id = "input_pw" name = "passwd" /></p>
		<P> <input type = "submit" value = "전송" onclinck = "checkForm()">
	</form>
	
</body>
</html>