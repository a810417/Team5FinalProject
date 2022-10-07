<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Member Page</title>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../components/navbar.jsp"></jsp:include>
<div class="container">
<form action="<c:url value='/updateAction' />" method="POST" enctype="multipart/form-data" modelAttribute="member">

<table>
			<tr>
				<td>Account: </td>
				<td><input type="text" name="account" value="${mem.account}"></input></td>
			</tr>
			<tr>
				<td>Password: </td>
				<td><input type="text" name="password" value="${mem.password}"></input></td>
			</tr>
			<tr>
				<td>Nickname: </td>
				<td><input type="text" name="nickname" value="${mem.nickname}"></input></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><input type="text" name="email" value="${mem.email}"></input></td>
			</tr>
			<tr>
				<td>Photo: </td>
				<td><img alt="" src="${contextRoot}/downloadImage/${mem.id}"></td>
				<td><input type="file" name="photo" value="${mem.photo}"/></td>
											
			</tr>
			<tr>
			<td><input type="hidden" name="id" value="${mem.id}"></td>
			</tr>
			<tr>
				<td colspan="2"><button value="send">Send</button></td>
			</tr>
		</table>

</form>
</div>
<br/>
<br/>
<br/>
<a href="${contextRoot}/backend.controller">返回後台首頁</a>

</body>
</html>