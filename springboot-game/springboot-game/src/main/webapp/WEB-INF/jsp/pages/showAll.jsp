<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<title>Show All Member</title>
				<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
				<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
			</head>

			<body>
				<jsp:include page="../components/navbar.jsp"></jsp:include>
				<div class="container">
					<table>
						
							<tr>
								<th>id</th>
								<th>account</th>
								<th>password</th>
								<th>nickname</th>
								<th>email</th>
								<th>create_at</th>
								<th>photo</th>
								<th>Update</th>
								<th>Delete</th>
							</tr>
							<c:forEach var="list" items="${list}">
								<tr>
									<td><input value="${list.id}" /></td>
									<td><input value="${list.account}" /></td>
									<td><input value="${list.password}" /></td>
									<td><input value="${list.nickname}" /></td>
									<td><input value="${list.email}" /></td>
									<td><input value="${list.create_at}" /></td>
									<td><img width="200px" height="160px" alt="" src="${contextRoot}/downloadImage/${list.id}"></td>
									<td><a href="${contextRoot}/updateMember/${list.id}">Update</a></td>
									<td><a href="${contextRoot}/delete/${list.id}">Delete</a></td>									
								</tr>
							</c:forEach>
						
					</table>
				</div>
			</body>

			</html>