<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
			<div class="book-info">
				<h2>å ����</h2>
				<div>
					<div class="book-img">
						<img src="images/book4.jpg" alt="">
					</div>
					<div class="book-detail">
						<h1>��ó�� �ʿ��� ����</h1>
						<p>���� : ȫ�浿</p>
						<p>���� : 7800��</p>
						<p>�ٰŸ� : </p>
						<span>
							������ ���� ��� ���� û���� �Ǵ� ���´� ���� �ǿ� �ٳ�� ������ �ż��� ����� ���� ���ִ� �̰��̴�
<br><br>
�׷��Ƿ� �׵��� ���� �ƴ��� ����� ��°� ���� ������� �׵��� �׸��ڴ� õ�� ������� �ʴ� ���̴� �̰��� �����ϰ� �Ͽ��� ���� ���� �Ƿ��Ͽ� �׿� ���� ���ϴ� ������
						</span>
					</div>
				</div>
			</div>
			<div class="bookStore-link">
				<h3>å �����Ϸ� ����</h3>
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
	<script src="script/index-crawler.js"></script>
	<script src="script/custom.js"></script>
</body>
</html>