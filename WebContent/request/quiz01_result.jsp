<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String name=request.getParameter("name");
	String height=request.getParameter("height");
	String weight=request.getParameter("weight");
	double ht=Integer.parseInt(height);
	double wt=Integer.parseInt(weight);
	double bmi= wt/((ht/100)*(ht/100)); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름:<%=name %>
	키: <%=height %> cm
	몸무게:<%=weight %> kg<br/>
	BMI지수:<%=Math.round(bmi) %>
	<%if(bmi>=25){ %>
		과체중
	<%}else if(bmi<=18){%>
		저체중
	<% }else{%>
		정상
	<% }%>
	

</body>
</html>