<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="resources/css/insertMember.css" rel="stylesheet"
	type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
	$(function() {
		$('#emailCode').hide();
		$('#codeCheck').hide();
		
		$('#emailCheck').click(function(){
			$('#emailCode').toggle('slow');
			$('#codeCheck').toggle('slow');
			$.ajax({
				type : "POST",
				url : "sendMail.do",
				data : "email=" + $('#input[name=email]'),
				dataType : "text",
				success : function(rData) {
					if (rData) {
						var SetTime = 180;		// 최초 설정 시간(기본 : 초)
						m = Math.floor(SetTime / 60) + "분 " + (SetTime % 60) + "초";	// 남은 시간 계산
						
						var msg = "현재 남은 시간은 <font color='red'>" + m + "</font> 입니다.";
						
						document.all.ViewTimer.innerHTML = msg;		// div 영역에 보여줌 
								
						SetTime--;					// 1초씩 감소
						$('#insertChk').val("Y");
					} else {
						alert("아이디 중복 입니다!!");
					}
				},
				error : function() {
					alert("아이디 중복 확인 실패!!");
				}
			});
		});
		
		$('#codeCheck').click(function(){
			
		});
		
	});
	function validationCheck() {
		if (($('#password').val() != '' || $('#passwordConfirm').val() != '')
				&& $('#password').val() == $('#passwordConfirm').val())
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
		var pattern = /^[A-Za-z0-9]{6,20}$/;
		if (!pattern.test(id)) {
			alert('영문대/소문자, 숫자 합쳐서 6~20자리로 입력해 주세요.');
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
							type="text" name="id" placeholder="아이디	ex) 영문 대소문자 + 숫자, 최소 6 자리에서 20자리까지 가능." id="insertID" required>
						&nbsp; &nbsp;
						<button type="submit" style="color : white" onclick="chkDup()">중복확인</button><br>
						<input type="password" name="password" placeholder="비밀번호" required
							id="password"><br> <input type="password"
							name="passwordConfirm" placeholder="비밀번호 확인" required
							id="passwordConfirm"><br> <input type="email"
							name="email" placeholder="이메일" required />
							<button id="emailCheck" style="color : white">이메일 인증</button>
							<br>
							<input type="text" id="emailCode"><br>
							<button id="codeCheck">인증확인</button>
							<select	name="job">
							<option value="student">학생</option>
							<option value="business">회사원</option>
							<option value="jobless">무직</option>
							<option value="etc">기타</option>
						</select> <br> &nbsp;&nbsp;
							<button type="submit" style="color : white" onclick="validationCheck()">회원가입</button>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="cancelbtn" data-dismiss="modal">창 닫기</button>
				</div>
			</div>

		</div>

	</div>
	<!-- 회원가입 모달 -->

	<script>
		// Get the modal
		var modal = document.getElementById('insertModal');

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>
</body>
