<%@page import="com.kh.hmm.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<!-- 회원수정 모달 -->
<c:set var="job" value="${member.job }" scope="session" />
<c:set var="photo" value="${member.photo }" scope="session" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(function() {
		var job = "${job}";
		$('#updateJob option').each(function() {
			if ($(this).val() == job)
				$(this).attr('selected', 'selected');
		});

		$("#imgUpload").on('change', function() {
			readURL(this);
		});

	});
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#profileImg').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}

	function validationDate() {
		if ($('#password').val() == $('#passwordConfirm').val())
			$('form').submit();
		else
			alert("비밀번호를 한번 더 확인해주세요!!");
	}
</script>
</head>
<body>
	<div class="container">
		<!-- Modal -->
		<div class="modal fade" id="updateModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">프로필 수정</h4>
					</div>
					<div class="modal-body">
						<form action="uploadFile.do" method="POST"
							enctype="multipart/form-data">
							<img id="profileImg"
								src="resources/img/${member.id}/${member.id}.jpg"
								alt="profileImg"
								style="border: 1px solid black; widgh: 150px; height: 150px;" /><br>
							<input type='file' id="imgUpload" name="photo" id="photo" /> <br />
							<input type="submit" value="파일 업로드">
						</form>
						<hr />
						<form action="update.do" method="POST">
							<input type="text" name="id" placeholder="아이디"
								value="${member.id}" readonly><br> <input
								type="password" name="password" placeholder="비밀번호"
								value="${member.password}" required id="password"><br>
							<input type="password" name="passwordConfirm"
								placeholder="비밀번호 확인" value="${member.password}" required
								id="passwordConfirm"><br> <input type="email"
								name="email" placeholder="이메일" value="${member.email}" required /><br>
							<select name="job" id="updateJob">
								<option value="student">학생</option>
								<option value="business">회사원</option>
								<option value="jobless">무직</option>
								<option value="etc">기타</option>
							</select> <br> <label>메달 갯수 : ${member.medal}</label> <br> <label>경험치
								: ${member.exp}</label> <br> <label>남은 캐시 : ${member.chash}</label>
							<br> <label>남은 따루 : ${member.ddaru}</label> <br> <label>가입일
								: ${member.enrolldate}</label> <br> <input type="button"
								value="수정하기" onclick="validationDate()"> &nbsp;&nbsp; <input
								type="reset" value="취소하기">
						</form>
					</div>
				</div>

			</div>
		</div>

	</div>
	<!-- 회원수정 모달 -->
</body>
</html>