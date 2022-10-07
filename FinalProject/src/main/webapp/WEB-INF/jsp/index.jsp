<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="components/navbar.jsp"></jsp:include>
<div class="container mt-2">
	<h1>This is Main Page</h1>
	
</div>


<script type="text/javascript" src="${contextRoot}/js/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="${contextRoot}/js/bootstrap.bundle.js"></script>
</body>
</html>