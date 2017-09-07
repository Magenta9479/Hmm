<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Hmm | 전 세계의 개발자들을 널리 이롭게 하리라.</title>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Pacifico"
	rel="stylesheet">
<link href="resources/css/header.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/aj
	ax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<c:set var="member" value="${member}" scope="session" />

	<%@ include file="WEB-INF/views/member/login.jsp"%>
	<%@ include file="WEB-INF/views/member/insertMember.jsp"%>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">

			<div class="collapse navbar-collapse" id="myNavbar">

				<ul class="nav navbar-nav">
					<li><a id="menu" href="#"><span
							class="glyphicon glyphicon-menu-hamburger"
							style="cursor: pointer" onclick="openNav()"></span></a></li>
				</ul>
				<c:choose>
					<c:when test="${null eq member }">
						<ul class="nav navbar-nav navbar-right">
							<li data-toggle="modal" data-target="#loginModal">
							<a style="cursor: pointer">
							<span class="glyphicon glyphicon-log-in"></span> 로그인
							</a>
							</li>
							<li data-toggle="modal" data-target="#insertModal">
							<a style="cursor:pointer">
							<span class="glyphicon glyphicon-user"></span>
									회원가입
							</a>
							</li>
						</ul>
					</c:when>

					<c:when test="${null ne member }">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#"> <span class="glyphicon glyphicon-user">
										<c:out value="${member.nickname }" />
								</span>
							</a></li>
							<li data-toggle="modal" data-target="#myModal"><a
								href="logout.do"> <span class="glyphicon glyphicon-log-in"></span>
									로그아웃
							</a></li>
						</ul>
					</c:when>
				</c:choose>
			</div>
		</div>
	</nav>

	<div id="mySidenav" class="sidenav">
	  <a id="close_button" href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
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
