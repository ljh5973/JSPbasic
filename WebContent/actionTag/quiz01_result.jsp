<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/*
		앞에서 넘어온 값을 받아서 평균을 구합니다.
		평균이 60점 이상이라면 quiz01_ok.jsp로 이동해서
		 xx님 평균 xx점 합격입니다.
		 60점 미만이라면 quiz01_no.jsp로 이동해서
		 xx님 평균 xx점 불합격입니다.
	*/
	request.setCharacterEncoding("utf-8");
	String kor=request.getParameter("kor");
	String math=request.getParameter("math");
	String eng=request.getParameter("eng");
	
	int k=Integer.parseInt(kor);
	int m=Integer.parseInt(math);
	int e=Integer.parseInt(eng);
	
	int avg=(k+m+e)/3;
	
	application.setAttribute("avg", avg);
	
	/*
	
	if(avg>=60){
		request.getRequestDispatcher("quiz01_ok.jsp").forward(request,response);
	}else{
		request.getRequestDispatcher("quiz01_no.jsp").forward(request,response);
	}
	
	*/
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(avg>=60){%>
		<jsp:forward page="quiz01_ok.jsp"/>
	<%} else {%>
		<jsp:forward page="quiz01_no.jsp"/>
	<%} %>
</body>
</html>