<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에 저장된 값은 브라우저가 종료되기 전까지 또는 기본 30분 동안 유지됩니다.
	//어느페이지에서든 사용할 수 있습니다.
	//getAttribute("이름");
	String id= (String)session.getAttribute("user_id");
	String name=(String)session.getAttribute("user_name");
	
	//세션의 시간확인
	int time=session.getMaxInactiveInterval();
	
	//특정세션삭제
	session.removeAttribute("user_name");
	
	//모든 세션 삭제
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	세션에 저장된 아이디: <%=id %><br/>
	세션에 저장된 이름: <%=name %><br/>
	세션유지시가간: <%=time %>

</body>
</html>