<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/cashcharge.css">
<link rel="stylesheet" type="text/css" href="resources/css/chargebutton.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>캐쉬 결제 창</title>
<style type="text/css">

</style>
<%@ include file="/header.jsp"%>
</head>
<body>
<div class= "wrap">
<div class="WolfharuRadioCheckbox">
		<form name="" action="">
			<fieldset>
				<legend>결제 방식을 선택하여 주십시오.</legend>
				<p class="ti">결제 방식</p>
				<div class="para">
					<p>
						<input type="radio" name="cash" id="onecash" value="1000" checked="checked">
						<label for="onecash">1000원(100캐시)</label>
					</p>
					<p>
						<input type="radio" name="cash" id="twocash" value="5000">
						<label for="twocash">5000원(500캐시)</label>
					</p>
					<p>
						<input type="radio" name="cash" id="threecash" value="10000">
						<label for="threecash">10000원(10000캐시 + 150캐시)</label>
					</p>
					<p>
						<input type="radio" name="cash" id="fourcash" value="14000">
						<label for="fourcash">14000원(15000캐시 + 300캐시)</label>
					</p>
				</div>
			</fieldset>
		</form>
	</div>
</div><br><br>
    <div class="button_base b05_3d_roll"  style="position: absolute; left : 40%; top:55%;">
        <div>결제하기</div>
        <div>결제하기</div>
    </div>
    
    <div class="button_base b05_3d_roll" style="position: absolute; left : 55%; top:55%;">
        <div>돌아가기</div>
        <div>돌아가기</div>
    </div>

</body>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="/footer.jsp"%>
</html>