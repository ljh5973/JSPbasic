<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
	String kor=request.getParameter("kor");
	String math=request.getParameter("math");
	String eng=request.getParameter("eng");
	double avg=0;
	//값이 공백이라면 다시 화면으로..
	if(name.equals("")||kor.equals("")||math.equals("")||eng.equals("")){
		response.sendRedirect("quiz01.jsp");
		
	}else{
		
		int k=Integer.parseInt(kor);
		int m=Integer.parseInt(math);
		int e=Integer.parseInt(eng);
		avg= (k+m+e)/3.0;
	
		if(avg>=60){ //합격페이지
			response.sendRedirect("quiz01_ok.jsp");
		
		}else{	//불합격페이지
			response.sendRedirect("quiz01_no.jsp");
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

</body>
</html>