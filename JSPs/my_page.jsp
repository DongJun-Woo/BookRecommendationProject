<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>ThornBooks</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/my_page.css">
	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/footer.css">
</head>

<body>
	<div id="wrap">
		<header>
			<div class="gnb">
				<div class="gnb-inner">
					<a href="login.jsp">�α���</a>
					<a href="join.jsp">ȸ������</a>
					<a href="my_page.jsp">����������</a>
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
		<div class="container">
			<div class="mypage-content">
				<h2>����������</h2>
				<div class="common-info">
					<h3>�⺻����</h3>
					<p>�̸�:</p>
					<hr>
					<p>����:</p>
				</div>
				<div class="contact-info">
					<h3>����ó ����</h3>
					<p>��ȭ��ȣ:</p>
					<hr>
					<p>�̸���:</p>
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
					����� ��Ϲ�ȣ: 1234-1234<br>
					��ǥ��ȭ:1234-1234<br>
					��õ������
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
	<script src="script/search.js"></script>
	<script src="script/custom.js"></script>
</body></html>