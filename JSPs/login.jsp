<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>ThornBooks</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/login.css">
	<link rel="stylesheet" href="css/footer.css">
</head>

<body>
	<div id="wrap">
		<header>
			<%@ include file="Top.jsp" %>
			<div class="logo">
				<a href="index.jsp">
					<h2>ThornBooks</h2>
				</a>
			</div>
			<div class="search">
				<input type="text" placeholder="Search">
				<button></button>
			</div>
		</header>
		<div class="container">
			<h3>로그인</h3>
			<form name="login" action="login.do" method="GET">
				<div class="input-box">
					<input id="username" type="text" name="username" placeholder="아이디">
					<label for="username">아이디</label>
				</div>
				<div class="input-box">
					<input id="password" type="password" name="password" placeholder="비밀번호">
					<label for="password">비밀번호</label>
				</div>
				<input type="submit" value="로그인">
			</form>
		</div>
		<footer>
			<div class="footer-inner">
				<div class="footer-logo">
					<a href="index.jsp">ThornBooks</a>
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
	<script src="script/index-crawler.js"></script>
	<script src="script/custom.js"></script>
</body>