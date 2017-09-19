<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="resources/css/login.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script type="text/javascript">
	function idSearch() {
		var email = $('input[type=email]').val();
		if (email == '') {
			alert("이메일을 입력해 주세요!!");
			return;
		}
		$.ajax({
			type : "POST",
			url : "idSearch.do",
			data : "email=" + email,
			dataType : "text",
			success : function(rData, textStatus, xhr) {
				if (rData != "emailDup") {
					alert("이메일이 등록 되어 있지 않습니다!!");
				} else if (rData == "emailDup") {
					joinCode = rData;
					alert("아이디가 이메일로 전송 되었습니다!!");

				}
			},
			error : function() {
				alert("이메일 전송 실패!!");
			}
		});

	}
</script>
<title>아이디/패스워드 찾기</title>
</head>
<body>
	아이디 찾기
	<hr>
	이메일 :
	<input type="email">
	<br>
	<button type="button" onclick="idSearch()" id="idSearch">아이디
		찾기</button>
	<br>
	<hr>
	패스워드 찾기
	<hr>
	아이디 :
	<input type="text" name="" value="">
	<br> 이메일 :
	<input type="email" name="" value="">
	<br>
	<button type="button">패스워드 찾기</button>
</body>
</html>
