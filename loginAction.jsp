<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<html>
<head>
<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
<title>jsp 게시판 웹 사이트 </title>
</head>
<body>


	<%
		
		UserDAO userDAO = new UserDAO();
		
		int result = userDAO.login(user.getUserID(), user.getUserPassword());
		if (result == 1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
		}
		else if (result == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('0')");
			script.println("history.back()"); //로그인창으로 돌아감
			script.println("</script>");
		}
		else if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('-1')");
			script.println("history.back()"); //로그인창으로 돌아감
			script.println("</script>");
		}
		else if (result == -2) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('-2')");
			script.println("history.back()"); //로그인창으로 돌아감
			script.println("</script>");
		}
	%>
	
</body>
</html>