<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원</title>
<style type="text/css">
	.box{
		width:150px;
		height:150px;
		border-radius:70%;
		overflow:hidden;
	}
	.profile{
		width:100%;
		height:100%;
		object-fit:cover;
		float:left;
		
	}
	.my_box{
		width:250px;
		height:260px;
		border:1px solid;
	}
	.size{
		width:20px;
		height:20px;
	}
	td{
		text-align:left;
	}
	.btn{
		width:320px; 
		height:40px; 
		border:0px;
		margin:5px;
	}
	input:focus{
		outline:none;
	}
</style>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include><br>
	<div align="center">
	<br>
		<div class="box">
			<img class="profile" src="image/Mirim.jpg">
		</div>
		<% String name=request.getParameter("name"); %>
		<br>
		<table>
			<tr>
				<td>이름 : </td>
				<td ><%= name %></td>
			</tr>
			<tr>
				<td>소개 :</td>
				<td> 안녕하세요! <a href="change_intro.jsp"><img src="image/pencil.PNG" class="size" onclick="clickBtn();"></a>
				</td>
			</tr>
		</table>
		<br><br>
		<input type="button" value="정보 수정" class="btn" onclick="location.href='change_info.jsp'"><br>
		<input type="button" value="판매/구매 내역" class="btn" onclick="location.href='sale_buy.jsp'">
	</div>
</body>
</html>