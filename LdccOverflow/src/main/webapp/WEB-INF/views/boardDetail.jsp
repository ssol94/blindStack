<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!-- 한글 -->
<script>
	
</script>
</head>
<body>
	<header>
		<jsp:include page="include/header.jsp"></jsp:include>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<div class="content_header">

			<table class="table" style="width: 80%">
				<tr class="active">
					<th>제목</th>
					<td>제목이다</td>
					<th>카테고리</th>
					<td>
						<div class="dropdown">
							<button class="btn btn-default dropdown-toggle" type="button"
								id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
								기술 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu" role="menu"
								aria-labelledby="dropdownMenu1">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="#">회사생활</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="#">인사</a></li>
							</ul>
						</div>
					</td>
				</tr>
				<tr class="success">
					<th>작성일자</th>
					<td>2017-09-06</td>
					<th>작성자</th>
					<td>eunsol</td>
				</tr>
				<tr class="warning">
					<th colspan="4">내용</th>
				</tr>
				<tr class="info">
					<th colspan="4" rowspan="8">ㄻㅇㄴㄻㄴㅇㄹ</th>
				</tr>
			</table>


		</div>
	</header>

	<canvas id="canvas" width="500" height="500">

</canvas>
</body>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</html>