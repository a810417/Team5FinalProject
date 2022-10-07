<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>Form</h3>
<form action="hello.controller" method="get">
<table>
<tr>
<td>Name: </td>
<td><input type="text" name="name"></input></td>
<td>${errors.name}</td>
</tr>
<tr>
<td><input type="submit"></td>
</tr>

</table>
</form>

</body>
</html>