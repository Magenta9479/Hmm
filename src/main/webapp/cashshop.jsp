<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="resources/css/cashshop.css">
<link rel="stylesheet" type="text/css" href="resources/css/cashshop2.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- <script src="https://service.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>CashShop</title>
<style type="text/css">
tr, td {
	border: 1px solid black;
}
</style>
<script type="text/javascript">
	/* 페이지 이동  */
	$(document).ready(function(){

    $(".filter-button").click(function(){
        var value = $(this).attr('data-filter');
        
        if(value == "all")
        {
            //$('.filter').removeClass('hidden');
            $('.filter').show('1000');
        }
        else
        {
//            $('.filter[filter-item="'+value+'"]').removeClass('hidden');
//            $(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
            $(".filter").not('.'+value).hide('3000');
            $('.filter').filter('.'+value).show('3000');
            
        }
    });
    
    if ($(".filter").removeClass("active")) {
$(this).removeClass("active");
}
$(this).addClass("active");

});
	
	/* -------------------------------------------------------------------- */
	

	var IMP = window.IMP; // 생략가능
	IMP.init('imp86108516'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	
	IMP.request_pay({
		pg : 'inicis', // version 1.1.0부터 지원.
		pay_method : 'card',
		merchant_uid : 'merchant_' + new Date().getTime(),
		name : $("input[type=radio]:checked").name,
		amount : $("input[type=radio]:checked").value,
		m_redirect_url : 'https://www.yourdomain.com/payments/complete'
	}, function(rsp) {
		if (rsp.success) {
			var msg = '결제가 완료되었습니다.';
			msg += '고유ID : ' + rsp.imp_uid;
			msg += '상점 거래ID : ' + rsp.merchant_uid;
			msg += '결제 금액 : ' + rsp.paid_amount;
			msg += '카드 승인번호 : ' + rsp.apply_num;
		} else {
			var msg = '결제에 실패하였습니다.';
			msg += '에러내용 : ' + rsp.error_msg;
		}
		alert(msg);
	});
</script>
<%@ include file="/header.jsp"%>
</head>
<body id="body">
	<!-- <div id="menu" class="container">
		<button id="submenu" class="w3-button w3-round-xlarge w3-black"
			onclick="gopage0();">전체보기</button>
		<br>
		<br>
		<button id="submenu" class="w3-button w3-round-xlarge w3-black"
			onclick="gopage();">이모티콘</button>
		<br>
		<br>
		<button id="submenu" class="w3-button w3-round-xlarge w3-black"
			onclick="gopage1();">테두리</button>
		<br>
		<br>
		<button id="submenu" class="w3-button w3-round-xlarge w3-black"
			onclick="gopage2();">메달</button>
	</div> -->

<div class="jumbotron">
  <div class="container text-center">
    <h1>Online Store</h1>      
    <p style = "font-size: 30px;">Cash shop</p>
  </div>
</div>
<div class="container">  
	<div id="residualcash" style = "margin: 0px;">
		<p style="text-align: center; width : 100%;">
			<b>남은 따루 : </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
				id="cash" name="cash" type="text" value="${member.ddaru}  따루"
				readonly>
			<button id="myitem" class="w3-button w3-round-xlarge w3-black"
				data-toggle="modal" data-target="#myitemes">내 아이템보기</button>
		</p>
	</div>
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar" >
						<h2 style = "font-family : ">Category</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#" class="filter-button" data-filter ="all">ALL</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#emoticon" class="collapsed filter-button" data-filter ="emoticon">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											EMOTICON
										</a>
									</h4>
								</div>
								<div id="emoticon" class="panel-collapse collapse" style="height: 0px;">
									<div class="panel-body">
										<ul>
											<li><a href = "#"  class = "filter-button" data-filter="bad">Bad</a></li>
											<li><a href = "#" class = "filter-button"  data-filter="happy">Happy</a></li>
											<li><a href = "#" class = "filter-button"  data-filter="sad">Sad</a></li>
											<li><a href = "#"  class = "filter-button"  data-filter="crazy" >Crazy</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#edge" class="collapsed filter-button" data-filter= "border">
											EDGE,BORDER
										</a>
									</h4>
								</div>
								<div id="edge" class="panel-collapse collapse">
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#medal" class="collapsed filter-button" data-filter="medal">
											MEDAL
										</a>
									</h4>
								</div>
								<div id="medal" class="panel-collapse collapse">
								</div>
							</div>
						</div><!--/category-products-->
										
						<div class="shipping text-center"><!--shipping-->
							
						</div><!--/shipping-->
					
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div id="items" class="items"><!--features_items-->
						<h2 class="title text-center">ITEMS</h2>
						
						<!--------------------------------------------------emticon---------------------------------------------------------------------------- -->
					
						<div class="col-sm-4 filter emoticon bad ">
							<div class="product-image-wrapper" style="margin-bottom: 27px;">
								<div class="single-products">
										<div class="productinfo text-center"><br><br><br>
									
											<img style="width: 200px; height: 180px;" src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
										<br><br><br></div>
										<div class="product-overlay">
											<div class="overlay-content">
												<h2>250따루</h2>
												<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#buyModal"><i class="fa fa-shopping-cart"></i>구매하기</a>
												<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#cashModal"><i class="fa fa-shopping-cart"></i>충전하기</a>
											</div>
										</div>
								</div>
								<div class="choose">
								</div>
							</div>
						</div>
						<div class="col-sm-4 filter emoticon happy">
							<div class="product-image-wrapper" style="margin-bottom: 27px;">
								<div class="single-products">
									<div class="productinfo text-center"><br><br><br>
										<img style="width: 200px; height: 180px;"src="https://item.kakaocdn.net/do/96c4a590bb9fee0f9b570f1245fdf7b0f43ad912ad8dd55b04db6a64cddaf76d">								
									<br><br><br></div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>250따루</h2>
											<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#buyModal"><i class="fa fa-shopping-cart"></i>구매하기</a>
												<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#cashModal"><i class="fa fa-shopping-cart"></i>충전하기</a>
										</div>
									</div>
								</div>
								<div class="choose">
								</div>
							</div>
						</div>
						<div class="col-sm-4 filter emoticon happy">
							<div class="product-image-wrapper" style="margin-bottom: 27px;">
								<div class="single-products">
									<div class="productinfo text-center"><br><br><br>
										<img style="width: 200px; height: 180px;"	src="https://item.kakaocdn.net/do/f43d6e06d6563b7409e38f05f6df3666f43ad912ad8dd55b04db6a64cddaf76d">
										
									<br><br><br></div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>250따루</h2>
											<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#buyModal"><i class="fa fa-shopping-cart"></i>구매하기</a>
												<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#cashModal"><i class="fa fa-shopping-cart"></i>충전하기</a>
										</div>
									</div>
								</div>
								<div class="choose">
								</div>
							</div>
						</div>
						<div class="col-sm-4 filter emoticon happy">
							<div class="product-image-wrapper" style="margin-bottom: 27px;">
								<div class="single-products">
									<div class="productinfo text-center"><br><br><br>
										<img style="width: 200px; height: 180px;"	src="https://item.kakaocdn.net/do/af2e957732dad678a8b5f540f8b31045f43ad912ad8dd55b04db6a64cddaf76d">
										
									<br><br><br></div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>150따루</h2>
											<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#buyModal"><i class="fa fa-shopping-cart"></i>구매하기</a>
												<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#cashModal"><i class="fa fa-shopping-cart"></i>충전하기</a>
										</div>
									</div>
									
								</div>
								<div class="choose"> 
								</div>
							</div>
						</div>
						<div class="col-sm-4 filter emoticon happy">
							<div class="product-image-wrapper" style="margin-bottom: 27px;">
								<div class="single-products">
									<div class="productinfo text-center"><br><br><br>
										<img style="width: 200px; height: 180px;" src="https://item.kakaocdn.net/do/c50482b35a90fbcca8622c92c9552ba8f43ad912ad8dd55b04db6a64cddaf76d">
										
									<br><br><br></div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>150따루</h2>
											<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#buyModal"><i class="fa fa-shopping-cart"></i>구매하기</a>
												<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#cashModal"><i class="fa fa-shopping-cart"></i>충전하기</a>
										</div>
									</div>
									
								</div>
								<div class="choose">
								</div>
							</div>
						</div>
						<div class="col-sm-4 filter emoticon happy">
							<div class="product-image-wrapper" style="margin-bottom: 27px;">
								<div class="single-products">
									<div class="productinfo text-center"><br><br><br>
										<img style="width: 200px; height: 180px;" src="http://mblogthumb2.phinf.naver.net/20130521_45/ssunde1_1369117742177yoCHe_GIF/%B0%F8%B0%A8.gif?type=w2">
										
									<br><br><br></div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>150따루</h2>
											<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#buyModal"><i class="fa fa-shopping-cart"></i>구매하기</a>
												<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#cashModal"><i class="fa fa-shopping-cart"></i>충전하기</a>
										</div>
									</div>
								</div>
								<div class="choose">
								</div>
							</div>
						</div><br>
						<!--  ------------------------------------------border, edge----------------------------------------------------------------->
						<div class="col-sm-4 filter border">
							<div class="product-image-wrapper" style="margin-bottom: 24px;">
								<div class="single-products">
									<div class="productinfo text-center"><br><br><br>
										<img style="width: 200px; height: 180px;"src="http://cfs12.planet.daum.net/upload_control/pcp_download.php?fhandle=NVNzZWFAZnMxMi5wbGFuZXQuZGF1bS5uZXQ6LzExMjgyOTY2LzExNC8xMTQ4OC5naWY=&filename=colorline15.gif">
										
									<br><br><br></div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>150따루</h2>
											<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#buyModal"><i class="fa fa-shopping-cart"></i>구매하기</a>
												<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#cashModal"><i class="fa fa-shopping-cart"></i>충전하기</a>
										</div>
									</div>
								</div>
								<div class="choose">
								</div>
							</div>
						</div>
						
						<div class="col-sm-4 filter border">
							<div class="product-image-wrapper" style="margin-bottom: 24px;">
								<div class="single-products">
									<div class="productinfo text-center"><br><br><br>
										<img style="width: 200px; height: 180px;"src="http://cfile208.uf.daum.net/R400x0/1717D03C5030651A1D14E0">
										
									<br><br><br></div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>150따루</h2>
											<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#buyModal"><i class="fa fa-shopping-cart"></i>구매하기</a>
												<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#cashModal"><i class="fa fa-shopping-cart"></i>충전하기</a>
										</div>
									</div>
								</div>
								<div class="choose">
								</div>
							</div>
						</div>
						
						<div class="col-sm-4 filter border">
							<div class="product-image-wrapper" style="margin-bottom: 24px;">
								<div class="single-products">
									<div class="productinfo text-center"><br><br><br>
										<img style="width: 200px; height: 180px;"src="http://cfs11.planet.daum.net/upload_control/pcp_download.php?fhandle=NVNzZWFAZnMxMS5wbGFuZXQuZGF1bS5uZXQ6LzExMjgyOTY2LzExMy8xMTM1NC5naWY=&filename=color_line26.gif">

									<br><br><br></div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>150따루</h2>
											<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#buyModal"><i class="fa fa-shopping-cart"></i>구매하기</a>
											<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#cashModal"><i class="fa fa-shopping-cart"></i>충전하기</a>
										</div>
									</div>
								</div>
								<div class="choose">
								</div>
							</div>
						</div>
						
						<div class="col-sm-4 filter border">
							<div class="product-image-wrapper" style="margin-bottom: 24px;">
								<div class="single-products">
									<div class="productinfo text-center"><br><br><br>
										<img style="width: 200px; height: 180px;"src="http://cfile207.uf.daum.net/image/1308F4084979EADEFAA475">
									<br><br><br></div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>150따루</h2>
										
											<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#buyModal"><i class="fa fa-shopping-cart"></i>구매하기</a>
												<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#cashModal"><i class="fa fa-shopping-cart"></i>충전하기</a>
										</div>
									</div>
								</div>
								<div class="choose">
								</div>
							</div>
						</div>
						
						<div class="col-sm-4 filter border">
							<div class="product-image-wrapper" style="margin-bottom: 24px;">
								<div class="single-products">
									<div class="productinfo text-center"><br><br><br>
										<img style="width: 200px; height: 180px;"src="http://cfile206.uf.daum.net/image/144186064979ED58DACE1E">
									<br><br><br></div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>150따루</h2>
											<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#buyModal"><i class="fa fa-shopping-cart"></i>구매하기</a>
												<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#cashModal"><i class="fa fa-shopping-cart"></i>충전하기</a>
										</div>
									</div>
								</div>
								<div class="choose">
								</div>
							</div>
						</div>
						
						<div class="col-sm-4 filter border">
							<div class="product-image-wrapper" style="margin-bottom: 24px;">
								<div class="single-products">
									<div class="productinfo text-center"><br><br><br>
										<img style="width: 200px; height: 180px;"src="http://cfs9.blog.daum.net/image/36/blog/2008/01/27/16/16/479c2fb36d7d1&filename=1_e0o5i18276.gif">
										
									<br><br><br></div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>150따루</h2>
											<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#buyModal"><i class="fa fa-shopping-cart"></i>구매하기</a>
												<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#cashModal"><i class="fa fa-shopping-cart"></i>충전하기</a>
										</div>
									</div>
								</div>
								<div class="choose">
								</div>
							</div>
						</div>
						
						<!-- --------------------------------------------------------------------------medal-------------------------------------------------------------------- -->
						
						<div class="col-sm-4 filter medal">
							<div class="product-image-wrapper" style="margin-bottom: 24px;">
								<div class="single-products">
									<div class="productinfo text-center"><br><br><br>
										<img style="width: 100px; height: 100px;"src="https://sciencelevelup.kofac.re.kr/resources/images/mobile/course_big_icon_03.png">
										
									<br><br><br></div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>100따루</h2>
											<p>매달5개</p>
											<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#buyModal"><i class="fa fa-shopping-cart"></i>구매하기</a>
												<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#cashModal"><i class="fa fa-shopping-cart"></i>충전하기</a>
										</div>
									</div>
								</div>
								<div class="choose">
									
								</div>
							</div>
						</div>
						
						<div class="col-sm-4 filter medal">
							<div class="product-image-wrapper" style="margin-bottom: 24px;">
								<div class="single-products">
									<div class="productinfo text-center"><br><br><br>
										<img style="width: 100px; height: 100px;"src="https://sciencelevelup.kofac.re.kr/resources/images/mobile/course_big_icon_03.png">
										
									<br><br><br></div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>200따루</h2>
											<p>매달 10개</p>
											<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#buyModal"><i class="fa fa-shopping-cart"></i>구매하기</a>
												<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#cashModal"><i class="fa fa-shopping-cart"></i>충전하기</a>
										</div>
									</div>
								</div>
								<div class="choose">
									
								</div>
							</div>
						</div>
						
						<div class="col-sm-4 filter medal">
							<div class="product-image-wrapper" style="margin-bottom: 24px;">
								<div class="single-products">
									<div class="productinfo text-center"><br><br><br>
										<img style="width: 100px; height: 100px;"src="https://sciencelevelup.kofac.re.kr/resources/images/mobile/course_big_icon_03.png">
										
									<br><br><br></div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>150따루</h2>
											<p>매달 15개</p>
											<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#buyModal"><i class="fa fa-shopping-cart"></i>구매하기</a>
												<a href="#" class="btn btn-default add-to-cart" data-toggle="modal" data-target="#cashModal"><i class="fa fa-shopping-cart"></i>충전하기</a>
										</div>
									</div>
								</div>
								<div class="choose">
								</div>
							</div>
						</div>
					</div><!--features_items-->
					<div class="category-tab"><!--category-tab--></div><!--/category-tab-->
					<div class="recommended_items"><!--recommended_items--></div><!--/recommended_items-->
					
				</div>
			</div>
		</div>
	
	
	
	<!-- <div id="salesitem">
		<div id="emoticon">
			<div id="container-fluid">
				<div class="row">
					<div id="box" class="col-sm-4">
						<a id="itemdetail" href="#itdetail" data-toggle="modal"><img
							style="width: auto; height: auto;"
							src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2"></a>
						<div id="button">
							<button id="buy" data-toggle="modal" data-target="#buyModal" >구매하기</button>
							<button id="charge" data-toggle="modal" data-target="#cashModal">충전하기</button>
						</div>
					</div>

					<div id="box" class="col-sm-4">
						<a id="itemdetail" href="#itdetail" data-toggle="modal"><img
							style="width: 120%; height: 100%;"
							src="https://item.kakaocdn.net/do/96c4a590bb9fee0f9b570f1245fdf7b0f43ad912ad8dd55b04db6a64cddaf76d"></a>
						<div id="button">
							<button id="buy" data-toggle="modal" data-target="#buyModal">구매하기</button>
							<button id="charge" data-toggle="modal" data-target="#cashModal">충전하기</button>
						</div>
					</div>
					<div id="box" class="col-sm-4">
						<img style="width: 120%; height: 100%;"
							src="https://item.kakaocdn.net/do/f43d6e06d6563b7409e38f05f6df3666f43ad912ad8dd55b04db6a64cddaf76d">
						<div id="button">
							<button id="buy" data-toggle="modal" data-target="#buyModal">구매하기</button>
							<button id="charge" data-toggle="modal" data-target="#cashModal">충전하기</button>
						</div>
					</div>
				</div>
			</div>

			<div id="container-fluid">
				<div class="row">
					<div id="box" class="col-sm-4">
						<img style="width: 120%; height: 100%;"
							src="https://item.kakaocdn.net/do/af2e957732dad678a8b5f540f8b31045f43ad912ad8dd55b04db6a64cddaf76d">
						<div id="button">
							<button id="buy" data-toggle="modal" data-target="#buyModal">구매하기</button>
							<button id="charge" data-toggle="modal" data-target="#cashModal">충전하기</button>
						</div>
					</div>
					<div id="box" class="col-sm-4">
						<img style="width: 120%; height: 100%;"
							src="https://item.kakaocdn.net/do/c50482b35a90fbcca8622c92c9552ba8f43ad912ad8dd55b04db6a64cddaf76d">
						<div id="button">
							<button id="buy" data-toggle="modal" data-target="#buyModal">구매하기</button>
							<button id="charge" data-toggle="modal" data-target="#cashModal">충전하기</button>
						</div>
					</div>
					
					<div id="box" class="col-sm-4">
						<img style="width: 120%; height: 100%;"
							src="http://mblogthumb2.phinf.naver.net/20130521_45/ssunde1_1369117742177yoCHe_GIF/%B0%F8%B0%A8.gif?type=w2">
						<div id="button">
							<button id="buy" data-toggle="modal" data-target="#buyModal">구매하기</button>
							<button id="charge" data-toggle="modal" data-target="#cashModal">충전하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="background"></div>
		<div id="container-fluid">
			<div class="row">
				<div id="box" class="col-sm-4">
					<img style="left: 1%; width: 100%; height: 100%;"
						src="http://cfs12.planet.daum.net/upload_control/pcp_download.php?fhandle=NVNzZWFAZnMxMi5wbGFuZXQuZGF1bS5uZXQ6LzExMjgyOTY2LzExNC8xMTQ4OC5naWY=&filename=colorline15.gif">
					<div id="button">
						<button id="buy" data-toggle="modal" data-target="#buyModal" >구매하기</button>
						<button id="charge" data-toggle="modal" data-target="#cashModal">충전하기</button>
					</div>
				</div>
				<div id="box" class="col-sm-4">
					<img style="left: 1%; width: 100%; height: 100%;"
						src="http://cfile208.uf.daum.net/R400x0/1717D03C5030651A1D14E0">
					<div id="button">
						<button id="buy" data-toggle="modal" data-target="#buyModal">구매하기</button>
						<button id="charge" data-toggle="modal" data-target="#cashModal">충전하기</button>
					</div>
				</div>
				<div id="box" class="col-sm-4">
					<img style="left: 1%; width: 100%; height: 100%;"
						src="http://cfs11.planet.daum.net/upload_control/pcp_download.php?fhandle=NVNzZWFAZnMxMS5wbGFuZXQuZGF1bS5uZXQ6LzExMjgyOTY2LzExMy8xMTM1NC5naWY=&filename=color_line26.gif">
					<div id="button">
						<button id="buy" data-toggle="modal" data-target="#buyModal">구매하기</button>
						<button id="charge" data-toggle="modal" data-target="#cashModal">충전하기</button>
					</div>
				</div>
			</div>
		</div><br><br><br><br>
		<div id="container-fluid">
			<div class="row">
				<div id="box" class="col-sm-4">
					<img style="left: 1%; width: 100%; height: 100%;"
						src="http://cfile207.uf.daum.net/image/1308F4084979EADEFAA475">
					<div id="button">
						<button id="buy" data-toggle="modal" data-target="#buyModal">구매하기</button>
						<button id="charge" data-toggle="modal" data-target="#cashModal">충전하기</button>
					</div>
				</div>
				<div id="box" class="col-sm-4">
					<img style="left: 1%; width: 100%; height: 100%;"
						src="http://cfile206.uf.daum.net/image/144186064979ED58DACE1E">
					<div id="button">
						<button id="buy" type="button" data-toggle="modal"
							data-target="#buyModal">구매하기</button>
						<button id="charge" type="button" data-toggle="modal"
							data-target="#cashModal">충전하기</button>
					</div>
				</div>
		
				<div id="box" class="col-sm-4">
					<img style="left: 1%; width: 100%; height: 100%;"
						src="http://cfs9.blog.daum.net/image/36/blog/2008/01/27/16/16/479c2fb36d7d1&filename=1_e0o5i18276.gif">
					<div id="button">
						<button id="buy" data-toggle="modal" data-target="#buyModal">구매하기</button>
						<button id="charge" data-toggle="modal" data-target="#cashModal">충전하기</button>
					</div>
				</div>
			</div>
		</div><br><br><br><br>

			<div id="medal"></div>
			<div id="container-fluid">
				<div class="row">
					<div id="box" class="col-sm-4">
						<img style="left: 1%; width: 100%; height: 100%;"
							src="https://sciencelevelup.kofac.re.kr/resources/images/mobile/course_big_icon_03.png">
						<div id="button">
							<button id="buy" data-toggle="modal" data-target="#buyModal">구매하기</button>
							<button id="charge" data-toggle="modal" data-target="#cashModal">충전하기</button>
						</div>
					</div>
					<div id="box" class="col-sm-4">
						<img style="left: 1%; width: 100%; height: 100%;"
							src="https://sciencelevelup.kofac.re.kr/resources/images/mobile/course_big_icon_03.png">
						<div id="button">
							<button id="buy" data-toggle="modal" data-target="#buyModal">구매하기</button>
							<button id="charge" data-toggle="modal" data-target="#cashModal">충전하기</button>
						</div>
					</div>
					<div id="box" class="col-sm-4">
						<img style="left: 1%; width: 100%; height: 100%;"
							src="https://sciencelevelup.kofac.re.kr/resources/images/mobile/course_big_icon_03.png">
						<div id="button">
							<button id="buy" data-toggle="modal" data-target="#buyModal">구매하기</button>
							<button id="charge" data-toggle="modal" data-target="#cashModal">충전하기</button>
						</div>
					</div>
				</div>
			</div><br><br><br><br>
			<div id="container-fluid">
				<div class="row">
					<div id="box" class="col-sm-4">
						<img style="left: 1%; width: 100%; height: 100%;"
							src="https://sciencelevelup.kofac.re.kr/resources/images/mobile/course_big_icon_03.png">
						<div id="button">
							<button id="buy" type="button" data-toggle="modal" type="button"
								data-target="#buyModal">구매하기</button>
							<button id="charge" type="button" data-toggle="modal"
								data-target="#cashModal">충전하기</button>
						</div>
					</div>
					<div id="box" class="col-sm-4">
						<img style="left: 1%; width: 100%; height: 100%;"
							src="https://sciencelevelup.kofac.re.kr/resources/images/mobile/course_big_icon_03.png">
						<div id="button">
							<button id="buy" type="button" data-toggle="modal"
								data-target="#buyModal">구매하기</button>
							<button id="charge" type="button" data-toggle="modal"
								data-target="#cashModal">충전하기</button>
						</div>
					</div>
					<div id="box" class="col-sm-4">
						<img style="left: 1%; width: 100%; height: 100%;"
							src="https://sciencelevelup.kofac.re.kr/resources/images/mobile/course_big_icon_03.png">
						<div id="button">
							<button id="buy" data-toggle="modal" data-target="#buyModal">구매하기</button>
							<button id="charge" data-toggle="modal" data-target="#cashModal">충전하기</button>
						</div>
					</div>
				</div>
			</div>
		</div> -->
	<!--구매 Modal -->
	<div class="modal fade" id="buyModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">구매하기</h4>
				</div>
				<div class="modal-body">정말로 구매 하시겠습니까 ?</div>
				<div class="modal-footer">
					<button id="thisbuy" type="button" data-dismiss="modal">결제하기</button>
					<button type="button" class="cancelbtn" data-dismiss="modal">닫기</button>
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
					<h4 class="modal-title" id="myModalLabel">충전하기</h4>
				</div>
				<div class="modal-body">
					<!-- 구매 라디오 버튼 -->
					<div class="container">
						<form > 
						<label class="radio-inline">
						 <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="1000">
							\1000원(100캐시)</label> <br> 
						<label class="radio-inline"> 
						<input type="radio" name="inlineRadioOptions" id="inlineRadio2"
							value="5000">\5000원(500캐시)</label> <br>
							<label class="radio-inline">
							<input type="radio" name="inlineRadioOptions" id="inlineRadio3"
							value="10000">\10000원(10000캐시 + 150캐시)	</label><br>
							<label class="radio-inline">
							<input type="radio" name="inlineRadioOptions" id="inlineRadio4" value="14000">
							14000원(15000캐시 + 300캐시)</label><br>
					</form>
					</div>
				</div>
				<!-- 라디오 end -->

				<div class="modal-footer">
					<button id="thisbuy" type="button" data-dismiss="modal">충전하기</button>
					<button id="close" type="button" class="cancelbtn"
						data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 아이템 보기 -->
	<div class="modal modal-center fade" id="myitemes" tabindex="-1"
		role="dialog" aria-labelledby="my80sizeCenterModalLabel">
		<div class="modal-dialog modal-80size modal-center" role="document"
			style="height: auto; width: 1300px;">
			<div id="myitemModal" class="modal-content modal-80size">
				<div class="modal-header">
					<h4 id="itemtitle" class="modal-title" id="myModalLabel">내 아이템</h4>
				</div>
				<div id="itemheight" class="modal-body" style="width: 1200px;">
					<table id="itemtable"
						style="width: 1100px; height: auto; padding: 0px;">
						<tr>
							<td><a id="itemdetail" href="#itdetail" data-toggle="modal">
									<img
									src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
							</a><br>
							<br>사용기한 : ${member.quitedate}</td>
							<td><a id="itemdetail" href="#itdetail" data-toggle="modal"><img
									src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
							</a><br>
							<br>사용기한 : ${member.quitedate}</td>
							<td><a id="itemdetail" href="#itdetail" data-toggle="modal"><img
									src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
							</a><br>
							<br>사용기한 : ${member.quitedate}</td>
							<td><a id="itemdetail" href="#itdetail" data-toggle="modal"><img
									src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
							</a><br>
							<br>사용기한 : ${member.quitedate}</td>
						</tr>
						<tr>
							<td><a id="itemdetail" href="#itdetail" data-toggle="modal"><img
									src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
							</a><br>
							<br>사용기한 : ${member.quitedate}</td>
							<td><a id="itemdetail" href="#itdetail" data-toggle="modal"><img
									src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
							</a><br>
							<br>사용기한 : ${member.quitedate}</td>
							<td><a id="itemdetail" href="#itdetail" data-toggle="modal"><img
									src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
							</a><br>
							<br>사용기한 : ${member.quitedate}</td>
							<td><a id="itemdetail" href="#itdetail" data-toggle="modal"><img
									src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
							</a><br>
							<br>사용기한 : ${member.quitedate}</td>
						</tr>
						<tr>
							<td><a id="itemdetail" href="#itdetail" data-toggle="modal"><img
									src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
							</a><br>
							<br>사용기한 : ${member.quitedate}</td>
							<td><a id="itemdetail" href="#itdetail" data-toggle="modal"><img
									src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
							</a><br>
							<br>사용기한 : ${member.quitedate}</td>
							<td><a id="itemdetail" href="#itdetail" data-toggle="modal"><img
									src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
							</a><br>
							<br>사용기한 : ${member.quitedate}</td>
							<td><a id="itemdetail" href="#itdetail" data-toggle="modal"><img
									src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
							</a><br>
							<br>사용기한 : ${member.quitedate}</td>
						</tr>
						<tr>
							<td><a id="itemdetail" href="#itdetail" data-toggle="modal"><img
									src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
							</a><br>
							<br>사용기한 : ${member.quitedate}</td>
							<td><a id="itemdetail" href="#itdetail" data-toggle="modal"><img
									src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
							</a><br>
							<br>사용기한 : ${member.quitedate}</td>
							<td><a id="itemdetail" href="#itdetail" data-toggle="modal"><img
									src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
							</a><br>
							<br>사용기한 : ${member.quitedate}</td>
							<td><a id="itemdetail" href="#itdetail" data-toggle="modal"><img
									src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
							</a><br>
							<br>사용기한 : ${member.quitedate}</td>
						</tr>
					</table>
				</div>
				<div id="myitemfooter" class="modal-footer">
					<button type="button" class="cancelbtn" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 아이템 상세보기 -->
	<div class="modal modal-center fade" id="itdetail" tabindex="-1"
		role="dialog" aria-labelledby="my80sizeCenterModalLabel">
		<div class="modal-dialog modal-80size modal-center" role="document">
			<div class="modal-content modal-80size">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">아이템 상세보기</h4>
				</div>
				<div class="modal-body">

					<div id="selectimage">
						<!-- 선택이미지 보여주기 -->
						<img
							src="http://mblogthumb1.phinf.naver.net/20160420_291/donga-bacchus_14611160044242ryl6_GIF/002.gif?type=w2">
					</div>
					<div id="information">
						<p>
							&nbsp; 이름 : <br>
							<br> &nbsp; 사용기한 :

						</p>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="cancelbtn" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>

</body>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="/footer.jsp"%>
</html>