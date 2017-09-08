<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<c:set var="member" value="${member}" scope="session" />
	<c:out value="${member}" default="널값 들어옴" />
	<c:choose>
		<c:when test="${null ne member }">
			<c:redirect url="/" />
		</c:when>
		<c:when test="${null eq member }">
			<c:redirect url="/" />
		</c:when>
	</c:choose>
</body>
</html>
