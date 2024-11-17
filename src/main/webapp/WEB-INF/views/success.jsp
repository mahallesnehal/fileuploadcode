<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome ${USERNAME} , below is your uploaded file :</h1>
	<br>

	<img alt="profile_pic"
		src="<c:url value="/images/${FILENAME}"></c:url>" height="300"
		width="300" />


	<!-- <h3>${pageContext.request.contextPath}</h3>  -->
</body>
</html>