<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//request 객체에는 브라우저에 대한 정보 or사용자가 전달하는 값 등등 많은 정보를 저장하는 바구니
	StringBuffer url=request.getRequestURL();	//URL

	String uri= request.getRequestURI();	//URI
	
	String path=request.getContextPath();
	
	String mtd=request.getMethod();
	String remote=request.getRemoteAddr();
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	요청URL주소<%=url %><br/>
	요청URI주소<%=uri %><br/>
	루트경로:<%=path %><br/>
	요청방식: <%=mtd %><br/>
	요청아이피: <%=remote %><br/>

</body>
</html>