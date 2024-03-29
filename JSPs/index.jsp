<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>ThornBooks</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/header.css">
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
			<div class="books">
				<div class="book">
					<a href="#none">
						<img src="images/book1.jpg" alt="book1">
						<span class="book-info">
							<span class="book-title">하늘위로 높이 뛰어봐</span>
							<span class="author">저자</span>
							<span class="summary">줄거리</span>
							<span class="price">가격</span>
						</span>
					</a>
				</div>
				<div class="book">
					<a href="#none">
						<img src="images/book2.jpg" alt="book2">
						<span class="book-info">
							<span class="book-title">깊고 깊은 산골짜기에</span>
							<span class="author">저자</span>
							<span class="summary">줄거리</span>
							<span class="price">가격</span>
						</span>
					</a>
				</div>
				<div class="book">
					<a href="#none">
						<img src="images/book3.jpg" alt="book3">
						<span class="book-info">
							<span class="book-title">꽃잎이 떨어지면</span>
							<span class="author">저자</span>
							<span class="summary">줄거리</span>
							<span class="price">가격</span>
						</span>
					</a>
				</div>
				<div class="book">
					<a href="#none">
						<img src="images/book4.jpg" alt="book4">
						<span class="book-info">
							<span class="book-title">봄처럼 너에게 간다</span>
							<span class="author">저자</span>
							<span class="summary">줄거리</span>
							<span class="price">가격</span>
						</span>
					</a>
				</div>
				<div class="book">
					<a href="#none">
						<img src="images/book5.jpg" alt="book5">
						<span class="book-info">
							<span class="book-title">프레임형 무료표지</span>
							<span class="author">저자</span>
							<span class="summary">줄거리</span>
							<span class="price">가격</span>
						</span>
					</a>
				</div>
				<div class="book">
					<a href="#none">
						<img src="images/book6.jpg" alt="book6">
						<span class="book-info">
							<span class="book-title">내가 담은 글</span>
							<span class="author">저자</span>
							<span class="summary">줄거리</span>
							<span class="price">가격</span>
						</span>
					</a>
				</div>
			</div>
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
	<script type="text/javascript"><%@include file="script/index_crawler.js"%></script>
	<script src="script/custom.js"></script>
</html>