<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>BW Editor�� ���Ű��� ȯ�� �մϴ�.</title>
 <meta charset="UTF-8">
    <title>bootstrap4</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote-bs4.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote-bs4.js"></script>
    
<style type="text/css">
  .sn{
	width: 60%;
	
	text-align: left;
	margin: 0 auto;
}
/*
.buttons{
	margin-left: 43%;
}
.categorys{
	margin-left: 45%;
}  */
body{
	text-align: center;
	background-image: ${pageContext.request.contextPath}/resources/img/bw/background.jpg;
}

</style>
 <script type="text/javascript">
function bw(){
	  		/* var textareaValue = $('textarea[name=content]').html();  */
	  		var textareaValue = $("p").eq(1).text();
	  		$('input[name=content]').val(textareaValue);
  			var title = $('input[name=title]').val();
  			if(title == ''){
  				alert("������ ����ֽ��ϴ�.");
  				return;
  			}
  			var ssss  = "<c:out value='${sessionScope.member.id }'/>";
  			alert(ssss);
  			$('#write').submit();
}


</script> 
</head>
<body>
<form action="write.do" method="POST" id="write">
	<header><h1 style="text-align: center;">Bw Editor</h1></header>
	<input type="hidden" name="bcode" value="${bcode }">
	<input type="hidden" name="content">
	<input type="hidden" name="writerid" value="${member.id }">
	<input type="text" style="width: 60%" name="title"></input>
	<br><br>
	<p>���̵� : ${sessionScope.member.id }</p>
	<div class="categorys">
	<select id="area" name="distinguish" style="">
		<option value="4" selected>�ƹ�������ġ</option>
			<option value="5">������Ʈ�Խ���</option>
			<option value="1">����Խ���</option>
			<option value="3">�ű���Խ���</option>
			<option value="2">Q&A</option>
	</select>
	</div>
<!-- ���ӳ�Ʈ �κ� -->
	<div class="sn">
	<div class="content">
	<textarea id="summernote" name="summer"></textarea>
	</form>
	<script>
      $('#summernote').summernote({
    	  height: 500,                 // set editor height
    	  width: '100%',
    	  focus: true,                  // set focus to editable area after initializing summernote
    	  placeholder: "�̹����� ���� �Ͻ÷��� Picture ��ư�� Ŭ�� �� ������ �巡�� �Ǵ� ã�ƺ��� �Ͻÿ�.",
    	  minHeight: null,      // �ּ� ���̰�(null�� ���� ����)
    	  maxHeight: null,      // �ִ� ���̰�(null�� ���� ����)
    	  toolbar: [
    		    // [groupName, [list of button]]
    		    ['style', ['bold', 'italic', 'underline', 'clear']],
    		    ['font', ['strikethrough', 'superscript', 'subscript']],
    		    ['fontsize', ['fontsize']],
    		    ['color', ['color']],
    		    ['para', ['ul', 'ol', 'paragraph']],
    		    ['height', ['height']]
    		  ]

		});
      
	</script>
	</div>
	</div>
    <div class="buttons">
    <button type="button" id="wr" onclick="bw()">�� ��</button>
 	 &nbsp;&nbsp;&nbsp;
  	<a href="javascript:history.go(-2)"><button type="reset">�� ��</button></a>
  	</div><!-- buttons -->
  
</body>
</html>