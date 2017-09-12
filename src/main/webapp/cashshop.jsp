<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="resources/css/cashshop.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>CashShop</title>
<script type="text/javascript">
function gopage0(){
	document.getElementById("body").scrollIntoView();	
}

function gopage(){
document.getElementById("residualcash").scrollIntoView();
}
function gopage1(){
	document.getElementById("background").scrollIntoView();
	}
function gopage2(){
	document.getElementById("medal").scrollIntoView();
	}
	
</script>
<%@ include file="/header.jsp"%>
</head>
<body id = "body">
	<div id="menu" class="container">
	<button id = "submenu"  class="w3-button w3-round-xlarge w3-black" onclick="gopage0();">전체보기</button><br><br>
	<button id = "submenu"  class="w3-button w3-round-xlarge w3-black" onclick="gopage();">이모티콘</button><br><br>
	<button id = "submenu"  class="w3-button w3-round-xlarge w3-black" onclick="gopage1();">테두리</button><br><br>
	<button id = "submenu"  class="w3-button w3-round-xlarge w3-black" onclick="gopage2();">메달</button>
	</div>
	
	<div id="residualcash">
		<p style="text-align: center">
			<b>남은 따루 : </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input id="cash" name="cash" type="text" value= "                                      ${member.ddaru}따루" readonly>
			<button id="myitem" class="w3-button w3-round-xlarge w3-black" data-toggle="modal" data-target="#myitemes"> 내 아이템보기</button>
		</p>
	</div>
	<div id ="salesitem">
	<div id = "emoticon">
	<div id="container-fluid">
		<div class="row">
			<div id="box" class="col-sm-4">
				<a id = "itemdetail" href =" "><img style =" width : auto; height :auto; " src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2"></a>
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge"  class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>

			<div id="box" class="col-sm-4">
			<img style =" width : 120%; height :100%; " src="https://item.kakaocdn.net/do/96c4a590bb9fee0f9b570f1245fdf7b0f43ad912ad8dd55b04db6a64cddaf76d">
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4">
			<img style =" width : 120%; height :100%; " src="https://item.kakaocdn.net/do/f43d6e06d6563b7409e38f05f6df3666f43ad912ad8dd55b04db6a64cddaf76d">
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
		</div>
	</div>

	<div id="container-fluid1">
		<div class="row">
			<div id="box" class="col-sm-4">
			<img style =" width : 120%; height :100%; " src="https://item.kakaocdn.net/do/af2e957732dad678a8b5f540f8b31045f43ad912ad8dd55b04db6a64cddaf76d">
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge"  class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4">
			<img style =" width : 120%; height :100%; " src="https://item.kakaocdn.net/do/c50482b35a90fbcca8622c92c9552ba8f43ad912ad8dd55b04db6a64cddaf76d">			
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="background"></div>
			<div id="box" class="col-sm-4">
			<img style =" width : 120%; height :100%; " src="http://mblogthumb2.phinf.naver.net/20130521_45/ssunde1_1369117742177yoCHe_GIF/%B0%F8%B0%A8.gif?type=w2">
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
		</div>
	</div>
</div>

	<div id="container-fluid1">
		<div class="row">
			<div id="box" class="col-sm-4">
			<img style ="left : 1%; width : 100%; height :100%; " src="http://cfs12.planet.daum.net/upload_control/pcp_download.php?fhandle=NVNzZWFAZnMxMi5wbGFuZXQuZGF1bS5uZXQ6LzExMjgyOTY2LzExNC8xMTQ4OC5naWY=&filename=colorline15.gif">
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4">
			<img style ="left : 1%; width : 100%; height :100%; " src="http://cfile208.uf.daum.net/R400x0/1717D03C5030651A1D14E0">
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4">
			<img style ="left : 1%; width : 100%; height :100%; " src="http://cfs11.planet.daum.net/upload_control/pcp_download.php?fhandle=NVNzZWFAZnMxMS5wbGFuZXQuZGF1bS5uZXQ6LzExMjgyOTY2LzExMy8xMTM1NC5naWY=&filename=color_line26.gif">
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
		</div>
	</div>
	<div id="container-fluid1">
		<div class="row">
			<div id="box" class="col-sm-4">
			<img style ="left : 1%; width : 100%; height :100%; " src="http://cfile207.uf.daum.net/image/1308F4084979EADEFAA475">
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4">
			<img style ="left : 1%; width : 100%; height :100%; " src="http://cfile206.uf.daum.net/image/144186064979ED58DACE1E">
				<div id="button">
					<button id="buy" type="button" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4">
			<img style ="left : 1%; width : 100%; height :100%; " src="http://cfs9.blog.daum.net/image/36/blog/2008/01/27/16/16/479c2fb36d7d1&filename=1_e0o5i18276.gif">
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
		</div>
	</div>

	<div id = "medal">
	<div id="container-fluid1">
		<div class="row">
			<div id="box" class="col-sm-4">
			<img style ="left : 1%; width : 100%; height :100%; " src="https://sciencelevelup.kofac.re.kr/resources/images/mobile/course_big_icon_03.png">
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4">
			<img style ="left : 1%; width : 100%; height :100%; " src="https://sciencelevelup.kofac.re.kr/resources/images/mobile/course_big_icon_03.png">
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4">
			<img style ="left : 1%; width : 100%; height :100%; " src="https://sciencelevelup.kofac.re.kr/resources/images/mobile/course_big_icon_03.png">
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
		</div>
	</div>
	<div id="container-fluid1">
		<div class="row">
			<div id="box" class="col-sm-4">
			<img style ="left : 1%; width : 100%; height :100%; " src="https://sciencelevelup.kofac.re.kr/resources/images/mobile/course_big_icon_03.png">
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4">
			<img style ="left : 1%; width : 100%; height :100%; " src="https://sciencelevelup.kofac.re.kr/resources/images/mobile/course_big_icon_03.png">
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4">
			<img style ="left : 1%; width : 100%; height :100%; " src="https://sciencelevelup.kofac.re.kr/resources/images/mobile/course_big_icon_03.png">
				<div id="button">
					<button id="buy" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" class="w3-button w3-round-xlarge w3-black" 
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
	<!--구매 Modal -->
	<div class="modal fade" id="buyModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">구매하기</h4>
				</div>
				<div class="modal-body">정말로 구매 하시겠습니까 ?</div>
				<div class="modal-footer">
					<button id="thisbuy" type="button" class="btn btn-primary"
						data-dismiss="modal">결제하기</button>
					<button id="close" type="button" class="btn btn-primary"
						data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>

	<!--충전 Modal -->
	<div class="modal fade" id="cashModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">충전하기</h4>
				</div>
				<div class="modal-body">
					<!-- 구매 라디오 버튼 -->
					<div class="container">
						<label class="radio-inline"> 
						<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 
							100캐시 - 1000원
						</label> <br>
						<label class="radio-inline"> 
						<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
							500캐시 - 5000원
						</label> <br>
						<label class="radio-inline"> 
						<input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
							10000캐시 + 150캐시 - 10000원
						</label><br>
						<label class="radio-inline"> 
						<input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
							15000캐시 + 300캐시 - 14000원
						</label><br>
						
					</div>
				</div><!-- 라디오 end -->
				
				<div class="modal-footer">
					<button id="thisbuy" type="button" class="btn btn-primary"
						data-dismiss="modal">충전하기</button>
					<button id="close" type="button" class="btn btn-default"
						data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 아이템 보기 -->
<div class="modal modal-center fade" id="myitemes" tabindex="-1" role="dialog" aria-labelledby="my80sizeCenterModalLabel">
  <div class="modal-dialog modal-80size modal-center" role="document">
    <div class="modal-content modal-80size">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">내 아이템</h4>
      </div>
      <div class="modal-body">
        Modal 내용
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>

<!-- 아이템 상세보기 -->
<div class="modal modal-center fade" id="itemdetail" tabindex="-1" role="dialog" aria-labelledby="my80sizeCenterModalLabel">
  <div class="modal-dialog modal-80size modal-center" role="document">
    <div class="modal-content modal-80size">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">아이템 상세보기</h4>
      </div>
      <div class="modal-body">
        Modal 내용
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>



</body>
</html>