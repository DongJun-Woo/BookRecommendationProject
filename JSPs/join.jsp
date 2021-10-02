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
	<link rel="stylesheet" href="css/join.css">
	<link rel="stylesheet" href="css/footer.css">
</head>

<body>
	<div id="wrap">
		<header>
			<div class="gnb">
				<div class="gnb-inner">
					<a href="login.jsp">로그인</a>
					<a href="#none">회원가입</a>
					<a href="my_page.jsp">마이페이지</a>
				</div>
			</div>
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
		<form name = "joinForm" method = "get" action = "/WEB/register.do">
		<div class="container">
			<h3>회원가입</h3>
			<form name="join" action="index.jsp" method="POST">
				<div class="row">
					<div class="field">
						<label for="">아이디<em>*</em></label>
						<input type="text" name = "joinid" required>
					</div>
					<div class="field">
						<label for="">비밀번호<em>*</em></label>
						<input type="password" name = "joinpw" required>
					</div>
				</div>
				<div class="row">
					<div class="field">
						<label for="">이름<em>*</em></label>
						<input type="text" name = "joinname" required>
					</div>
					<div class="field">
						<label for="">이메일<em>*</em></label>
						<input type="email" name = "joinmail" required>
					</div>
				</div>
				<div class="row">
					<div class="field">
						<label for="">전화번호<em>*</em></label>
						<input type="tel" required name="phoneNum" maxlength="13">
					</div>
					<div class="field">
						<label for="">성별<em>*</em></label>
						<div>
							<input type="radio" name="gender" value="남성" checked>남
							<input type="radio" name="gender" value="여성">여
						</div>
					</div>
					<div class ="field">
						<label for = "">역할<em>*</em></label>
						<div>
							<input type="radio" required name ="role" value ="일반회원" checked>일반회원
						</div>
					</div>
				</div>
				<input type="submit" name="submit" value="회원가입">
			</form>
		</div>
		</form>
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
</html>