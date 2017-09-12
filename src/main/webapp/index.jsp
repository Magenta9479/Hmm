<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="org.springframework.ui.Model"%>
<c:if test="${list eq null}">
	<script>
		window.location.href = "boardLists.do?dis=0";
	</script>
</c:if>

<!DOCTYPE html>
<html>
<head>

<title>Hmm | 전 세계의 개발자들을 널리 fuck 하리라.</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="resources/css/index.css" rel="stylesheet" type="text/css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<%@ include file="/header.jsp"%>

<body>

	<!-- thumbnail 클래스를 부여해 이미지 크롭 및 사이즈 조작 -->
	<div class="thumbnail">
		<img src="https://static.pexels.com/photos/7114/laptop-mobile.jpg"
			alt="Cover Photo" />
	</div>

	<!-- 게시판 영역 -->
	<div class="board">
		<!-- 검색창, 검색 정렬들의 패널 -->
		<div class="panel panel-default">
			<div class="panel-body">

				<!-- 패널의 오른쪽, 정렬창 -->
				<div class="pull-right">

					<div class="sort_options">

						<select class="selectpicker">
						  <option>최신순</option>
						  <option>인기높은순</option>
						  <option>김말순</option>
						</select>

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
					<tbody>
						<c:set var="num" value="1" />
						<c:forEach var="l" items="${list }">

							<tr onclick="location.href='boardOne.do?bcode=${l.bcode}'"
								style="cursor: pointer;">

								<td>${num }</td>
								<c:set var="num" value="${num+1 }" />
								<td>${l.title }</td>
								<td>${l.code.name}</td>
								<td>
									<div class="profile">
										<a href="profile.jsp"> <img class="img-circle"
											src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" />
										</a> ${l.writerid }
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

</body>

<%@ include file="/footer.jsp"%>
</html>
