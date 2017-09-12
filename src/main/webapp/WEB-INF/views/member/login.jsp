<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/aj
	ax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="resources/css/login.css" rel="stylesheet" type="text/css">
	<!-- 로그인 모달 -->
	<div class="container">

		<div id="loginModal" class="modal">

			<form class="modal-content animate" action="login.do" method="POST" name="loginForm">

					<span data-dismiss="modal" class="close" title="Close Modal">&times;</span>

					<div class="container">
						<label>
							<b>아이디</b>
						</label><br>
						<input type="text" name="id" placeholder="아이디를 입력해 주세요" required><br>
								<label>
									<b>비밀번호</b>
								</label><br>
								<input type="password" name="password" placeholder="비밀번호를 입력해 주세요" required>
									<button type="submit">로그인</button><br>

									<input type="checkbox" checked="checked">아이디 기억하기</div>

									<div class="container">
										<button type="button" data-dismiss="modal" class="cancelbtn">창닫기</button>
										<span class="psw">혹시
											<a href="#">비밀번호</a>를 잊으셨나요?
										</span>
									</div>
							</form>
						</div>

					</div>

					<!-- 로그인 모달 -->

					<script>
						// Get the modal
						var modal = document.getElementById('loginModal');

						// When the user clicks anywhere outside of the modal, close it
						window.onclick = function (event) {
							if (event.target == modal) {
								modal.style.display = "none";
							}
						}
					</script>
