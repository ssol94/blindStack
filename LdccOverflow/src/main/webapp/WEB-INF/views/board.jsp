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
		<br> <br> <br> <br> <br> <br> <br>
		<br>
		<div class="content_header">

			<form action="/my-handling-form-page" method="post">
				<div>
					<label for="name">제목</label> <input type="text" id="name" />
				</div>
				<div>
					<label for="category">카테고리</label> <input type="text" id="category" />
				</div>
				<div>
					<label for="date">작성일자</label> <input type="date" id="date" />
				</div>
				<div>
					<label for="writer">작성자</label> <input type="text" id="writer" />
				</div>
				<div>
					<label for="content">내용</label>
					<textarea id="msg"></textarea>
				</div>
				<div>
				<button id="save">저장</button>
				<button id="cancle">취소</button>
					<!-- <input type="button" id="save" value="저장" /> <input type="button"
						id="cancle" value="취소" /> -->
				</div>
			</form>

		</div>
	</header>

	<canvas id="canvas" width="500" height="500">

</canvas>
</body>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</html>