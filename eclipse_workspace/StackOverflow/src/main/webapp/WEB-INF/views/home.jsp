<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/test.css"> --%>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
	
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<style>
/* @import url(//fonts.googleapis.com/earlyaccess/hanna.css);

body {
	font-family: 'Hanna';
}
 */
.container {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
}

@media ( max-width : 768px) {
	.container {
		width: 750px;
		background: blue;
	}
	
}

@media ( max-width : 992px) {
	.container {
		width: 970px;
		background: #ff6666;
	}
	.thumbnail {
	font-size: 80px;
	}
}

@media ( max-width : 1200px) {
	.header {
		font-size: 50px;
	}
	.container {
		width: 1170px;
		font-size: 80px;
	}
	.contents {
	font-size: 60px;
	}
	.thumb {
	font-size: 50px;
	}
}

.container-fluid {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
}
</style>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!-- 한글 -->

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</head>
<body>
	<!-- 상단 네비게이션 바 -->
	<div class="container">
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
				<form class="navbar-form navbar-left" role="search">


					<div class="input-group">
						<input type="text" class="form-control" placeholder="검색어입력"
							aria-label="...">
						<div class="input-group-btn">
							<!-- Button and dropdown menu -->
						</div>
					</div>

					<button type="submit" class="btn btn-outline-success my-2 my-sm-0">검색</button>
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
		<br> <br> <br>
		<div class="junbo" style="background: #ff6666">

			<div class="contents">
				<p>안녕하십니까! 사내게시판입니다.</p>
				<p>익명게시판입니다. 임직원여러분들의 궁금한 사항들을 올려주세요!</p>
				<p>
					<a class="btn btn-primary btn-lg" href="#" role="button">자세히 보기
						&raquo;</a>
				</p>


			</div>

		</div>
		<br>

		<div class="thumb">
			<div class="col-sm-12 col-md-4" id="test">
				<div class="thumbnail">
					<img src="resources/images/hot.jpg" alt="Smiley face" height="300"
						width="300">
					<div class="caption">
						<p>화장실이 너무 더워요</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">좋아요</a> <a
								href="#" class="btn btn-primary" role="button">싫어요</a> <a
								href="#" class="btn btn-default" role="button">자세히 보기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4">
				<div class="thumbnail">
					<img src="resources/images/hot.jpg" alt="Smiley face" height="300"
						width="300">
					<div class="caption">
						<p>화장실이 너무 더워요</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">좋아요</a> <a
								href="#" class="btn btn-primary" role="button">싫어요</a> <a
								href="#" class="btn btn-default" role="button">자세히 보기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4">
				<div class="thumbnail">
					<img src="resources/images/hot.jpg" alt="Smiley face" height="300"
						width="300">
					<div class="caption">
						<p>화장실이 너무 더워요</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">좋아요</a> <a
								href="#" class="btn btn-primary" role="button">싫어요</a> <a
								href="#" class="btn btn-default" role="button">자세히 보기</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>