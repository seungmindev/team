<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

<h1>회원가입자</h1>
	<br>회원가입자 전체 수: ${count }
	<br>
	<br>
	<c:forEach items="${list }" var ="user">
	
	${user.user_idx }<br>
	${user.user_id }<br>
	${user.user_password }<br>
	${user.user_email }<br>
	${user.user_name }<br>	
	${user.user_bir_yy }<br>	
	${user.user_bir_mm }<br>	
	${user.user_bir_dd }<br>	
	${user.user_gender }<br>	
	${user.user_nickname }<br>	
	${user.user_regtime }<br>		
	</c:forEach>	
	<br>
	<c:forEach items="${pageStartList }" var="pageIndex" varStatus = "status">
		<a href="list?start=${pageIndex }">${status.index +1 }</a> &nbsp; &nbsp;
	</c:forEach>
</body>
</html>