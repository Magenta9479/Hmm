<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 회원가입 모달 -->
<div class="container">

	<!-- Modal -->
	<div class="modal fade" id="insertModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">회원가입</h4>
				</div>
				<div class="modal-body">
					<form action="login.do" method="POST">
						<input type="text" name="id" placeholder="아이디"><br> <input
							type="password" name="password" placeholder="비밀번호"><br>
						<input type="password" name="passwordConfirm"
							placeholder="비밀번호 확인"><br> <input type="text"
							name="nickname" placeholder="닉네임" /><br> 
							<input type="email" name="email" placeholder="이메일" /><br> 
						<select>
							<option value="student">학생</option>
							<option value="business">회사원</option>
							<option value="jobless">무직</option>
							<option value="etc">기타</option>
						</select> 
						<input type="submit" value="회원가입"> &nbsp;&nbsp;
						<input type="reset" value="취소하기">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

</div>
<!-- 회원가입 모달 -->