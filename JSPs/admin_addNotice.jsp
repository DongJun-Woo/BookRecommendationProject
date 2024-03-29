<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>ThornBooks</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/admin_addNotice.css">
	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/footer.css">
</head>

<body>
	<div id="wrap">
		<header>
			<div class="gnb">
				<div class="gnb-inner">
					<a href="login.html">로그인</a>
					<a href="join.html">회원가입</a>
					<a href="my_page.html">마이페이지</a>
				</div>
			</div>
			<div class="logo">
				<a href="index.html">
					<h2>ThornBooks</h2>
				</a>
			</div>
			<div class="search">
				<input type="text" placeholder="Search">
				<button></button>
			</div>
		</header>
		<div class="container">
			<div class="addNotice-contents">
				<h2>공지사항 작성</h2>
				<div class="notice-header">
					<label for="">제목</label>
					<input type="text">
				</div>
				<div class="notice-contents">
					<label for="">내용</label>
					<textarea name="" id="" cols="120" rows="15"></textarea>
				</div>
				<div class="submit-btn">
					<input type="submit">
				</div>
			</div>
		</div>
		<footer>
			<div class="footer-inner">
				<div class="footer-logo">
					<a href="index.html">ThornBooks</a>
				</div>
				<div class="copyright">
					<p>
					사업자 등록번호: 1234-1234<br>
					대표전화:1234-1234<br>
					인천광역시
					</p>
				</div>
				<div class="sns">
					<a href="#none"><img src="images/facebook.png" alt="facebook"></a>
					<a href="#none"><img src="images/kakao-talk.png" alt="kakao-talk"></a>
					<a href="#none"><img src="images/twitter.png" alt="twitter"></a>
				</div>
			</div>
		</footer>
	</div>

	<script src="script/jquery-3.5.1.min.js"></script>
</body>
</html>