<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" type="text/css" href="cashshop.css"> -->
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>CashShop</title>
<style type="text/css">
#residualcash{
margin-top: 100px;

}
#container-fluid{
 margin-top : 100px;
 margin-left : 9% ;
 width : 100%;

}
#container-fluid1{
 margin-top : 100px;
 margin-left : 9% ;
 width : 100%;
}
#box{
margin-right: 30px;
width :  300px;
height: 200px;
left : 16%;
}
#button{
position : absolute;
top :  210px;
width : 300px;
height : 200px;
right: 20px;
left: 2px;

}
#buy{
width : 45%;
 margin-right: 20px;
}
#charge{
width : 45%;
}
#cash{
size : 200px;
}
#menu{
top : 200px;
width : 50%;
left : 25%;
}

</style>
<%@ include file="/header.jsp" %>
</head>
<body>
<div id= "menu" class="btn-group btn-group-justified">
    <a href="#" class="btn btn-primary">테 두 리</a>
    <a href="#" class="btn btn-primary">배 경</a>
    <a href="#" class="btn btn-primary">메 달</a>
  </div>

<div id="residualcash">
<p style= "text-align : center"><b>잔여 캐시 : </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="cash"  name="cash" type ="text"  readonly></p>
</div>
<div id = "container-fluid">
<div class="row">
    <div id = "box" class="col-sm-4" style="background-color:lavender;"><div id = "button"><button id="buy" type="button" class="btn btn-primary">구매하기</button>
  <button id="charge" type="button" class="btn btn-primary">충전하기</button></div></div>
    
    <div id = "box" class="col-sm-4" style="background-color:lavenderblush;"><div id = "button"><button id="buy" type="button" class="btn btn-primary">구매하기</button>
  <button id="charge" type="button" class="btn btn-primary">충전하기</button></div></div>
    <div id = "box" class="col-sm-4" style="background-color:lavender;"><div id = "button"><button id="buy" type="button" class="btn btn-primary">구매하기</button>
  <button id="charge" type="button" class="btn btn-primary">충전하기</button></div></div>
    </div>
</div>

<div id = "container-fluid1">
<div class="row">
    <div id = "box" class="col-sm-4" style="background-color:lavender;"><div id = "button"><button id="buy" type="button" class="btn btn-primary">구매하기</button>
  <button id="charge" type="button" class="btn btn-primary">충전하기</button></div></div>
    <div id = "box" class="col-sm-4" style="background-color:lavenderblush;"><div id = "button"><button id="buy" type="button" class="btn btn-primary">구매하기</button>
  <button id="charge" type="button" class="btn btn-primary">충전하기</button></div></div>
    <div id = "box" class="col-sm-4" style="background-color:lavender;"><div id = "button"><button id="buy" type="button" class="btn btn-primary">구매하기</button>
  <button id="charge" type="button" class="btn btn-primary">충전하기</button></div></div>
  </div>
</div>

<div id = "container-fluid1">
<div class="row">
    <div id = "box" class="col-sm-4" style="background-color:lavender;"><div id = "button"><button id="buy" type="button" class="btn btn-primary">구매하기</button>
  <button id="charge" type="button" class="btn btn-primary">충전하기</button></div></div>
    <div id = "box" class="col-sm-4" style="background-color:lavenderblush;"><div id = "button"><button id="buy" type="button" class="btn btn-primary">구매하기</button>
  <button id="charge" type="button" class="btn btn-primary">충전하기</button></div></div>
    <div id = "box" class="col-sm-4" style="background-color:lavender;"><div id = "button"><button id="buy" type="button" class="btn btn-primary">구매하기</button>
  <button id="charge" type="button" class="btn btn-primary">충전하기</button></div></div>
  </div>
</div>
<div id = "container-fluid1">
<div class="row">
    <div id = "box" class="col-sm-4" style="background-color:lavender;"><div id = "button"><button id="buy" type="button" class="btn btn-primary">구매하기</button>
  <button id="charge" type="button" class="btn btn-primary">충전하기</button></div></div>
    <div id = "box" class="col-sm-4" style="background-color:lavenderblush;"><div id = "button"><button id="buy" type="button" class="btn btn-primary">구매하기</button>
  <button id="charge" type="button" class="btn btn-primary">충전하기</button></div></div>
    <div id = "box" class="col-sm-4" style="background-color:lavender;"><div id = "button"><button id="buy" type="button" class="btn btn-primary">구매하기</button>
  <button id="charge" type="button" class="btn btn-primary">충전하기</button></div></div>
  </div>
</div>




</body>
</html>