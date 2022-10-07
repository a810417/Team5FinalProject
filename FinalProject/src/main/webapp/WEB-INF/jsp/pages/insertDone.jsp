<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Done</title>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
<jsp:include page="../components/navbar.jsp"></jsp:include>
<form method="POST" action="insertMem.controller" enctype="multipart/form-data"
		modelAttribute="member">
		<table>
			<tr>
				<td>Account: </td>
				<td><input type="text" name="account" value="${newMem.account}"></input></td>
			</tr>
			<tr>
				<td>Password: </td>
				<td><input type="text" name="password" value="${newMem.password}"></input></td>
			</tr>
			<tr>
				<td>Nickname: </td>
				<td><input type="text" name="nickname" value="${newMem.nickname}"></input></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><input type="text" name="email" value="${newMem.email}"></input></td>
			</tr>
			<tr>
				<td>Photo: </td>
				<td><img alt="" src="${contextRoot}/downloadImage/${newMem.id}"></td>
			</tr>
			<tr>
				<td colspan="2"><button value="send">Send</button></td>
			</tr>
		</table>

	</form>
	</div>
</body>
</html>