<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- 내부스타일시트는 style태그를 이용해서 디자인을 주는 방식입니다. -->
	<!-- 태그에는 class속성이 존재하고 디자인을 줄 때 이 클래스를 선택하는 방법을 많이 사용한다. -->
	<!-- 클래스에 접근하는 선택자는 . 입니다. -->
	<style>
		.form-content{width:200px; margin: 0 auto;}
		.form-control{width:100%;}
		.form-group{text-align:center;}
	</style>
</head>
<body>
		
	<!--
	css는 html에 디자인을 입히는 언어입니다.
	사용하는 형식으로는 인라인시트, 스타일시트, 외부스타일시트 
	 -->

	<section>
		<div class="form-content">
			<form action="res_ex02_result.jsp" method="post" class="form-group">
				<span>로그인 폼</span><br/>
				아이디: <input type="text" name="id" placeholder="아이디"><br/>
				비밀번호: <input type="password" name="pw" placeholder="비밀번호"><br/>
				<input type="submit" value="로그인" class="form-control">
				
			
			</form>
		</div>
	
	</section>

</body>
</html>