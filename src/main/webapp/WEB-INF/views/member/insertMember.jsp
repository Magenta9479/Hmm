<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="resources/css/insertMember.css" rel="stylesheet" type="text/css">
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
	function validationCheck() {
		if ($('#password').val() == $('#passwordConfirm').val())
			$('form').submit();
		else
			alert("비밀번호를 한번 더 확인해주세요!!");
	}
	function chkDup() {

		var id = $('#insertID').val();
		if (id == '') {
			alert('ID를 입력해주세요.');
			return;
		}
		/* var pattern = /^[A-Za-z0-9]{0,4}$/; */
		var pattern = /^[A-Za-z0-9]$/;
		if (!pattern.test(id)) {
			alert('영문대,소문자로 입력해 주세요.');
			return;
		}

		$.ajax({
			type : "POST",
			url : "idCheck.do",
			data : "id=" + id,
			dataType : "text",
			success : function(rData, textStatus, xhr) {
				var chkRst = rData;

				if (chkRst == 1) {
					alert("등록 가능 합니다!!");
					$('#insertChk').val("Y");
				} else {
					alert("아이디 중복 입니다!!");
				}
			},
			error : function() {
				alert("아이디 중복 확인 실패!!");
			}
		});
	}
</script>
<!-- 회원가입 모달 -->
<body>
<div class="container">

	<!-- Modal -->
	<div class="modal" id="insertModal" role="dialog">

			<!-- Modal content-->
			<div class="modal-content animate">
				<div class="modal-header">
					<h4 class="modal-title">회원가입</h4>
				</div>
				<div class="modal-body">
					<form action="enroll.do" method="POST">
						<input type="hidden" value="N" id="insertChk" /> <input
							type="text" name="id" placeholder="아이디" id="insertID" required>
						&nbsp; &nbsp; <input type="button" value="중복확인" onclick="chkDup()"><br>
						<input type="password" name="password" placeholder="비밀번호" required
							id="password"><br> <input type="password"
							name="passwordConfirm" placeholder="비밀번호 확인" required
							id="passwordConfirm"><br> <input type="email"
							name="email" placeholder="이메일" required /><br> <select
							name="job">
							<option value="student">학생</option>
							<option value="business">회사원</option>
							<option value="jobless">무직</option>
							<option value="etc">기타</option>
						</select> <br> <input type="button" value="회원가입"
							onclick="validationCheck()"> &nbsp;&nbsp; <input
							type="reset" value="취소하기">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">창 닫기</button>
				</div>
			</div>

	</div>

</div>
<!-- 회원가입 모달 -->

<script>
	// Get the modal
	var modal = document.getElementById('insertModal');

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function (event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
</script>
</body>
