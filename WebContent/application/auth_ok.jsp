<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/*
	앞에서 넘어온 request값, 세션에 저장된 인증문자값을 비교해서
	정확히 일치하면 reserve.jsp 예약페이지로 이동
	일치하지 않으면 다시 입력(JS사용)
	*/
	
	String code=request.getParameter("code");
	String auth=(String)session.getAttribute("auth");
	if(code.equals(auth)){
		session.setAttribute("authYN", "y");
		%>
	<script>
		
			alert("인증에 성공하셨습니다.");
			location.href="reserve.jsp";
		
	</script>

<%		
	}else{
%>
<script>
	
		alert("인증문자를 확인하세요");
		location.href="auth.jsp";	
	
</script>

<% 
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>