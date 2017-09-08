<%@page import="com.kh.hmm.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 회원수정 모달 -->
<c:set var="job" value="${sessionScope.member.job }" />
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

		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#profileImg').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}
	});
</script>
<div class="container">
	<!-- Modal -->
	<div class="modal fade" id="updateModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">프로필 수정</h4>
				</div>
				<div class="modal-body">
					<form action="update.do" method="POST"
						enctype="multipart/form-data" runat="server">
						<img id="profileImg" src="#" alt="profileImg" style="border:1px solid black; widgh:150px; height:150px;"/><br> <input
							type='file' id="imgUpload" name="photo" />
						<hr />
						<input type="text" name="id" placeholder="아이디"
							value="${member.id}" readonly><br> <input
							type="password" name="password" placeholder="비밀번호"
							value="${member.password}"><br> <input
							type="password" name="passwordConfirm" placeholder="비밀번호 확인"
							value="${member.password}"><br> <input type="text"
							name="nickname" placeholder="닉네임" value="${member.nickname}" /><br>
						<input type="email" name="email" placeholder="이메일"
							value="${member.email}" /><br> <select name="job"
							id="updateJob">
							<option value="student">학생</option>
							<option value="business">회사원</option>
							<option value="jobless">무직</option>
							<option value="etc">기타</option>
						</select> <br> <label>메달 갯수 : ${member.medal}</label> <br> <label>경험치
							: ${member.exp}</label> <br> <label>남은 캐시 : ${member.chash}</label>
						<br> <label>남은 따루 : ${member.ddaru}</label> <br> <label>가입일
							: ${member.enrolldate}</label> <br> <input type="submit"
							value="수정하기"> &nbsp;&nbsp; <input type="reset"
							value="취소하기">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

</div>
<!-- 회원수정 모달 -->