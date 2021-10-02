<%@ page language="java" contentType="text/html; charset=utf-8"
	import="java.util.*"
	import="com.member.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
h1{
	text-alight: center
	}
</style>
<meta charset="utf-8">
<title>회원 정보 페이지</title>
</head>
<body>
	<h1>회원정보 페이지 출력</h1>
<%
	//불러오기
	request.setCharacterEncoding("utf-8");
	String mName = request.getParameter("name");
	MemberVO mvo = new MemberVO();
	mvo.setName(mName);
	MemberDao dao = new MemberDao();
	List memList = dao.listmembers(mvo);
%>

<table border=1 style="width:800px;align:center">
	<tr align="center" bgcolor="yellow">
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>전화번호</th>
		<th>이메일</th>
		<th>성별</th>
		<th>가입날짜</th>
	</tr>

<%
	//조회하기
	for(int i = 0; i < memList.size(); i++){
		MemberVO vo = (MemberVO) memList.get(i);
		String id = vo.getId();
        String pwd = vo.getPwd();
        String name = vo.getName();
        String p_num = vo.getP_num();
        String email = vo.getEmail();
        String gender = vo.getGender();
        Date joinDate = vo.getJoinDate();
%>
	
	<tr align="center">
		<td><%=id%></td>
		<td><%=pwd%></td>
		<td><%=name%></td>
		<td><%=p_num%></td>
		<td><%=email%></td>
		<td><%=gender%></td>
		<td><%=joinDate%></td>
<%
	}
%>
</table>
</body>
</html>