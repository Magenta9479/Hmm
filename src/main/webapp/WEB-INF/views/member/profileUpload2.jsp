<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<form action="uploadProfile.do" method="POST"
		enctype="multipart/form-data">
		<img id="profileImg" src="#" alt="profileImg"
			style="border: 1px solid black; widgh: 150px; height: 150px;" /><br>
		<input type='file' id="imgUpload" name="photo" />
	</form>
