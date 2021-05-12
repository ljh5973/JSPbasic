<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	
	
%>

<%--
	id = bean의 이름
	class = 실제사용할 클래스의 경로
	scope = bean의 사용 범위
	
	scope속성
	page -현재페이지에서만 사용이 가능	--기본 스코프 아무것도 선언 안할 시
	request - 다음페이지까지 사용이 가능
	session - 브라우저가 종료될때 까지 모든페이지에서 사용이 가능
	application - 톰캣이 종료될 때 까지 사용이 가능
--%>

<jsp:useBean id="user" class="bean.example.User" scope="request"> </</jsp:useBean>
<!-- setter의 사용 -->
<jsp:setProperty property="id" name="user" value="<%=id %>"/>
<jsp:setProperty property="pw" name="user" value="<%=pw %>"/>
<jsp:setProperty property="name" name="user" value="<%=name %>"/>
<jsp:setProperty property="email" name="user" value="<%=email %>"/>

<!--  getter의 사용 -->

<jsp:getProperty property="id" name="user"/><br/>
<jsp:getProperty property="pw" name="user"/><br/>
<jsp:getProperty property="name" name="user"/><br/>
<jsp:getProperty property="email" name="user"/><br/>