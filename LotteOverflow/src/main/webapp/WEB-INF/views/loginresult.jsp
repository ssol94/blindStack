<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>로그인 내용</title>
</head>
<body>
	<p>로그인 ID : ${ansData.userId}</p>
	<p>로그인 비밀번호 : ${ansData.passwd}</p>
	<p>로그인 회사 : ${ansData.company}</p>
</body>
</html>