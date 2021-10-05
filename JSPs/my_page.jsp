<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*"
	import="main.*"
    pageEncoding="UTF-8"%>
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
		<%
			request.setCharacterEncoding("UTF-8");
			String mName = request.getParameter("name");
			MemberDto mDto = new MemberDto();
			mDto.setName(mName);
			MemberDao dao = new MemberDao();
			List memList = dao.listmembers(mDto);
			
			String id = "";
	        String name = "";
	        String p_num = "";
	        String email = "";
	        String gender = "";
	        
			for(int i = 0; i < memList.size(); i++){
				MemberDto dto = (MemberDto) memList.get(i);
				id = dto.getId();
		        name = dto.getName();
		        p_num = dto.getPhonenumber();
		        email = dto.getMail();
		        gender = dto.getGender();
		        //동명 이인이 있을 경우가 있기때문에 if문 사용
		        if(id.equals(mem_id)){
		        	break;
		        }
		    }
		%>
		
		<div class="container">
			<div class="mypage-content">
				<h2>마이페이지</h2>
				<div class="common-info">
					<h3>기본정보</h3>
					<p>이름: <%=name%></p>
					<hr>
					<p>성별: <%=gender%></p>
				</div>
				<div class="contact-info">
					<h3>연락처 정보</h3>
					<p>전화번호: <%=p_num%></p>
					<hr>
					<p>이메일: <%=email%></p>
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
	<script src="script/search.js"></script>
	<script src="script/custom.js"></script>
</body></html>