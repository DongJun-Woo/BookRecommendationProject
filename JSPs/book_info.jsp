<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>ThornBooks</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/book_info.css">
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
			<div class="book-info">
				<h2>책 정보</h2>
				<div>
					<div class="book-img">
						<img src="images/book4.jpg" alt="">
					</div>
					<div class="book-detail">
						<h1>봄처럼 너에게 간다</h1>
						<p>저자 : 홍길동</p>
						<p>가격 : 7800원</p>
						<p>줄거리 : </p>
						<span>
							심장의 고동을 들어 보라 청춘의 피는 끓는다 끓는 피에 뛰노는 심장은 거선의 기관과 같이 힘있다 이것이다
<br><br>
그러므로 그들은 길지 아니한 목숨을 사는가 싶이 살았으며 그들의 그림자는 천고에 사라지지 않는 것이다 이것은 현저하게 일월과 같은 예가 되려니와 그와 같지 못하다 할지라도
						</span>
					</div>
				</div>
			</div>
			<div class="bookStore-link">
				<h3>책 구매하러 가기</h3>
				<div>
					<a href="http://www.kyobobook.co.kr/index.laf"><img src="images/kyobo.jpg" alt=""></a>
					<a href="https://www.aladin.co.kr/home/welcome.aspx"><img src="images/aladin.jpg" alt=""></a>
					<a href="http://book.interpark.com/bookPark/html/book.html"><img src="images/interpark.jpg" alt=""></a>
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
	<script src="script/index-crawler.js"></script>
	<script src="script/custom.js"></script>
</body>
</html>