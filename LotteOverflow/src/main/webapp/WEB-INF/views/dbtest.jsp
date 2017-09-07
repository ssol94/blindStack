<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h1>
    user list  
</h1>
<table border="1">
    <tr align="center">
        <td width="100px">아이디</td>
        <td width="100px">비번</td>
        <td width="200px">이메일</td>
    </tr>
<c:forEach var="user" items="${users}">
    <tr align="center">
        <td>${user.id}</td>
        <td>${user.name}</td>
        <td>${user.cnt}</td>
    </tr>
</c:forEach>
</table>
</body>
</html>
