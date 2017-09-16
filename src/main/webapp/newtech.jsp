<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="resources/css/newtech.css" rel="stylesheet" type="text/css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>New Tech!!!</title>
</head>
<body>

<%@ include file="/header.jsp"%>
	<h1>NEW TECH!!!!!</h1>
	<button type="button" id="pro">찬성!!</button>
	<a href="#" id="proCount"></a>
	<script type="text/javascript">
		$(function(){
			$.ajax({
                type : "GET",
                url : "proCount.do",
                success : function(data) {
                	$('#proCount').text(data);

                },
                error:function(request,status,error){
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                   }
        	});

			$('#pro').click(function(){
				$.ajax({
                    type : "POST",
                    url : "proInsert.do",
                    dataType:"text",
                    success : function(data) {
                    	alert("찬성하셨습니다.");
                    },
                    error:function(request,status,error){
                        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                       }
            	});
			});
			$('#proCount').click(function(){
				$.ajax({
                    type : "GET",
                    url : "proList.do",
                    dataType:"json",
                    success : function(data) {
                    	var jsonStr = JSON.stringify(data);  //객체를 문자열로 변환
						var json = JSON.parse(jsonStr); //문자열을 배열 객체로 바꿈


						for(var i in json.list)
						{//모달로 표시되어야합니다
							alert(json.list[i]);
						}

                    },
                    error:function(request,status,error){
                        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                       }
            	});
			});
		});
	</script>
	<button type="button" id="con">반대!!</button>

	<a href ="newtech2.jsp">금주 신기술 동향 투표 결과</a>
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
        <button onclick="location.href='boardCode.do'" style="color:white;">SSIPPAL</button>
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
              <c:forEach var="l" items="${list }">

                <tr onclick="location.href='boardOne.do?bcode=${l.bcode}'">

                  <td>${num }</td>
                  <c:set var="num" value="${num+1 }"/>
                  <td>${l.title }<span id="reply_num">&nbsp;[${l.isdelete}]</span>
                  </td>
                  <td>${l.code.name}</td>
                  <td>
                    <div class="profile">
                      <a href="profile.jsp">
                        <img class="img-circle" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120"/>
                      </a>
                      ${l.writerid }
                    </div>
                  </td>
                  <td>${l.point.best*(5)+l.point.good*(3)+l.point.bad*(-3)+l.point.worst*(-5) }</td>
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
	<%@ include file="/footer.jsp"%>
</body>

</body>
</html>
