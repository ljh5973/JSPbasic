<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//화면에 필요한 변수는 위쪽에 작성합니다.
	String name = "홍길동";
	int age = 20;
	String email = "google";
	String addr = "서울시";
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		out.println("이름: " + name + "<br/>");
		out.println("나이: " + age + "<br/>");
	%>
	
	<hr/>
	이름: <%=name %><br/>
	나이: <%=age %><br/>
	메일: <%=email %><br/>
	주소: <%=addr %><br/>
	
	<hr/>
	
	<h3>반복문으로 체크박스 10개를 만드는데 숫자를 붙여서 가로 출력</h3>
	<hr/>
	<%  int i= 0;
	for(i= 1; i<=10; i++){%>
		<input type="checkbox"><%=i %> 
	<% }%>
	<hr/>
	<h3>중첩반복문을 이용해서 1~9단까지 표현식으로 사용해서 (out x)</h3>
	<hr/>
	
	<% for(int gu=2; gu<=9; gu++){ %>
	<%=gu %>단
		<% for(int dan= 1; dan<=9;dan++){%>
		<%=gu %>X<%=dan %>=<%=gu*dan %> 
		<% }%> 
		<br/>
	<%}%>
	
	
</body>
</html>