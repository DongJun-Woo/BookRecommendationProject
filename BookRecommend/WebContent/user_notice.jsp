<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>ThornBooks</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/admin_notice.css">
	<link rel="stylesheet" href="css/paging.css">
</head>

<body>
	<div id="wrap">
		<%@ include file="header.jsp" %>
		<div class="container">
			<div class="noticeManage">
				<h2>공지사항</h2>
				<div class="manageTable">
					<div class="userTh">
						<p>No</p>
						<p>제목</p>
						<p>작성자</p>
						<p>날짜</p>
						<p>조회수</p>
					</div>
					<div class="userInfoTable">
						<ul class="userInfo">
							<li>게시물 번호</li>
							<li><a href="notice.html">제목</a></li>
							<li>작성자</li>
							<li>날짜</li>
							<li>조회수</li>
						</ul>
						<ul class="userInfo">
							<li>게시물 번호</li>
							<li><a href="notice.html">제목</a></li>
							<li>작성자</li>
							<li>날짜</li>
							<li>조회수</li>
						</ul>
						<ul class="userInfo">
							<li>게시물 번호</li>
							<li><a href="notice.html">제목</a></li>
							<li>작성자</li>
							<li>날짜</li>
							<li>조회수</li>
						</ul>
						<ul class="userInfo">
							<li>게시물 번호</li>
							<li><a href="notice.html">제목</a></li>
							<li>작성자</li>
							<li>날짜</li>
							<li>조회수</li>
						</ul>
						<ul class="userInfo">
							<li>게시물 번호</li>
							<li><a href="notice.html">제목</a></li>
							<li>작성자</li>
							<li>날짜</li>
							<li>조회수</li>
						</ul>
						<ul class="userInfo">
							<li>게시물 번호</li>
							<li><a href="notice.html">제목</a></li>
							<li>작성자</li>
							<li>날짜</li>
							<li>조회수</li>
						</ul>
						<ul class="userInfo">
							<li>게시물 번호</li>
							<li><a href="notice.html">제목</a></li>
							<li>작성자</li>
							<li>날짜</li>
							<li>조회수</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp" %>
	</div>

	<script src="script/jquery-3.5.1.min.js"></script>
	<script src="script/paging_um.js"></script>
</body>
</html>