<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
<%
	int distri=Integer.parseInt(request.getParameter("dis").toString());
%>

<c:if test="${list eq null}">
	<script>
		window.location.href = "boardLists.do?dis=<%=distri%>";
	</script>
</c:if> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="resources/css/board.css" rel="stylesheet" type="text/css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Hmm 게시판</title>
<%@ include file="/header.jsp"%>
</head>
<body>
	<div id="empty"></div>
	<div id="board" class="board">
		<div id="writebutton">
			<button id="write" type="button" class="btn btn-primary btn-md">내
				글쓰기</button>
		</div>
		<!-- 검색창, 검색 정렬들의 패널 -->
		<div class="panel panel-default">
			<div class="panel-body">
				<!-- 패널의 왼쪽, 검색창 -->
				<div class="input-group col-md-6 pull-left">
					<input type="text" class="search-query form-control"
						placeholder="검색하기..." /> <span class="input-group-btn">
						<button id="search_icon" class="btn btn-success" type="button">
							<span class=" glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
				<!-- 패널의 오른쪽, 정렬창 -->
				<div class="pull-right">

					<div class="sort_options">

						<h3>
							최신순 <span class="glyphicon glyphicon-chevron-down"></span>
						</h3>
						&nbsp; &nbsp; &nbsp;

						<h3>
							모든 카테고리 <span class="glyphicon glyphicon-chevron-down"></span>
						</h3>
						&nbsp; &nbsp;
					</div>
				</div>
			</div>

			<!-- 게시판 테이블 -->
			<div class="table-responsive">
				<table class="table table-hover table-striped">
					<thead>
						<tr>
							<th>글번호</th>
							<th class="col-md-5">제목</th>
							<th>카테고리</th>
							<th>작성자</th>
							<th>추천수</th>
							<th>답글</th>
							<th>조회수</th>
							<th>작성일자</th>
						</tr>
					</thead>

					<c:set var="num" value="1" />

					<tbody>
						<c:forEach var="l" items="${list }">

							<tr>
								<td>${num }</td>
								<c:set var="num" value="${num+1 }" />
								<td>${l.title }</td>
								<td>${l.code.name}</td>
								<td>
									<div class="profile">
										<a href="profile.jsp"> <img class="img-circle"
											src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" /></a>
										${l.writerid }
									</div>
								</td>
								<td>${l.point.best*(5)+l.point.good*(3)+l.point.bad*(-3)+l.point.worst*(-5) }</td>
								<td>${l.isdelete}</td>
								<td>${l.point.viewnum }</td>
								<td>${l.postdate }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
<%@ include file="/footer.jsp"%>
</html>
