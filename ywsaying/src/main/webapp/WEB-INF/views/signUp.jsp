<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>회원가입</title>

  <!-- bootstrap -->
  <link rel="stylesheet" href="css/bootstrap.css">

  <!-- script -->
  <script src="script/jquery-3.4.1.min.js"></script>



</head>


<body class="bg-gradient-primary text-dark">

  <div class="container">
    <nav class="navbar fixed-top bg-card04">
      <span class="navbar-brand text-dark">YWsaying</span>
    </nav>
    <div class="card  float-none my-0 mx-auto border-0 shadow-lg my-3 p-3 pt-5 mt-5" style="max-width: 600px;">
      <div class="text-center">
        <h1 class="h4 text-gray-900 mb-5">회원가입</h1>
      </div>

      <form>
        <div class="row">
          <div class="form-group col">
            <label>아이디</label>
            <input type="text" id="id" class="form-control" placeholder="4~12자리 영어,숫자를 입력해주세요" maxlength="12">
            <div class="check-id" id="check-id"></div>
          </div>
        </div>

        <div class="row">
          <div class="form-group col">
            <label>비밀번호</label>
            <input type="password" id="pw" class="form-control" placeholder="4~12자리를 입력해주세요." maxlength="12">
            <div class="check-pw" id="check-pw"></div>
          </div>
        </div>
        <div class="row">
          <div class="form-group col">
            <label>비밀번호 확인</label>
            <input type="password" id="checkpw" class="form-control" placeholder="한번 더 입력해주세요." maxlength="12">
            <div class="check-checkpw" id="check-checkpw"></div>
          </div>
        </div>

        <div class="row">
          <div class="form-group col">
            <label>이름</label>
            <input type="text" name="name" id="name" class="form-control" placeholder="ex) 홍길동" maxlength="6">
            <div class="check-name" id="check-name"></div>
          </div>

          <div class="form-group col">
            <label>닉네임</label>
            <input type="text" id="nick" class="form-control" placeholder="2~8자리" maxlength="8">
            <div class="check-nick" id="check-nick"></div>
          </div>
        </div>

        성별
        <div class="form-group row ml-1 mb-3">
          <div class="custom-control custom-radio mr-4">
            <input type="radio" id="gender-male" name="gender" class="custom-control-input gender">
            <label class="custom-control-label" for="gender-male">남자</label>
          </div>
          <div class="custom-control custom-radio">
            <input type="radio" id="gender-female" name="gender" class="custom-control-input gender">
            <label class="custom-control-label" for="gender-female">여자</label>
          </div>
          <div class="check-gender" id="check-gender"></div>
        </div>

        <div class="form-group">
          <div class="row">
            <div class="form-group col-7">
              <label>생년월일</label>
              <input id="birth" class="form-control " placeholder="ex) 19971202">
              <div class="check-birth" id="check-birth"></div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="form-group col-7">
            <label>이메일</label>
            <input type="email" id="email" class="form-control" placeholder="ex) abc@***.com">
            <div class="check-email" id="check-email"></div>
          </div>
          <div class="form-group col">
            <label class="sr-only">이메일 인증</label>
            <div style="padding-top: 35px;"></div>
            <button type="button" class="btn bg-card06">이메일인증</button>
          </div>
        </div>

        <hr>

        <div class="form-group text-center mt-4">
          <button type="submit" id="singUp" class="btn btn-primary" method="post">
            회원가입
          </button>
          <button type="button" class="btn btn-secondary" onclick="location.href='login.html'">
            가입취소
          </button>
        </div>

      </form>

      <hr>
      <div class="text-center ">
        <a class="small" href="forgot-password.html">비밀번호를 잊어버리셨나요?</a>
      </div>
      <div class="text-center">
        <a class="small" href="login.html">이미 아이디가 있으신가요?</a>
      </div>

    </div>
  </div>

 

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
  <script src="script/custom.js"></script>
</html>