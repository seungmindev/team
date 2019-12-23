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
  <script src="js/jquery-3.4.1.min.js"></script>



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

      <form method="post" id="signUpForm" action="signUpping">
        <div class="row">
          <div class="form-group col">
            <label>아이디</label>
            <input type="text" name="user_id" id="id" class="form-control" placeholder="4~12자리 영어,숫자를 입력해주세요" maxlength="12">
            <div class="check-id" id="check-id"></div>
          </div>
        </div>

        <div class="row">
          <div class="form-group col">
            <label>비밀번호</label>
            <input type="password" name="user_password" id="pw" class="form-control" placeholder="4~12자리를 입력해주세요." maxlength="12">
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
            <input type="text" name="user_name" id="name" class="form-control" placeholder="ex) 홍길동" maxlength="6">
            <div class="check-name" id="check-name"></div>
          </div>

          <div class="form-group col">
            <label>닉네임</label>
            <input type="text" name="user_nickname" id="nick" class="form-control" placeholder="2~8자리" maxlength="8">
            <div class="check-nick" id="check-nick"></div>
          </div>
        </div>

        성별
        <div class="form-group row ml-1 mb-3">
          <div class="custom-control custom-radio mr-4">
            <input type="radio" id="gender-male" name="user_gender" value="m" class="custom-control-input gender">
            <label class="custom-control-label" for="gender-male">남자</label>
          </div>
          <div class="custom-control custom-radio">
            <input type="radio" id="gender-female" name="user_gender" value="f"class="custom-control-input gender">
            <label class="custom-control-label" for="gender-female">여자</label>
          </div>
          <div class="check-gender" id="check-gender"></div>
        </div>

       생년월일
        <div class="row col-12 mt-1">
          <input type="text" name="user_bir_yy" placeholder="년(4자)" aria-label="년(4자)"
            class="form-control-sm col-4 mr-3" maxlength="4">
          <select name="user_bir_mm" class="form-control-sm col-3 mr-3" aria-label="월">
            <option value="">월</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
          </select>
          <input type="text" name="user_bir_dd" placeholder="일" aria-label="일" class="form-control-sm col-3"
            maxlength="2">
          <div class="check-birth" id="check-birth"></div>
        </div>
        <br>

        <div class="row">
          <div class="form-group col-7">
            <label>이메일</label>
            <input type="email" name="user_email" id="email" class="form-control" placeholder="ex) abc@***.com">
            <div class="check-email" id="check-email"></div>
          </div>
          <div class="form-group col">
          	<div style="padding-top: 35px;"></div>
             <button type="button" class="btn bg-card06" id="emailBtn">인증번호발송</button>
            </div>           
          <input type="hidden" path="random" id="random" value="${random }" />
        </div>
        <div class="row">
        	<div class ="form-group col-7">
        		<input type="text" id="emailAuth" class="form-control">
        	</div>
        	<div class="form-group col">
         		<button type="button" class="btn bg-card06" id="emailAuthBtn">인증번호확인</button>
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
	
</body>
  <script src="js/custom.js"></script>
</html>
