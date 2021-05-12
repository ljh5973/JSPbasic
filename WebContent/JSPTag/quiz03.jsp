<%@page import="java.util.Random"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 선언자, 스크립을 적절하게 사용합니다! 
	어피치, 라이언, 제이지, 무지, 프로도를 가지고 있는 배열 생성
	랜덤하게 선택된 카카오 프렌즈를 list에 추가하는 형식으로 작성을 합니다.
--%>
<%!
	String [] arr = {"어피치","라이언","제이지","무지","프로도"};
List<String> list = new ArrayList<>();
Random ran= new Random();

%>
<%

int r = ran.nextInt(arr.length);
if(list.size()<10){
list.add(arr[r]);
}

int cnt= 0;
for(String s: list){
	if(s.equals(arr[r])){
		cnt++;
	}
}
%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4><%=arr[r] %></h4>님 입장
현재 중복인원 <%=cnt %>명<br/>

<h2>현재 구성정보</h2>


<%=list.toString() %>(현재 <%=list.size() %>명 참가중

<%
	//리스트 초기화
	if(list.size()==10){
		list.clear();	//초기화
	}
%>

</body>
</html>