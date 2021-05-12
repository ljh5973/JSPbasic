<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>path_quiz</h4>
	<!-- a태그를 이용해서 req_video페이지로 상대경로, 절대경로  -->
	
	<a href="../../request/req_video.jsp">req_video(상대경로)</a><br/>
	<a href="/JSPbasic/request/req_video.jsp">req_video(절대경로)</a><br/>
	<!-- a태그를 이용해서 TestServlet의 URL 맵핑 경로를 확인해서 상대경로, 절대경로로 이동 -->
	<a href="/JSPbasic/TestServlet">TestServlet.java(절대경로))</a><br/>
	<a href="../../TestServlet">TestSErvlet.java(상대경로)</a><br/>
	<!-- img태그로 java.png파일을 상대경로, 절대경로로 참조 -->
	<img src="../../request/img/java.png" width="100" alt="자바" >	(상대경로)<br/>
	<img src="/JSPbasic/request/img/java.png" width="100" alt="자바">	(절대경로)<br/>
</body>
</html>