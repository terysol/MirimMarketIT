<%@page import="kr.hs.mirimmarket.product.impl.ProductDAO"%>
<%@page import="kr.hs.mirimmarket.user.User"%>
<%@page import="java.io.PrintWriter"%>

<%@ page import="java.sql.PreparedStatement"%>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록창 DB</title>
</head>
<body>
<%
	User user=null;
	if(session.getAttribute("login_info")!=null){
		user=(User)session.getAttribute("login_info");
	}
	
	String name=user.getName();

	String title = request.getParameter("title");
	String[] categoryArr = request.getParameterValues("category");
	String category = null;
	for(String i:categoryArr){
		category = i;
	}
	
	String[] gradeArr = request.getParameterValues("grade");
	String grade = "";
	for(String i:gradeArr){
		grade += i + "/";
	}
	
	String state=request.getParameter("state");
	String image="이미지";
	String explanation=request.getParameter("explanation");
	String price=request.getParameter("price");
	String quantity=request.getParameter("quantity");
	String isAnony=request.getParameter("yesorno");
	
	ProductDAO dao=new ProductDAO();
	int result=dao.RegisterProduct(name, title, category, grade, state, image, explanation, price, quantity, isAnony);
	
	if(result==-1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('글쓰기에 실패했습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}else{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	}
	
%>
</body>

</html>