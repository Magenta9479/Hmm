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
					<li><div class="dropdown">
							<button id="nav_menu" class="btn btn-primary dropdown-toggle"
								type="button" data-toggle="dropdown">
								<span class="glyphicon glyphicon-menu-hamburger"></span>
							</button>
							<ul class="dropdown-menu">
								<li class="dropdown-header">카테고리</li>
								<li><a href="#">아무말 대잔치</a></li>
								<li><a href="#">프로젝트 게시판</a></li>
								<li><a href="#">기업 게시판</a></li>
								<li><a href="#">신기술 게시판</a></li>
								<li><a href="#">Q&A</a></li>
								<li class="divider"></li>
								<li class="dropdown-header"></li>
								<li><a href="#">FAQ</a></li>
								<li><a href="#">About Us</a></li>
							</ul>
						</div></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"> <span class="glyphicon glyphicon-log-in"></span>
							로그인
					</a></li>
					<li><a href="#"> <span class="glyphicon glyphicon-user"></span>
							회원가입
					</a></li>
				</ul>
			</div>
		</div>
	</nav>

</body>
</html>
