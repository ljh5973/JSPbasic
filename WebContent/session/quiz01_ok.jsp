<%@page import="session.example.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	User user=(User)session.getAttribute("user");

	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	저장된 id: <%=user.getId() %><br/>
	저장된 name: <%=user.getName() %><br/>
	<%=user.getRegion() %>

</body>
</html>