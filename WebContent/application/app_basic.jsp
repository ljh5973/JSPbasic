<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	application 객체는 session과 사용방법은 동일합니다.
	생명주기가 톱캣을 stop할 때 까지 단 1개가 유지됩니다.
	*/
	
	int total = 0;
	if(application.getAttribute("total")!=null){	//이미 존재한다는 의미
		total=(int)application.getAttribute("total");
		
	}
	total++;
	
	application.setAttribute("total", total);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=total%>

</body>
</html>