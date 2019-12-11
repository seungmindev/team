<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
</head>
<body>

	<form method="post" action="signUpping">
	ID:<input type="text" name="user_id" ><br>
	PW:<input type="password" name="user_password" >
	PW:<input type="password" >
	NAME:<input type="text" name="user_name" >
	BIRTHDAY year :<input type="text" name="user_bir_yy">
	BIRTHDAY month :<input type="text" name="user_bir_mm">
	BIRTHDAY day :<input type="text" name="user_bir_dd">
	GENDER : <input type="text" name="user_gender">
	NICKNAME:<input type="text" name="user_nickname">	
	email :<input type="text" name="user_email">
	<input type="submit" value="등록">	
	</form>
	
	
</body>
</html>