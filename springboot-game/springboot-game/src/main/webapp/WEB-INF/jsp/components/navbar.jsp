<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<title>Nav bar</title>
</head>
<body>
<div class= "container">
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">MyGame</a>
	<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
  <ul class="navbar-nav">
  <li class="nav-item active">
      <a class="nav-link" href="backend.controller">後台頁面</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="show.controller">顯示全部會員</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="insertMember.controller">新增會員</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="findMember.controller">搜尋單一會員</a>
    </li>
    <li class="nav-item">
      <a class="nav-link " href="typeMOHU.controller">模糊搜尋</a>
    </li>
  </ul>
  </div>
</nav>
</div>
<script type="text/javascript" src="${contextRoot}/js/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="${contextRoot}/js/bootstrap.bundle.js"></script>
</body>
</html>