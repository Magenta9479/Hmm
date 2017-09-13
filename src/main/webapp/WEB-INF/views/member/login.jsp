<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="resources/css/login.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- 로그인 모달 -->
<div class="container">

	<div id="loginModal" class="modal">

		<div class="container">
			<div class="modal-content animate">
				<div class="modal-header">
					<h4 class="modal-title">로그인</h4>
				</div>
				<div class="modal-body">
					<input type="text" name="id" placeholder="아이디를 입력해 주세요" required>
					<input type="password" name="password" placeholder="비밀번호를 입력해 주세요"
						required onkeydown='javascript:onEnterSubmit()'>
					<button type="button"
						style="color: white; background-color: #002F2F;"
						onclick="onSubmit()">로그인</button>
					<br> <br> <input type="checkbox" checked="checked">아이디
					기억하기
				</div>
				<div class="modal-footer">
					<span class="psw" style="float: left">혹시 <a href="#">비밀번호</a>를
						잊으셨나요?
					</span>
					<button type="button" class="cancelbtn" data-dismiss="modal">창
						닫기</button>

				</div>

			</div>
		</div>
	</div>
</div>

<!-- 로그인 모달 -->

<script type="text/javascript">
	count = 0;
	function onEnterSubmit() {
		var keyCode = window.event.keyCode;
		if (keyCode == 13) {
			onSubmit();
		}
	}

	function onSubmit() {
		var member = {
			"id" : $('input[name=id]').val(),
			"password" : $('input[name=password]').val()
		}

		$.ajax({
			type : "POST",
			url : "login.do",
			data : member,
			dataType : "text",
			success : function(rData, textStatus, xhr) {
				var chkRst = rData;
				if (chkRst == "true") {
					location.replace("/hmm");
				} else {
					count = count + 1;
					alert("아이디/패스워드를 확인해 주세요!!" + count);
					$('input[name=id]').val('');
					$('input[name=password]').val('');
				}
			},
			error : function() {
				alert("로그인 실패!!");
			}
		});

	}
	// Get the modal
	var modal = document.getElementById('loginModal');

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
</script>
