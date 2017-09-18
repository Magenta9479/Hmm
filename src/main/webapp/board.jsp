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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<link href="resources/css/board.css" rel="stylesheet" type="text/css">
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
						<button style="margin-top: 8px;" id="search_icon"
							class="btn btn-success" type="button">
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
								<td><a href="#" onclick="bwmodal();">${l.title }</a></td>
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


	<div class="modal fade" id="layerpop">
		<div class="modal-content" id="mdcont"
			style="max-width: 100%; width: 70%; height: auto;">

			<div class="modal-dialog" style="width: 70%;">


				<!-- header -->
				<div class="modal-header">
					<!-- header title -->

					<div class="modal-title">


						<img id="testImg"
							src="${pageContext.request.contextPath}/resources/img/Koala.jpg"
							class="img-responsive" width="10%" height="50"
							style="float: left;">&nbsp; 아이디 : 이보원 &nbsp;&nbsp; <small
							style="padding-left: 20%; font-size: 200%; width: 30%; height: 30%; text-align: center;">배그접속
							안되요.!!!!</small> <br> &nbsp;&nbsp;날짜 : 2017-9-13 <br>&nbsp;

						<div class="level_area">
							<img
								src="${pageContext.request.contextPath}/resources/img/bw/50.gif"
								id="lvl_img"/>
							<div class="progressbar">
								<p class="bar">50%</p>
							</div>							
						</div>

						<!-- <div class="progress" style="width: 15%; height: 30%;"> 경험치 바 
  	<div class="progress-bar psrogress-bar-success" role="progressbar" aria-valuenow="20"
 	 aria-valuemin="0" aria-valuemax="100" style="width:40%;">40%
	</div> 경험치 바
    </div>
  	 -->

					</div>
				</div>

				<!-- body -->
				<div class="modal-body"
					style="position: 100%; height: 45%; clear: both;">
					<p style="font-size: 150%">안녕하세요 프라이팬입니다:)금일 오전 11시부터 오후 12시까지
						1시간 동안 Early Access 9월 업데이트를 위한 정기 점검이 진행 될 예정입니다. [9월 업데이트 정기 점검
						안내] 점검 시간: 9/14(목) 11:00~12:00 (1시간)점검 내용: 9월 업데이트 패치노트 확인하기 ※ 점검이
						진행되는 동안은 배틀그라운드의 접속 및 플레이가 접속 및 플레이가 원활히 진행되지 않을 수 있습니다. ※ 패치 완료
						후에는 반드시 스팀에서 게임 업데이트를 업데이트 해주세요 점검 후 보다 쾌적한 환경에서 게임 서비스를 이용하실 수
						있도록 최선을 다하겠습니다. 감사합니다!</p>
				</div>

				<!-- Footer -->
				<div class="modal-footer"
					style="position: 100%; border: 1px solid wh;">
					<p
						style="margin: auto; float: left; padding-left: 1%; font-size: 120%;">
						<img
							src="${pageContext.request.contextPath}/resources/img/bw/40.gif">
						<span style="height: 50px;">이장흠 : 흠...........</span>
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
							style="height: 50px;">이기승 : 흠.......<br>흠............<br>흠...............
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

		<br> <br> <br> <br> <br> <br> <br>
		<br> <br>

		<!-- The Modal 사진 상세히 보기-->
		<div id="myModal" class="modal">
			<span class="close">×</span> <img class="modal-content" id="img01">
			<div id="caption"></div>
		</div>


		<script type="text/javascript">
			function bwmodal() {
				/* 	$('#layerpop .modal-title').text(ev1);
					$('#layerpop .modal-body').text(ev2); */
				$('#layerpop').modal();

			};

			// Get the modal
			var modal = document.getElementById('myModal');

			// Get the image and insert it inside the modal - use its "alt" text as a caption
			var img = document.getElementById('testImg');
			var modalImg = document.getElementById("img01");
			var captionText = document.getElementById("caption");
			img.onclick = function() {
				modal.style.display = "block";
				modalImg.src = this.src;
				captionText.innerHTML = this.alt;
			}

			// Get the <span> element that closes the modal
			var span = document.getElementsByClassName("close")[0];

			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
				modal.style.display = "none";
			}

<!-- 이미지 상세보기  끝-->
		</script>
</body>
<%@ include file="/footer.jsp"%>
</html>
