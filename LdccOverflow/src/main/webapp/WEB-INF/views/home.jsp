<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main 화면</title>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!-- 한글 -->

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


<script charset="utf-8">
	var slangText = "";
	var slangTxtArr = [];
	window.onscroll = function(ev) {
		if ((window.innerHeight + window.scrollY) + 100 >= document.body.offsetHeight) { // 스크롤이 맨 아래 닿는 것을 인지
			//window.innerHeight : 브라우저 윈도우 두께를 제외한 실질적 세로길이
			//scrollTop : 스크롤되어 올라간 만큼의 높이
			//clientHeight : 눈에 보이는 만큼의 높이
			var board = $("#board");
			board.append("<div class='col-sm-12 col-md-4'><img src='resources/images/hot.jpg' alt='Smiley face' height='300' width='300'><p>화장실이 너무 더워요</p></div>");
			board.append("<div class='col-sm-12 col-md-4'><img src='resources/images/hot.jpg' alt='Smiley face' height='300' width='300'><p>화장실이 너무 더워요</p></div>");
			board.append("<div class='col-sm-12 col-md-4'><img src='resources/images/hot.jpg' alt='Smiley face' height='300' width='300'><p>화장실이 너무 더워요</p></div>");
		}
	};

	document.addEventListener('keyup', function(e) { 
		//if (e.keyCode === 44) { // 44: print screen
			if ( (navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) ) {
				clipboardData.clearData(); //ie에서만 적용
			}
		//}
	});

	window.onload = function() {
		document.getElementById('searchBtn').onclick = function() {
			readFile("resources/slangList.txt"); //정렬된 파일

			for (var i = 0; i < document.getElementById('searchId').value.length; i++) {
				(checkSlangUpgrade(document.getElementById('searchId').value, slangTxtArr))? console.log('6. good!') : console.log('6. not good!');
			}
		}

	};

	function readFile(filename) {
		var xmlhttp;
		var contentType = "charset=utf-8";

		if (window.XMLHttpRequest) {
			xmlhttp = new XMLHttpRequest();
		} else {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}

		xmlhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				slangText = this.responseText;
				parsingText(slangText, ',');
			}
		};

		xmlhttp.open("GET", filename, true);
		xmlhttp.setRequestHeader('Content-Type', contentType);
		xmlhttp.send();

		for (var i = 0; i < slangTxtArr.length; i++) {
			slangTxtArr[i] = slangTxtArr[i].replace(/(\s*)/g, ""); // 모든 공백제거
		}

		return true;
	}

	function parsingText(text, ch) {
		slangTxtArr = text.split(ch);
	}


	function strcmp(str1, str2) {
		return ((str1 == str2) ? 0 : ((str1 > str2) ? 1 : -1));
	}

	function strncmp(str1, str2, str1_start, str1_stop) { //sentence의 모든 글작
		var j = 0;
		for (var i = str1_start; i < str1_stop;) {
			if (str1[i] > str2[j]) {
				return 1;
			} else if (str1[i] == str2[j]) {
				i++;
				j++;
			} else if (str1[i] < str2[j]) {
				return -1;
			}
		}
	}

	function strtok(str, start, stop) {
		var tmp = [];
		var j = 0;
		for (var i = start; i < stop; i++) {

			tmp[j] = str[i];
		}
		return tmp;
	}

	function checkSlangUpgrade(sentence, slangTxt) {
		var left = 0;// slangTxt의 왼쪽 범위
		var right = slangTxt.length - 1; // slangTxt의 오른쪽 범위
		var mid = 0;
		for (var i = 0; i < sentence.length; i++) {

			mid = 0;
			while ((left <= right) && (right <= slangTxt.length) && (left >= 0)) {
				mid = Math.floor((left + right) / 2);

				var midDataLength = calLength(slangTxtArr[mid]);
				/* var result = containWord(sentence, slangTxtArr[mid]);
				if (result != null) {// data == 비교데이터 // sentence에 해당 slang이 포함되어 있는지 체크하는 함수
					return result;
				} */
				var finish = false;
				var result = sentence;
				
				while ((result = containWord(result, slangTxtArr[mid])) != null) {
					finish = true;
					document.getElementById('searchId').value = result;
				}

				var result = strncmp(sentence, slangTxtArr[mid], i, i
						+ midDataLength);
				if (result == -1) {  // data < 비교데이터					
					if(mid - 1 >= 0 ) right = mid - 1; else  break;
				} else if (result == 1) { // data > 비교데이터					
					if (mid + 1 >= 0)
						left = mid + 1;
					else
						break;
				}
				if (finish) {
					return true;
				}
			}
		}
		return false;
	}

	function containWord(sentence, word) { // indexOf() 배열도 가능한 버젼 : sentence에 word가 포함되어있는지 체크하는 함수// test ok

		var sen_length = sentence.length;
		var word_length = calLength(word);
		var wordIndex = 0;
		for (var i = 0; i < sen_length;) {

			if (sentence[i] == word[wordIndex]) {
				wordIndex++;
				if (wordIndex != word_length) {
					i++;
				}
			} else {
				i++;
			}
			if (wordIndex == word_length) {
				return sentence.replace(word, makeHeart(word_length));
			}
		}
		return null;
	}
	
	function makeHeart(length){ // 욕에 해당하는 글자수만큼 하트 만들어주기
		var str = ''; 
	
		for(var i = 0 ; i < length ; i++){
			str += '♥';
		}
		return str;
	}

	function calLength(arr) { // 배열 길이
		var length = 0;

		while (arr[length] != null) { length++; }
		
		return length;
	}

</script>
</head>
<body>

	<!-- 상단 네비게이션 바 -->
	<div class="container">
		<jsp:include page="include/header.jsp" />
		<br> <br> <br>
		<div class="junbo" style="background: #ff6666">

			<div class="contents">
				<p>안녕하십니까! 사내게시판입니다.</p>
				<p>익명게시판입니다. 임직원여러분들의 궁금한 사항들을 올려주세요!</p>
				<p>
					<button class="btn btn-warning" onclick="ClipBoardClear()">자세히 보기</button>
					<button class="btn btn-warning" onclick="location.href='board'">게시글 작성</button>
				</p>


			</div>

		</div>
		<br>

		<div class="thumb" id="board">
			<div class="col-sm-12 col-md-4" id="test">
				<div class="thumbnail">
					<img src="resources/images/hot.jpg" alt="Smiley face" height="300"
						width="300">
					<div class="caption">
						<p>화장실이 너무 더워요</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">좋아요</a> 
							<a href="#" class="btn btn-primary" role="button">싫어요</a> 
							<a href="#" class="btn btn-default" role="button">자세히 보기</a>
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
							<a href="#" class="btn btn-primary" role="button">좋아요</a> 
							<a href="#" class="btn btn-primary" role="button">싫어요</a> 
							<a href="#" class="btn btn-default" role="button">자세히 보기</a>
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
							<a href="#" class="btn btn-primary" role="button">좋아요</a> 
							<a href="#" class="btn btn-primary" role="button">싫어요</a> 
							<a href="#" class="btn btn-default" role="button">자세히 보기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4" id="test">
				<div class="thumbnail">
					<img src="resources/images/hot.jpg" alt="Smiley face" height="300"
						width="300">
					<div class="caption">
						<p>화장실이 너무 더워요</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">좋아요</a> 
							<a href="#" class="btn btn-primary" role="button">싫어요</a> 
							<a href="#" class="btn btn-default" role="button">자세히 보기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4" id="test">
				<div class="thumbnail">
					<img src="resources/images/hot.jpg" alt="Smiley face" height="300"
						width="300">
					<div class="caption">
						<p>화장실이 너무 더워요</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">좋아요</a> 
							<a href="#" class="btn btn-primary" role="button">싫어요</a> 
							<a href="#" class="btn btn-default" role="button">자세히 보기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4" id="test">
				<div class="thumbnail">
					<img src="resources/images/hot.jpg" alt="Smiley face" height="300"
						width="300">
					<div class="caption">
						<p>화장실이 너무 더워요</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">좋아요</a> 
							<a href="#" class="btn btn-primary" role="button">싫어요</a> 
							<a href="#" class="btn btn-default" role="button">자세히 보기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4" id="test">
				<div class="thumbnail">
					<img src="resources/images/hot.jpg" alt="Smiley face" height="300"
						width="300">
					<div class="caption">
						<p>화장실이 너무 더워요</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">좋아요</a> 
							<a href="#" class="btn btn-primary" role="button">싫어요</a> 
							<a href="#" class="btn btn-default" role="button">자세히 보기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4" id="test">
				<div class="thumbnail">
					<img src="resources/images/hot.jpg" alt="Smiley face" height="300"
						width="300">
					<div class="caption">
						<p>화장실이 너무 더워요</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">좋아요</a> 
							<a href="#" class="btn btn-primary" role="button">싫어요</a> 
							<a href="#" class="btn btn-default" role="button">자세히 보기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4" id="test">
				<div class="thumbnail">
					<img src="resources/images/hot.jpg" alt="Smiley face" height="300"
						width="300">
					<div class="caption">
						<p>화장실이 너무 더워요</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">좋아요</a> 
							<a href="#" class="btn btn-primary" role="button">싫어요</a> 
							<a href="#" class="btn btn-default" role="button">자세히 보기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4" id="test">
				<div class="thumbnail">
					<img src="resources/images/hot.jpg" alt="Smiley face" height="300"
						width="300">
					<div class="caption">
						<p>화장실이 너무 더워요</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">좋아요</a> 
							<a href="#" class="btn btn-primary" role="button">싫어요</a> 
							<a href="#" class="btn btn-default" role="button">자세히 보기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4" id="test">
				<div class="thumbnail">
					<img src="resources/images/hot.jpg" alt="Smiley face" height="300"
						width="300">
					<div class="caption">
						<p>화장실이 너무 더워요</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">좋아요</a> 
							<a href="#" class="btn btn-primary" role="button">싫어요</a> 
							<a href="#" class="btn btn-default" role="button">자세히 보기</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4" id="test">
				<div class="thumbnail">
					<img src="resources/images/hot.jpg" alt="Smiley face" height="300"
						width="300">
					<div class="caption">
						<p>화장실이 너무 더워요</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">좋아요</a> 
							<a href="#" class="btn btn-primary" role="button">싫어요</a> 
							<a href="#" class="btn btn-default" role="button">자세히 보기</a>
						</p>
					</div>
				</div>
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
