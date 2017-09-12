<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link href="resources/css/login.css" rel="stylesheet" type="text/css">
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
			<body>
				<!-- 로그인 모달 -->
				<div class="container">

					<div id="loginModal" class="modal">

						<div class="modal-content animate" action="login.do" method="POST" name="loginForm">


								<div class="modal-header" style="background-color: silver;">
									<h4 class="modal-title">로그인</h4>
								</div>
								<div class="modal-body">
								<input type="text" name="id" placeholder="아이디를 입력해 주세요" required>
									<input type="password" name="password" placeholder="비밀번호를 입력해 주세요" required>
										<button type="submit" style="color : white">로그인</button>
										<br>
											<br>
												<input type="checkbox" checked="checked">아이디 기억하기

													<span class="psw">혹시
														<a href="#">비밀번호</a>를 잊으셨나요?
													</span>
												</div>
												<div class="modal-footer" style="background-color: silver;">
													<button type="button" class="cancelbtn" data-dismiss="modal">창 닫기</button>
												</div>



									</div>
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
</body>
