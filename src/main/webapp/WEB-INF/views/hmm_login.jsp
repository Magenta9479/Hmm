<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>로그인</title>
</head>

<body>
	<%-- <h1>Spring test Project : third</h1>
	<c:if test="${empty member}">
		<form action="login.do" method="post">
			아이디 : <input type="text" name="id"><br> 암 호 : <input
				type="password" name="passwd"><br> <input type="submit"
				value="로그인"> &nbsp; <a href="insertMember.do">회원가입</a>
		</form>
	</c:if>
	<c:if test="${!empty member}">
		${member}
	</c:if> --%>

	<div class="container">
		<!-- Trigger the modal with a button -->
		<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
			data-target="#myModal">로그인</button>

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Hmm</h4>
					</div>
					<div class="modal-body">
						<p>Some text in the modal.</p>
						<form action="login.do" method="POST">
							<input type="text" name="id" placeholder="아이디를 입력해 주세요"><br> 
							<input type="password" name="passwd" placeholder="비밀번호를 입력해 주세요"> <br> 
							<input type="submit" value="로그인">
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>

	</div>
</body>

</html>
