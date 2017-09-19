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

		<title>Hmm | 국내 최고 개발자 커뮤니티</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
			<link href="resources/css/board.css" rel="stylesheet" type="text/css">
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
				<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

				<script type="text/javascript">

					// 타자기
					window.onload = typeWriter;

					var i = 0;
					var txt = '모두가 하나되는 국내 최고 IT 커뮤니티에 여러분을 초대합니다!';
					var speed = 80;

					function typeWriter() {
						if (i < txt.length) {
							document.getElementById("demo").innerHTML += txt.charAt(i);
							i++;
							setTimeout(typeWriter, speed);
						}
					}
					
				</script>
			</head>

			<body>
				<%@ include file="/header.jsp"%>
				<div class="jumbotron jumbotron-billboard">
					<div class="img"></div>
					<div class="container">
						<h1>Hmm...!</h1>
						<p id="demo"></p>
					</div>
				</div>

			</div>

			<!-- 게시판 영역 -->
			<div class="board">
				<!-- 검색창, 검색 정렬들의 패널 -->
				<div class="panel panel-default">

					<div class="panel-body">
						<div class="panel pull-left">
							<form>
								<div class="input-group">
									<input type="text" class="form-control" size="50" placeholder="검색어를 입력하세요...">
										<div class="input-group-btn">
											<button type="button" class="btn btn-success">검색</button>
										</div>
									</div>
								</form>
							</div>
							<div class="panel pull-right">
								<div class="sort_options">

									<select class="selectpicker">
										<option>최신순</option>
										<option>인기높은순</option>
										<option>김말순</option>
										<option>떡튀순</option>
									</select>

								</div>
							</div>
						</div>
						<button onclick="location.href='boardCode.do'">SSIPPAL</button>
						<button onclick="location.href='itemLists.do'">GASSAKKI</button>
						 <button type="button" class="btn btn-info btn-lg btnModal" data-toggle="modal" data-target="#myModal">글제목</button>
						<!-- 게시판 테이블 -->
						<div class="table-responsive">
							<table id="myTable" class="table table-hover table-striped">
								<thead>
									<tr>
										<th>글번호</th>
										<th class="col-md-5">제목</th>
										<th>카테고리</th>
										<th>작성자</th>
										<th>추천수</th>
										<th>조회수</th>
										<th>작성일자</th>
									</tr>
								</thead>
								<tbody>
									<c:set var="num" value="1"/>
									<c:set var="bw" value="1"/>
									<c:forEach var="l" items="${list}">
 	
										<tr>
											<td>${num}</td>
											<c:set var="num" value="${num+1 }" />
											<td><a href="#" data-toggle="modal" data-target="#${l.bcode}">${l.title }</a></td>

											<td>${l.code.name}</td>
											<td>
												<div class="profile">
													<a href="profile.jsp">
														<img class="img-circle" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120"/>
													</a>
													${l.writerid}
												</div>
											</td>
											<td>${l.point.best*(5)+l.point.good*(3)+l.point.bad*(-3)+l.point.worst*(-5) }</td>
											<td>${l.point.viewnum }</td>
											<td>${l.postdate }</td>
										</tr>
				<!-- Modal -->
<div id="${l.bcode }" class="modal fade myModal" role="dialog">
  <div class="modal-dialog modal-fullsize">
				<div class="modal-content" id="mdcont"
					style="max-width: 100%; width: 70%; height: auto;">

					<div class="modal-dialog" style="width: 70%;">
						
						<!-- header -->
						<div class="modal-header">
							<!-- header title -->

							<div class="modal-title">

							<%-- <c:forEach var="m" items="${mlist}">
							<c:if test="${l.writerid eq m.id}"> --%>
								<img id="testImg"
									src="${pageContext.request.contextPath}/resources/img/Koala.jpg"
									class="img-responsive" width="10%" height="50"
									style="float: left;">
								<%-- <img id="testImg"
									src="${pageContext.request.contextPath}/resources/img/${m.photo}"
									class="img-responsive" width="10%" height="50"
									style="float: left;"> --%>&nbsp;아이디 : <%-- ${m.id} --%>  &nbsp;&nbsp; 
								
								<small class="modalTitle"
									style="font-size: 200%; width: 30%; height: 30%; text-align: center; padding-left: 15%">
									${l.title}</small>	 &nbsp;&nbsp;<br>&nbsp;날짜 : ${l.postdate} &nbsp;
								<div class="level_area">
									<img
										src="${pageContext.request.contextPath}/resources/img/bw/50.gif"
										id="lvl_img"/>
									<%-- <img
										src="${pageContext.request.contextPath}/resources/img/bw/${m.medal}"
										id="lvl_img"/> --%>
									<div class="progressbar">
										<%-- <p class="bar" style="width: 30%;">${m.exp}%</p> --%>
										<p class="bar" style="width: 30%;">30%</p>
									</div>
								</div>
						<%-- 		</c:if>
							</c:forEach> --%>
							</div>
						</div>

						<!-- body -->
						<div class="modal-body">
							<p style="font-size: 150%" class="content2">
								${l.content }
							</p>
						</div>

						<!-- Footer -->
						<div class="modal-footer">
							<p
								style="margin: auto; float: left; padding-left: 1%; font-size: 120%;">
								<img
									src="${pageContext.request.contextPath}/resources/img/bw/40.gif">
								<span style="height: 50px;"><%-- ${sessionScope.member.id }  --%>: 흠...........</span>
							<div>
								<img
									src="${pageContext.request.contextPath}/resources/img/bw/goldgood.png"
									style="width: 3%">&nbsp; <img
									src="${pageContext.request.contextPath}/resources/img/bw/good.png"
									style="width: 3%">&nbsp; <img
									src="${pageContext.request.contextPath}/resources/img/bw/bad.png"
									style="width: 3%">&nbsp; <img
									src="${pageContext.request.contextPath}/resources/img/bw/goldbad.png"
									style="width: 3%">&nbsp;

							</div>

							<br>

							<p
								style="margin: auto; float: left; padding-left: 1%; font-size: 120%;">
								<img
									src="${pageContext.request.contextPath}/resources/img/bw/30.gif"><span>이재훈
									: 흠...........</span>
							<div>
								<img
									src="${pageContext.request.contextPath}/resources/img/bw/goldgood.png"
									style="width: 3%">&nbsp; <img
									src="${pageContext.request.contextPath}/resources/img/bw/good.png"
									style="width: 3%">&nbsp; <img
									src="${pageContext.request.contextPath}/resources/img/bw/bad.png"
									style="width: 3%">&nbsp; <img
									src="${pageContext.request.contextPath}/resources/img/bw/goldbad.png"
									style="width: 3%">&nbsp;
							</div>
							<br>

							<p
								style="margin: auto; float: left; padding-left: 1%; font-size: 120%;">
								<img
									src="${pageContext.request.contextPath}/resources/img/bw/20.gif"><span
									style="height: 50px;">이기승 : 흠...........
								</span>
							<div>
								<img
									src="${pageContext.request.contextPath}/resources/img/bw/goldgood.png"
									style="width: 3%">&nbsp; <img
									src="${pageContext.request.contextPath}/resources/img/bw/good.png"
									style="width: 3%">&nbsp; <img
									src="${pageContext.request.contextPath}/resources/img/bw/bad.png"
									style="width: 3%">&nbsp; <img
									src="${pageContext.request.contextPath}/resources/img/bw/goldbad.png"
									style="width: 3%">&nbsp;
							</div>
							<br>
							<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
						</div>
					</div>
				</div>
				</div>
</div>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
		</body>
		<%@ include file="/footer.jsp"%>
	</html>
