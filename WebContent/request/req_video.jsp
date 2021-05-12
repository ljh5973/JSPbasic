<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!--  
	a태그에 강의목록을 식별할 수 있는 매개값을 넘겨주세요
	두번째 화면에서는 식별할 값 별로 해당 동영상만 보여지도록 처리. -->
	<div align="center">
	<h2 >강의 목록</h2>
		<table border="1" >
			<tr>
				<th>이미지</th>
				<th>강의명</th>
				<th>내용</th>
				<th>일자</th>
			</tr>
			<tr>
				<td>
				<a href="req_video_result.jsp?name=java">
				<img src="img/java.png" width="150" alt="자바"></td>			
				</a>
				<td>자바강의</td>
				<td><a href="req_video_result.jsp?name=java">자바 기본문법을 학습합니다.</a></td>
				<td>2020-01-01</td>
			<tr>
			<tr>
				<td>
				<a href="req_video_result.jsp?name=js">
				<img src="img/javascript.png" width="150" alt="js"></td>				
				</a>
				<td>자바스크립트 강의</td>
				<td><a href="req_video_result.jsp?name=js">자바스크립트 문법을 학습합니다.</a></td>
				<td>2020-01-01</td>
			<tr>
			<tr>
				<td>
				<a href="req_video_result.jsp?name=oracle">
				<img src = "img/oracle.png" width="150" alt="orcle"></td>
				</a>
				<td>오라클 강의</td>
				<td><a href="req_video_result.jsp?name=oracle">sql문을 학습합니다.</a></td>
				<td>2020-01-01</td>
			<tr>
		</table>
	</div>
</body>
</html>