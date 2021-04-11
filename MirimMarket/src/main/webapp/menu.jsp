<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴바</title>
<style type="text/css">
	.search{
		font-szie:16px;
		width:325;
		padding:10px;
		border:0px;    <!-- 테두리 제거-->
		outline:none;
		float:center;
	}
	</style>

</head>
<body>
	<div style="text-align:center">
		<a href="main.jsp"><font size="6.8">Mirim</font></a> &nbsp;
		
		&nbsp;<a href="Join.jsp"  style="float : right">회원가입</a>&nbsp;
		&nbsp;<a href="Login.jsp" style="float : right">로그인</a> 
		
		
		<br><br>
		
		<a href="교과서.html">교과서</a>&nbsp;&nbsp;&nbsp;&nbsp;
		 체육복 &nbsp;&nbsp;&nbsp;&nbsp; 
		 교복&nbsp;&nbsp;&nbsp; &nbsp;
		 문제집&nbsp;&nbsp;&nbsp; &nbsp;
		 시험지&nbsp;&nbsp;&nbsp; &nbsp;
		 그외 &nbsp;&nbsp;&nbsp;&nbsp;
	</div>
	<hr style="border-top: solid 3px">
</body>
</html>