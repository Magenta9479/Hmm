<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Hmm | 전 세계의 개발자들을 널리 이롭게 하리라.</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Pacifico"
	rel="stylesheet">
<link href="resources/css/header.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 로그인 모달 -->
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
						<form action="login.do" method="POST">
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
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">Hmm</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="#"><span
							class="glyphicon glyphicon-menu-hamburger"
							style="cursor: pointer" onclick="openNav()"></span></a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li data-toggle="modal" data-target="#myModal"><a> <span
							class="glyphicon glyphicon-log-in"></span> 로그인
					</a></li>
					<li><a href="#"> <span class="glyphicon glyphicon-user"></span>
							회원가입
					</a></li>
				</ul>
			</div>
		</div>
	</nav>



	<div id="mySidenav" class="sidenav">
	  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
	  <a href="#">아무말대잔치</a>
	  <a href="#">프로젝트게시판</a>
	  <a href="#">기업게시판</a>
	  <a href="#">신기술게시판</a>
		<a href="#">Q&A</a>
	</div>


	<script>
		function openNav() {
			document.getElementById("mySidenav").style.width = "250px";
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
		}
	</script>


</body>
</html>
