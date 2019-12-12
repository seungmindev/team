<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>로그인화면</title>

  <!-- bootstrap -->
  <link rel="stylesheet" href="css/bootstrap.css">

  <!-- script -->
  <script src="script/jquery-3.4.1.min.js"></script>


</head>

<body>
  <div class="container">
    <nav class="navbar fixed-top bg-card04">
      <span class="navbar-brand text-dark">YWsaying</span>
    </nav>
    <div class="row justify-content-center mt-5 pt-5">
      <div class="col-sm-5">
        <div class="text-center">
        </div>
        <form class="p-3">
          <div class="form-group">
            <label class="sr-only">아이디</label>
            <input type="id" id="inputId" class="form-control" placeholder="아이디" required>
            <div class="check-inputId" id="check-inputId"></div>
          </div>
          <div class="form-group">
            <label class="sr-only">비밀번호</label>
            <input type="password" id="inputPw" class="form-control" placeholder="Password" required>
            <div class="check-inputPw" id="check-inputPw"></div>
          </div>
          <div class="form-group">
            <div class="custom-control custom-checkbox small">
              <input type="checkbox" class="custom-control-input" id="customCheck">
              <label class="custom-control-label" for="customCheck">아이디 저장</label>
            </div>
          </div>
          <button id="login" class="btn btn-primary btn-block" style="height: 35px;" type="button" onclick=fnLogin();>로그인</button>
        </form>
        <hr>
        <div class="text-center ">
          <a class="small" href="register.html">회원가입</a>
          <div class="text-center">
            <a class="small" href="forgot-password.html">비밀번호 찾기</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="script/custom.js"></script>

</body>

</html>