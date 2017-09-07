<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<div class="w3-center">
			<br> <span
				onclick="document.getElementById('id01').style.display='none'"
				class="w3-button w3-xlarge w3-hover-red w3-display-topright"
				title="Close Modal">&times;</span> <img
				src="https://www.lotte.co.kr/images/01_about/ci_group.jpg"
				alt="Avatar" style="width: 30%" class="w3-rounded w3-margin-top">
		</div>

		<form class="w3-container" action="/overflow/login" method="post" onsubmit="if (this.checker.checked) toMem()">
			<div class="w3-section">
				<div class="form-group">
					<select name="company" id="company" class="form-control">
						<option selected="selected" value="MOIN">기본계열사</option>
						<option value="CONS">롯데건설</option>
						<option value="LINS">롯데손해보험</option>
						<option value="CKBS">캐논코리아</option>
						<option value="LDS">롯데백화점</option>
						<option value="DOTCOM">롯데 닷컴</option>
						<option value="HIMARTMMOIN">롯데하이마트</option>
						<option value="HOMESHOPPING">롯데홈쇼핑</option>
						<option value="LCBEV">롯데칠성음료</option>
						<option value="LBEV">롯데주류</option>
						<option value="ASAHI">롯데아사히주류</option>
						<option value="DAEHONG">대홍기획</option>
						<option value="MHUB">엠허브</option>
						<option value="MBZ">모비쟆</option>
					</select>
				</div>
				<input class="w3-input w3-border w3-margin-bottom" type="text"
					placeholder="ID" name="userId" required> <input
					class="w3-input w3-border" type="password" placeholder="Password"
					name="passwd" required>
				<button id="login_btn"
					class="w3-button w3-block w3-red w3-section w3-padding"
					type="submit">로그인</button>
				<input class="w3-check w3-margin-top" type="checkbox"
					checked="checked" id="checker" name="checker"> ID 저장
				<div style="float: right;" class="w3-margin-top">
					<a href="/overflow/findIDPW">ID/비밀번호 찾기</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>