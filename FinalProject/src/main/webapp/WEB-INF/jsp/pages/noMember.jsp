<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>No Member</title>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
				<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../components/navbar.jsp"></jsp:include>
				<div class="container">
				沒有這個會員!!
				<a href="${contextRoot}/backend.controller">返回後台首頁</a>
				</div>
</body>
</html>