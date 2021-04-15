<%@page import="kr.hs.mirimmarket.product.impl.ProductDAO"%>
<%@page import="kr.hs.mirimmarket.product.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="menuBar.jsp"%>
 <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매</title>
<link href="CssDesign/GoodsCss.css" rel ="stylesheet" type="text/css">
</head>
<body>
	<% 
		String seq=request.getParameter("seq");
		Product pro=new Product();
		pro.setSeq(Integer.parseInt(seq));
		ProductDAO DAO=new ProductDAO();
		Product product=DAO.GetProduct(pro);
	%>
	<div class="box1">
        <h1>[<%= product.getCategory() %>] <%= product.getTitle() %></h1>
        <hr style="border: 1px solid #f1f3f6; width:100%; position: absolute; top:30;">
        <h2>조회수&nbsp;<%= product.getClick() %>&nbsp;&nbsp;날짜&nbsp;<%= product.getDate() %>&nbsp;&nbsp;</h2>
    </div>
    <div class="box2">
        <div id="slide">
            <input type="radio" name="pos" id="pos1" checked>
            <input type="radio" name="pos" id="pos2">
            <input type="radio" name="pos" id="pos3">
            <ul>
              <li><img src="image/체육복1.PNG" width="360px" height="360px"></li>
              <li><img src="image/체육복2.PNG" width="360px" height="360px"></li>
              <li><img src="image/체육복3.PNG" width="360px" height="360px"></li>
            </ul>
            <p class="pos">
              <label for="pos1"></label>
              <label for="pos2"></label>
              <label for="pos3"></label>
            </p>
        </div>
    </div>
    <div class="box3">
        <div class="info">
            <%=product.getPrice() %>&#8361;<p>
                    재고 <%= product.getQuantity() %>개<p>
            <%=product.getGrade() %> <%= product.getCategory() %><p>
                    상태 <%= product.getState() %>
        </div>
        <br>
        <div class="button"><a href=Button.html >채팅걸기</a></div>
    </div>
   
    <table>
    	<tr>
    		<td> <img src="image/leaf.PNG" style="width:50xpx; height:50px"></td>
    		<td><%= product.getName() %></td>
    	</tr>
    	<tr>
    		<td></td>
    		<td><%= product.getExplaination() %></td>
    	</tr>
    </table>

</body>
</html>