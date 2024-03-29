<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>ThornBooks</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/admin_notice.css">
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
			<div class="noticeManage">
				<h2>공지사항</h2>
				<div class="insert-btn">
					<a href="admin_addNotice.html">작성</a>
				</div>
				<div class="manageTable">
					<div class="userTh">
						<p>No</p>
						<p>제목</p>
						<p>작성자</p>
						<p>날짜</p>
						<p>조회수</p>
						<p>관리</p>
					</div>
					<div class="userInfoTable">
						<ul class="userInfo">
							<li>게시물 번호</li>
							<li>제목</li>
							<li>작성자</li>
							<li>날짜</li>
							<li>조회수</li>
							<li>
								<input type="button" value="수정">
								<input type="button" value="삭제">
							</li>
						</ul>
						<ul class="userInfo">
							<li>게시물 번호</li>
							<li>제목</li>
							<li>작성자</li>
							<li>날짜</li>
							<li>조회수</li>
							<li>
								<input type="button" value="수정">
								<input type="button" value="삭제">
							</li>
						</ul>
						<ul class="userInfo">
							<li>게시물 번호</li>
							<li>제목</li>
							<li>작성자</li>
							<li>날짜</li>
							<li>조회수</li>
							<li>
								<input type="button" value="수정">
								<input type="button" value="삭제">
							</li>
						</ul>
						<ul class="userInfo">
							<li>게시물 번호</li>
							<li>제목</li>
							<li>작성자</li>
							<li>날짜</li>
							<li>조회수</li>
							<li>
								<input type="button" value="수정">
								<input type="button" value="삭제">
							</li>
						</ul>
						<ul class="userInfo">
							<li>게시물 번호</li>
							<li>제목</li>
							<li>작성자</li>
							<li>날짜</li>
							<li>조회수</li>
							<li>
								<input type="button" value="수정">
								<input type="button" value="삭제">
							</li>
						</ul>
						<ul class="userInfo">
							<li>게시물 번호</li>
							<li>제목</li>
							<li>작성자</li>
							<li>날짜</li>
							<li>조회수</li>
							<li>
								<input type="button" value="수정">
								<input type="button" value="삭제">
							</li>
						</ul>
						<ul class="userInfo">
							<li>게시물 번호</li>
							<li>제목</li>
							<li>작성자</li>
							<li>날짜</li>
							<li>조회수</li>
							<li>
								<input type="button" value="수정">
								<input type="button" value="삭제">
							</li>
						</ul>
					</div>
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