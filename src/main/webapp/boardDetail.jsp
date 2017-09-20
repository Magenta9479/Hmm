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
					<h2>${board.title}&nbsp;&nbsp;&nbsp;<span id="posted_from">(!@#$ 게시판)</span></h2>
        </div>
				<div class="boardDetail_author">
					작성자 : ${writer.id}<br> 레벨 : <input id="lev" /> <br> 경험치
					: ${writer.exp}<br> 경험치 진행도 : <input id="per" /> <br> 메달
					갯수 : ${writer.medal}
				</div>
        <br><br>
        <div class="boardDetail_date">
  					<button type="button" id="bMedal">메달 주기!</button>
          <span id="board_postdate">작성일 : ${board.postdate}</span>

				</div>
				<br>

			</div>

			<div class="boardDetail-contents">

				${board.content}
      </div>

      	<div class="boardDetail-footer">
					<button type="button" id="bBest">최고다!</button>
          ${board.point.best} 개&nbsp;&nbsp;&nbsp;&nbsp

					<button type="button" id="bGood">좋아요 :)</button>
          ${board.point.good} 개&nbsp;&nbsp;&nbsp;&nbsp;


					<button type="button" id="bBad">안 좋아요 :(</button>
           ${board.point.bad} 개&nbsp;&nbsp;&nbsp;&nbsp;


					<button type="button" id="bWorst">뭐야 시발!</button>
          ${board.point.worst} 개&nbsp;&nbsp;&nbsp;&nbsp;

					<br> <br>게시글 점수 합계 : ${board.point.cal}<br> <br>

					<c:if test="${files ne null}">
						<c:set var="num" value="1" />
						<c:forEach var="f" items="${files}">
            	file${num } : name = ${f.originname }, filelink=${f.filelink }<br>
							<c:set var="num" value="${num+1 }" />
						</c:forEach>
					</c:if>

					<c:if test="${comments ne null}">
						<c:set var="num" value="1" />
						<c:forEach var="c" items="${comments}">
            	comment${num } : content = ${c.content }, writerid=${c.writerid }, postdate=${c.postdate}
            	<br>good : ${c.point.good }&nbsp;<button type="button"
								onclick="crecommendation(${c.ccode},'g')">good</button>&nbsp; bad : ${c.point.bad }&nbsp;<button
								type="button" onclick="crecommendation(${c.ccode},'b')">bad</button>
            	${c.point.cal }<br>
							<c:set var="num" value="${num+1 }" />
						</c:forEach>
					</c:if>
				</div>

		</div>
	</div>


	<%@ include file="/footer.jsp"%>
</body>

</html>
