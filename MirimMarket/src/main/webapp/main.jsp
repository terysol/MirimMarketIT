<%@page import="kr.hs.mirimmarket.product.impl.ProductDAO"%>
<%@page import="kr.hs.mirimmarket.product.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="menuBar.jsp" %>
<%@page import="java.util.List"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인</title>
		<style type="text/css">
			.box{
				width:200px;
				height:200px;
				overflow:hidden;
			}
			.profile{
				width:100%;
				height:100%;
				object-fit:cover;
			}
			.img{  /*멤버들 이미지*/
		        float:left;
		        width:20%;
		        margin:15px; align-items: center;
		     }
		</style>
	</head>
	<body>  	
	      <div class="img">
	      	<p>
	      		<img src="image/Mirim.jpg"  width="185" height="200"><br>
	      		<%-- <% for(Product product:productList){ %>
	      			[<%=product.getCategory()%>]
	      			<a href="BuyProduct.jsp?seq=<%=product.getSeq() %>"><%= product.getTitle() %><br><%=product.getPrice() %>원</a> 
	      			<br><br>
	      			<input name="seq" type="hidden" value="<%=product.getSeq() %>">
	      		<% } %> --%>
	      	</p>
	      </div>
	</body>
</html>