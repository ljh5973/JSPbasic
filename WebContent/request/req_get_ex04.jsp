<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String name=request.getParameter("name");
	String id=request.getParameter("id");
	String number=request.getParameter("number");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>요기는 ex04페이지~~~~</h3>
	이름: <%=name %><br/>
	아이디: <%=id %><br/>
	숫자: <%=number %><br/>
	
	

</body>
</html>