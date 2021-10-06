<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mem_id = (String)session.getAttribute("idKey");
	//관리자 페이지 추가를 위한 수정
	String mem_role = (String)session.getAttribute("roleKey");
	
	String log="";
	if(mem_id == null) log ="<a href=login.jsp>로그인</a>";
	else log = "<a href=logout.do>로그아웃</a>";

	String mem="";
	if(mem_role == null) mem ="<a href=my_page.jsp> 마이페이지 </a>";
	else mem = "<a href=mem_info.jsp> 관리자페이지 </a>";
%>
<div class="gnb">
	<div class="gnb-inner">
		<%=log%>
		<a href="join.jsp">회원가입</a>
		<%=mem%>
	</div>
</div>