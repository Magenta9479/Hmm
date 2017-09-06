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
margin-top: 120px;
}
#container-fluid{
 margin-top : 80px;
 margin-left : 80px ;
 width : 100%;

}
#container-fluid1{
 margin-top : 100px;
 margin-left : 80px ;
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
left :  16% ;
top :  120px;
width : 40px;

}
#buy{
 margin-right: 40px;
}

</style>
<%@ include file="/header.jsp" %>
</head>
<body>
<div id="residualcash">
<p style= "text-align : center"><b>남은 캐시 : </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="cash" type ="text"  readonly></p>
</div>
<div id = "container-fluid">
<div class="row">
    <div id = "box" class="col-sm-4" style="background-color:lavender;">.col-sm-4<div id = "button"><button  type="button" class="btn btn-primary">Default button</button>
  <button type="button" class="btn btn-primary">Default button</button></div></div>
    
    <div id = "box" class="col-sm-4" style="background-color:lavenderblush;">.col-sm-4</div>
    <div id = "box" class="col-sm-4" style="background-color:lavender;">.col-sm-4</div>
    </div>
</div>

<div id = "container-fluid1">
<div class="row">
    <div id = "box" class="col-sm-4" style="background-color:lavender;">.col-sm-4</div>
    <div id = "box" class="col-sm-4" style="background-color:lavenderblush;">.col-sm-4</div>
    <div id = "box" class="col-sm-4" style="background-color:lavender;">.col-sm-4</div>
  </div>
</div>

<div id = "container-fluid1">
<div class="row">
    <div id = "box" class="col-sm-4" style="background-color:lavender;">.col-sm-4</div>
    <div id = "box" class="col-sm-4" style="background-color:lavenderblush;">.col-sm-4</div>
    <div id = "box" class="col-sm-4" style="background-color:lavender;">.col-sm-4</div>
  </div>
</div>





</body>
</html>