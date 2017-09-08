<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<<<<<<< HEAD
<link rel="stylesheet" type="text/css" href="resources/css/cashshop.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>CashShop</title>
<style type="text/css">

=======
<!-- <link rel="stylesheet" type="text/css" href="cashshop.css"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>CashShop</title>
<style type="text/css">
#residualcash {
	margin-top: 180px;
}
#salesitem{
	margin-top : 100px;
}

#container-fluid {
	margin-top: 100px;
	margin-left: 9%;
	width: 100%;
}

#container-fluid1 {
	margin-top: 100px;
	margin-left: 9%;
	width: 100%;
}

#box {
	margin-right: 30px;
	width: 300px;
	height: 200px;
	left: 16%;
}

#button {
	position: absolute;
	top: 210px;
	width: 300px;
	height: 200px;
	right: 20px;
	left: 2px;
}

#buy {
	width: 45%;
	margin-right: 20px;
}

#charge {
	width: 45%;
}

#cash {
	size: 200px;
}

#menu {
	position : fixed;
	top: 200px;
	width: 100%;
	left: 83%;
	height :30% ;
}
#submenu{
	width : 8%;
}
>>>>>>> branch 'master' of https://github.com/Magenta9479/Hmm.git
</style>
<%@ include file="/header.jsp"%>
</head>
<body>
	<div id="menu" class="container">
	<button id = "submenu"  type="button" class="btn btn-primary btn-block">전체보기</button>
	<button id = "submenu"  type="button" class="btn btn-primary btn-block">테두리</button>
	<button id = "submenu"  type="button" class="btn btn-primary btn-block">배경</button>
	<button id = "submenu"  type="button" class="btn btn-primary btn-block">메달</button>
		<!-- <a href="#" class="btn btn-primary">전체보기</a> 
		<a href="#" class="btn btn-primary">테 두 리</a> 
		<a href="#" 	class="btn btn-primary">배 경</a> 
		<a href="#" class="btn btn-primary">메 달</a> -->
	</div>
	
	<div id="residualcash">
		<p style="text-align: center">
			<b>잔여 캐시 : </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
				id="cash" name="cash" type="text" readonly>
		</p>
	</div>
	<div id ="salesitem">
	<div id="container-fluid">
		<div class="row">
			<div id="box" class="col-sm-4" style="background-color: lavender;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>

			<div id="box" class="col-sm-4"
				style="background-color: lavenderblush;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4" style="background-color: lavender;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
		</div>
	</div>

	<div id="container-fluid1">
		<div class="row">
			<div id="box" class="col-sm-4" style="background-color: lavender;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4"
				style="background-color: lavenderblush;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4" style="background-color: lavender;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
		</div>
	</div>
	
	<hr>
	배경
	<div id="container-fluid1">
		<div class="row">
			<div id="box" class="col-sm-4" style="background-color: lavender;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4"
				style="background-color: lavenderblush;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4" style="background-color: lavender;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
		</div>
	</div>
	<div id="container-fluid1">
		<div class="row">
			<div id="box" class="col-sm-4" style="background-color: lavender;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4"
				style="background-color: lavenderblush;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4" style="background-color: lavender;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
		</div>
	</div>
	
	<hr>
	메달
	
	<div id="container-fluid1">
		<div class="row">
			<div id="box" class="col-sm-4" style="background-color: lavender;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4"
				style="background-color: lavenderblush;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4" style="background-color: lavender;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
		</div>
	</div>
	<div id="container-fluid1">
		<div class="row">
			<div id="box" class="col-sm-4" style="background-color: lavender;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4"
				style="background-color: lavenderblush;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
				</div>
			</div>
			<div id="box" class="col-sm-4" style="background-color: lavender;">
				<div id="button">
					<button id="buy" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#buyModal">구매하기</button>
					<button id="charge" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#cashModal">충전하기</button>
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


</body>
</html>