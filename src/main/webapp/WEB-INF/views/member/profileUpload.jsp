<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프로필 사진 업로드</title>
</head>
<body>
<div class="modal fade" id="uploadModal" role="dialog">
	<form action="uploadProfile.do" method="POST"
		enctype="multipart/form-data">
		<img id="profileImg" src="#" alt="profileImg"
			style="border: 1px solid black; widgh: 150px; height: 150px;" /><br>
		<input type='file' id="imgUpload" name="photo" />
	</form>
	</div>
</body>
</html>