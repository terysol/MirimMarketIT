<%@page import="kr.hs.mirimmarket.user.User"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 화면</title>

</head>
<body>
	<%
		User user=null;
		if(session.getAttribute("login_info")!=null){
			user=(User)session.getAttribute("login_info");
		}
	%>
	
	<%
		if (user ==null){  //로그인 되어 있지 않으면
	%>
	<jsp:include page="menu.jsp"></jsp:include>
	<% }else{ %>
	<jsp:include page="menu2.jsp"></jsp:include>
		
	<%}  %>
	
	
</body>
</html>