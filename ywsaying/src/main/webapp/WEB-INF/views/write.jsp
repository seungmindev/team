<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>글쓰기</title>

  <!-- bootstrap -->
  <link rel="stylesheet" href="css/bootstrap.css">

  <!-- script -->
  <script src="script/jquery-3.4.1.min.js"></script>
  <script src="script/bootstrap.min.js"></script>

</head>

<body>
  <div class="container">

    <!-- 메뉴창 -->
    <nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark fixed-top bg-card04">
      <a class="navbar-brand" href="main.html">YWsaying</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class=""> <img src="img/menu-icon.png" alt="menu-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="main.html">
              <i class="fa fa-home"></i>
              Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="mypage/mypage.html">
              <span class="badge badge-danger">M</span>
              </i>
              <span class="hvr-underline-from-left">마이페이지</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="questions.html">
              <span class="badge badge-warning">Q</span>
              </i>
              <span class="hvr-underline-from-left">문의사항</span>
            </a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false">
              <span class="badge badge-primary">C</span>
              </i>
              <span class="hvr-underline-from-left">카테고리</span>
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">사랑</a>
              <a class="dropdown-item" href="#">인생</a>
              <a class="dropdown-item" href="#">공부</a>
              <a class="dropdown-item" href="#">성공</a>
              <a class="dropdown-item" href="#">친구</a>
              <a class="dropdown-item" href="#">시간</a>
              <a class="dropdown-item" href="#">희망</a>
              <a class="dropdown-item" href="#">기타</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="write.html">글쓰기</a>
            </div>
          </li>
        </ul>

        <!-- 검색창 -->
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <button class="btn btn-primary my-2" type="button" onclick="location.href='login.html'">로그인</button>
          <button class="btn btn-dark bt-m my-2 ml-2" type="button" data-toggle="modal"
            data-target="#exampleModalCenter">로그아웃
          </button>
        </form>
      </div>
    </nav>


    <div class="pt-5"></div>
    <div class="pt-5"></div>

    <div class="container px-0">
      <div class="card o-hidden border-0 shadow-sm  my-0 mx-auto float-none" style="max-width: 800px;">
        <div class="card-body p-4">
          <h3>글쓰기</h3>
          <br>
          <div class="form-group">
            <label for="write">제목</label>
            <input type="text" class="form-control">
          </div>
          <div class="form-group">
            <label for="write">명언 남기기</label>
            <textarea class="form-control" id="" rows="4"></textarea>
          </div>
          <div class="form-group">
            <label f>이미지</label>
            <input type="file" class="form-control-file" id="">
          </div>
          <div class=" float-right pt-2">
            <button type="submit" id="btn-write" class="btn btn-primary mb-2">등록하기</button>
            <button type="button" class="btn btn-secondary mb-2" onclick="location.href='main.html'">취소하기</button>
          </div>
        </div>
      </div>
    </div>

  </div>

  <!-- 로그아웃-경고창 -->
  <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">확인</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body text-dark">
          로그아웃 하시겠습니까?
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
          <button type="button" class="btn btn-dark" onclick="location.href='login.html'">로그아웃</button>
        </div>
      </div>
    </div>
  </div>
  <script src="script/custom.js"></script>
</body>
</html>