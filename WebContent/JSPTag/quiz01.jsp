<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%! int total= 0;

%>
<% Random ran= new Random();
int r =(int)(ran.nextInt(8))+2;
total++; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=total %>번째 방문자입니다.<br/>
<%if(total%10==0){%> 
당첨되셨습니다.
 <%}%>
<hr/>

<h2>랜덤 구구단<%=r %>단</h2>
<p>
이번에 나온 구구단 <%=r %>단 입니다.<br/>
	<%for(int i=1; i<=9; i++){%>
	<%=r %> x <%=i %> = <%= i* r%><br/>
	<% }%>
</p>
</body>
</html>