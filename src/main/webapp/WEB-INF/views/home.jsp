<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<c:set var="member" value="${sessionScope.member}" />
<body>
<c:out value="${member}" default="널값 들어옴"/>
	<c:if test="${null ne member }">
		<c:redirect url="/hmm" />
	</c:if>
	<h1>Login Failed!!!!</h1>
</body>
</html>
