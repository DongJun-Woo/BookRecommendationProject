<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*"
	import="com.shop.user.*"
	import="com.shop.user.Impl.*"
    pageEncoding="UTF-8"%>
<%
	String mem_id = (String)session.getAttribute("idKey");
	//관리자 페이지 추가를 위한 수정
	String mem_role = (String)session.getAttribute("roleKey");
	
	//my_page.jsp에서 잘라옴
	request.setCharacterEncoding("UTF-8");
	String mName = request.getParameter("name");
	MemberDto mDto = new MemberDto();
	mDto.setName(mName);
	MemberDao dao = new MemberDao();
	List memList = dao.listmembers(mDto);
	
	String id = "";
    String name = "";
    String role = "";
    
	for(int i = 0; i < memList.size(); i++){
		MemberDto dto = (MemberDto) memList.get(i);
		id = dto.getId();
        name = dto.getName();
        role = dto.getRole();
        //동명 이인이 있을 경우가 있기때문에 if문 사용
        if(id.equals(mem_id)){
        	break;
        }
    }
	
	String log="";
	if(mem_id == null) log ="<a href=login.jsp>로그인</a>";
	else log = "<a href=logout.do>로그아웃</a>";
	
	String mem="";
	if(role == null) mem ="<a href=my_page.jsp> 마이페이지 </a>";
	else mem = "<a href=mem_info.jsp> 관리자페이지 </a>";
	
	String noti="";
	if(role == null) noti ="<a href=user_notice.jsp>공지사항</a>";
	else noti = "<a href=admin_notice.jsp>공지사항</a>";
%>
<div class="gnb">
	<div class="gnb-inner">
		<%=noti%>
		<%=log%>
		<a href="join.jsp">회원가입</a>
		<%=mem%>
	</div>
</div>