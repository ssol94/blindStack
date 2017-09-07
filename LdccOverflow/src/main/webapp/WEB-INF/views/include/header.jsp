<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 한글 -->

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="header">

			<div class="col-xs-12 col-md-6">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">LOTTE</a>
				</div>

				<ul class="nav navbar-nav">
					<li class="active"><a href="#">전체 <span class="sr-only">(current)</span></a></li>
					<li><a href="#">기술</a></li>
					<li><a href="#">회사생활</a></li>
					<li><a href="#">인사</a></li>

				</ul>
			</div>

			<div class="col-xs-12 col-md-6">
				<form class="navbar-form navbar-left" role="search" id="search">


					<div class="input-group">
						<input type="text" class="form-control" placeholder="검색어입력"
							id="searchId" aria-label="...">
						<div class="input-group-btn">
							<!-- Button and dropdown menu -->
						</div>
					</div>

					<input type="button" class="btn btn-outline-success my-2 my-sm-0"
						id="searchBtn" value="검색">
				</form>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="signup">회원가입</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">회원이름
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">마이페이지</a></li>
							<li><a href="#">나의 질문</a></li>
							<li class="divider"></li>
							<li><a href="#">로그아웃 </a></li>
						</ul></li>
				</ul>


			</div>

		</div>
	</div>

</body>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<link rel="stylesheet" type="text/css" href="resources/css/style.css">

</html>