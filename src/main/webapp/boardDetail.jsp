<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<link href="resources/css/boardDetail.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript">
	$(function() {
		$.ajax({
			type : "POST",
			url : "leveling.do?exp=${writer.exp}",
			success : function(data) {
				var as = eval(data);

				$('#lev').val(as[0]);
				$('#per').val(as[1]);
			},
			error : function(request, status, error) {
				alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
			}
		});

		$('#bBest').click(function() {
			window.location.href = "recommendation.do?recom=best&bcode=${board.bcode}";
		});

		$('#bGood').click(function() {
			window.location.href = "recommendation.do?recom=good&bcode=${board.bcode}";
		});

		$('#bBad').click(function() {
			window.location.href = "recommendation.do?recom=bad&bcode=${board.bcode}";
		});

		$('#bWorst').click(function() {
			window.location.href = "recommendation.do?recom=worst&bcode=${board.bcode}";
		});


	});

	function crecommendation(ccode, flag) {
		if (flag == 'g')
			window.location.href = "crecommendation.do?bcode=${board.bcode}&recom=good&ccode=" + ccode;
		else
			window.location.href = "crecommendation.do?bcode=${board.bcode}&recom=bad&ccode=" + ccode;

	}
</script>
<title>Hmm 게시판</title>
</head>
<body>
	<%@ include file="/header.jsp"%>
	
	<!-- 게시글 상세보기 -->
	<div class="boardDetail_area">

		<%-- 제목 및 상단 정보	--%>
		<div class="boardDetail">
			<div class="boardDetail-header">
				<div class="boardDetail_title">
					<h2>${board.title}&nbsp;&nbsp;&nbsp;<span id="posted_from">(!@#$
							게시판)</span>
					</h2>
				</div>
				<br>
				<div class="boardDetail_author">
					작성자 : ${writer.id} &nbsp;&nbsp;&nbsp; 레벨 : <input id="lev" />
					&nbsp;&nbsp;&nbsp; 경험치 : ${writer.exp} &nbsp;&nbsp;&nbsp; 경험치 진행도 :
					<input id="per" />
				</div>
				<br>
				<div class="boardDetail_date">
					<button type="button" id="bMedal">메달 주기!</button>
					<%-- 메달 갯수가 1 이상일때만 노출, 아니면 display : none --%>
					&nbsp;&nbsp;&nbsp; 메달 갯수 : ${writer.medal} <span
						id="board_postdate">작성일 : ${board.postdate}</span>
				</div>
				<br>

			</div>

			<div class="boardDetail-contents">${board.content}</div>
			<hr>
			<div class="boardDetail-footer">
				<button type="button" id="bBest">최고다!</button>
				${board.point.best} 개&nbsp;&nbsp;&nbsp;&nbsp

				<button type="button" id="bGood">좋아요 :)</button>
				${board.point.good} 개&nbsp;&nbsp;&nbsp;&nbsp;


				<button type="button" id="bBad">안 좋아요 :(</button>
				${board.point.bad} 개&nbsp;&nbsp;&nbsp;&nbsp;


				<button type="button" id="bWorst">뭐야 시발!</button>
				${board.point.worst} 개&nbsp;&nbsp;&nbsp;&nbsp; <br> <br>게시글
				점수 합계 : ${board.point.cal}<br> <br>
				<hr>

				<%-- 파일? --%>
				<c:if test="${files ne null}">
					<c:set var="num" value="1" />
					<c:forEach var="f" items="${files}">
            	file${num } : name = ${f.originname }, filelink=${f.filelink }<br>
						<c:set var="num" value="${num+1 }" />
					</c:forEach>
				</c:if>

				<hr>
				<%-- 댓글 공간 --%>
				<div class="comment_section">
					<c:if test="${comments ne null}">
						<c:set var="num" value="1" />

						<c:forEach var="c" items="${comments}">
							<div class="one_comment">
								<div class="panel-group">
								<div class="panel panel-success">
									<div class="panel-heading">${num }번째 댓글
										<div class="comment_authordate">
										작성자 : ${c.writerid } &nbsp;&nbsp;&nbsp;&nbsp; 작성일 :
										${c.postdate}</div>
										</div>
									<div class="panel-body">${c.content }</div>
									<div class="panel-footer">
										댓글 점수 : ${c.point.cal }
										<div class="comment_goodbad">
										공감 : ${c.point.good }&nbsp;
										<button type="button"
											onclick="crecommendation(${c.ccode},'g')">공감하기</button>
										&nbsp; 비공감 : ${c.point.bad }&nbsp;
										<button type="button"
											onclick="crecommendation(${c.ccode},'b')">비공감하기</button>
											</div>
									</div>
								</div>
								</div>
								<c:set var="num" value="${num+1 }" />
							</div>
						</c:forEach>

					</c:if>
				</div>


			</div>

		</div>
	</div>

</body>

</html>
