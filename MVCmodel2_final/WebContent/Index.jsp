<%@ page contentType="text/html;charset=UTF-8"%>

<html>
<head>
<title>Simple Shopping Mall </title>
<link href="style.css" rel="stylesheet" type="text/css">
<script charset="utf-8" language="JavaScript" src="script.js"></script>
</head>

<body topmargin="50">
	
	<%@ include file="Top.jsp" %>

<br><br>
	<%
	if(mem_id != null){
	%>
		<%=mem_id%>님 방문해 주셔서 감사합니다.

	<%}else{%>
		로그인 하신 후 이용해 주세요
	<%}%>



</body>
</html>  
  