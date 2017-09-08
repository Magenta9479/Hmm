<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/aj
	ax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 로그인 모달 -->
<div class="container">
	<!-- Modal -->
	<div class="modal fade" id="loginModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">로그인</h4>
				</div>
				<div class="modal-body">
					<form action="login.do" method="POST" name="loginForm">
						<input type="text" name="id" placeholder="아이디를 입력해 주세요"><br>
						<input type="password" name="password" placeholder="비밀번호를 입력해 주세요">
						<br> <input type="submit" value="로그인">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

</div>
<!-- 로그인 모달 -->