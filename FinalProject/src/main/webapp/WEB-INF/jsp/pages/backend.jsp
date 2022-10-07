<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BackEnd Page</title>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../components/navbar.jsp"></jsp:include>
<div class="container">
<h1>後台主頁</h1>
<button type="button" class="btn btn-dark"><a href="show.controller" style="text-decoration: none; color: white">顯示全部會員</a></button>
<button type="button" class="btn btn-dark"><a href="insertMember.controller" style="text-decoration: none; color: white">新增會員</a></button>
<button type="button" class="btn btn-dark"><a href="findMember.controller" style="text-decoration: none; color: white">搜尋單一會員</a></button>
<button type="button" class="btn btn-dark"><a href="typeMOHU.controller" style="text-decoration: none; color: white">模糊搜尋</a></button>
</div>
</body>
</html>