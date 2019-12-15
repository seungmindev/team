<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>YWsaying</title>

  <!-- bootstrap -->
  <link rel="stylesheet" href="css/bootstrap.css">

  <!-- style -->
  <link rel="stylesheet" href="css/hover.css">
  <link rel="stylesheet" href="css/animate.css">

  <!-- script -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

  <link href="https://fonts.googleapis.com/css?family=Stylish&display=swap&subset=korean" rel="stylesheet">

  <style>
    *,
    h6 {
      font-family: 'Stylish', sans-serif;
      font-size: 1rem;
      font-weight: 400;
    }
  </style>
</head>

<body>
  <div class="container">

    <!-- 메뉴창 -->
    <nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark fixed-top bg-card04">
      <a class="navbar-brand" href="main.html">YWsaying</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span><img src="img/menu-icon.png" alt="menu-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="main">
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
          <input id="search" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-primary my-2" type="button" onclick="location.href='signIn'">로그인</button>
          <button class="btn btn-dark bt-m my-2 ml-2" type="button" data-toggle="modal"
            data-target="#exampleModalCenter">로그아웃
          </button>
        </form>
      </div>
    </nav>
    
    <div class="pt-5"></div>
    <div class="pt-5"></div>

    <!-- 슬라이드 -->
    <div id="carouselExampleIndicators" class="carousel slide " data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="img/slide01.gif" alt="First slide"
            style="max-width: 1200px; max-height: 300px;">
          <div class="carousel-caption">
            <h5></h5>
            <p></p>
          </div>
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="img/slide02.png" alt="Second slide"
            style="max-width: 1200px; max-height: 300px;">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="img/slide03.jpeg" alt="Third slide"
            style="max-width: 1200px; max-height: 300px;">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>

    <div class="pt-4"></div>

    <!-- 컨텐츠 - 카드 -->
    <div class="card-columns">
      <div class="card border-top-0">
        <div class="card-header bg-card01 text-white">
          <span class="badge badge-danger">인기!</span>
          축구
        </div>
        <div class="card-body">
          <p class="text-justify text-dark">
            폼은 일시적이지만 클래스는 영원하다
          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted font-italic">- 빌 클레어 -</h6>
          <a href="contents/card01.html" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary float-right mb-3 hvr-buzz-out like-btn01">
            ♥ <span class="like-m01">987</span>
          </button>
        </div>
      </div>

      <div class="card border-top-0 wow slideInUp" data-wow-duration="2.2s">
        <div class="card-header bg-card02 text-white ">
          <span class="badge badge-warning">New</span>
          사랑
        </div>
        <div class="card-body">
          <p class="text-justify text-dark">
            그러나 사랑은 눈 먼 것이라 연인들은 자신들이 저지르는 어리석은 짓을 알지 못해요.
            만약 알 수 있다면, 큐피드도 나를 보고 얼굴을 붉히며 평범한 소년으로 변해버릴 거예요.
          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted font-italic">- 윌리엄 셰익스피어 -</h6>
          <a href="contents/card02.html" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary mb-3 float-right hvr-buzz-out like-btn02">
            ♥
            <span class="like-m02">77</span>
          </button>
        </div>
      </div>

      <div class="card border-top-0 wow slideInUp" data-wow-duration="2.2s">
        <div class="card-header bg-card03 text-white">
          <span class="badge badge-warning"></span>
          공부
        </div>
        <div class="card-body">
          <p class="text-justify text-dark">
            제대로 배우기 위해서는 거창하고 교양 있는 전통이나 돈이 필요하지 않다.
            스스로를 개선하고자 하는 열망이 있는 사람들이 필요할 뿐이다.
          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted">- 아담 쿠퍼 -</h6>
          <a href="contents/card03.html" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary mb-3 float-right hvr-buzz-out like-btn03">
            ♥
            <span class="like-m03"></span>
          </button>
        </div>
      </div>

      <div class="card border-top-0 wow slideInUp" data-wow-duration="2.2s">
        <div class="card-header bg-card05 text-white">
          <span class="badge badge-warning"></span>
          성공
        </div>
        <div class="card-body">
          <p class="text-justify text-dark">
            목표에 도달하는 가장 확실한 방법은 그 목표가 아니라 그 너머의 더 야심찬 목표를 향해
            나아가는 것이라는 점은 역설적이지만 참되고 중요한 인생의 원칙이다.
          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted">- 아놀드 토인비 -</h6>
          <a href="" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary mb-3 float-right hvr-buzz-out like-btn04">
            ♥
            <span class="like-m04"></span>
          </button>
        </div>
      </div>

      <div class="card wow slideInUp" data-wow-duration="2.2s">
        <img class="card-img" src="img/main04.jpg" alt="Card image" style="max-height: 300px;">
      </div>

      <div class="card border-top-0 wow slideInUp" data-wow-duration="2.2s">
        <div class="card-header bg-card06 text-white">
          <span class="badge badge-warning"></span>
          시간
        </div>
        <div class="card-body">
          <p class="text-justify text-dark">
            물리학을 믿는 나와 같은 사람들은 과거, 현재, 미래의 구별이란
            단지 고질적인 환상일 뿐이란 사실을 알고 있다.
          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted">- 아인슈타인 -</h6>
          <a href="" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary mb-3 float-right hvr-buzz-out like-btn05">
            ♥
            <span class="like-m05"></span>
          </button>
        </div>
      </div>

      <div class="card border-top-0 wow slideInUp" data-wow-duration="2.2s">
        <div class="card-header bg-card01 text-white">
          <span class="badge badge-warning"></span>
          희망
        </div>
        <div class="card-body">
          <p class="text-justify text-dark">
            우리에게는 존재하지 않는 것들을 꿈꿀 수 있는 사람들이 필요하다.
          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted">- 존 F 케네디 -</h6>
          <a href="" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary mb-3 float-right hvr-buzz-out like-btn06">
            ♥
            <span class="like-m06"></span>
          </button>
        </div>
      </div>

      <div class="card border-top-0 wow slideInUp" data-wow-duration="2.2s">
        <div class="card-header bg-card02 text-white">
          <span class="badge badge-warning"></span>
          시간
        </div>
        <div class="card-body">
          <p class="text-justify text-dark">
            숙고할 시간을 가져라, 그러나 행동할 때가 오면 생각을 멈추고 뛰어들어라
          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted">- 나폴레옹 -</h6>
          <a href="" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary mb-3 float-right hvr-buzz-out">
            ♥
            <span></span>
          </button>
        </div>
      </div>

      <div class="card border-top-0 wow slideInUp" data-wow-duration="2.2s">
        <div class="card-header bg-card03 text-white">
          <span class="badge badge-warning"></span>
          성공
        </div>
        <div class="card-body">
          <p class="text-justify text-dark" style="max-height:">
            대부분의 사람이 자신이 설정한 목표를 결코 달성하지 못하는 이유는 목표를 명확히 정의하지 않았거나, 그 목표를 이룰 수 있을 것이라는 믿음을 갖지 않았기 때문이다. 승자들은 자신이 어디로 가고
            있는지, 그 길을 가면서 무엇을 할 계획인지, 그 모험을 누구와 함께 할 것인지 말할 수 있다
          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted">- 데니스 웨이틀리 -</h6>
          <a href="" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary mb-3 float-right hvr-buzz-out">
            ♥
            <span></span>
          </button>
        </div>
      </div>

      <div class="card wow slideInUp" data-wow-duration="2.2s">
        <img class="card-img" src="img/main01.jpg" alt="Card image" style="max-height: 400px;">
      </div>

      <div class="card border-top-0 wow slideInUp" data-wow-duration="2.2s">
        <div class="card-header bg-card05 text-white">
          <span class="badge badge-warning"></span>
          친구
        </div>
        <div class="card-body">
          <p class="text-justify text-dark">
            사탕발린 칭찬이 아닌 분별있는 애정의 증표로 친구를 사귀어라
          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted">- 소크라테스 -</h6>
          <a href="" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary mb-3 float-right hvr-buzz-out">
            ♥
            <span></span>
          </button>
        </div>
      </div>

      <div class="card border-top-0 wow slideInUp" data-wow-duration="2.2s">
        <div class="card-header bg-card06 text-white">
          <span class="badge badge-warning"></span>
          명대사
        </div>
        <div class="card-body">
          <p class="text-justify text-dark">
            모든 사람은 실수를 해
            그래서 연필 뒤에 지우개가 달려있는거라고
          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted">- 심슨中 -</h6>
          <a href="" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary mb-3 float-right hvr-buzz-out">
            ♥
            <span></span>
          </button>
        </div>
      </div>

      <div class="card border-top-0 wow slideInUp" data-wow-duration="2.2s">
        <div class="card-header bg-card01 text-white">
          <span class="badge badge-warning"></span>
          명대사
        </div>
        <div class="card-body">
          <p class="text-justify text-dark" style="max-height:">
            대한민국 주권은 국민에게 있고 모든 권력은 국민으로부터 나온다. 국가란 국민이다.
          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted">- 영화 변호인中 - </h6>
          <a href="" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary mb-3 float-right hvr-buzz-out">
            ♥
            <span></span>
          </button>
        </div>
      </div>

      <div class="card border-top-0 wow slideInUp" data-wow-duration="2.2s">
        <div class="card-header bg-card02 text-white">
          <span class="badge badge-warning"></span>
          시간
        </div>
        <div class="card-body">
          <p class="text-justify text-dark">
            과거는 흘러갔고 어쩔수 없는거야, 그렇지?
            세상이 널 힘들게 할 땐
            신경 끄고 사는 게 상책이야
          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted">- 라이온킹(티몬) -</h6>
          <a href="" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary mb-3 float-right hvr-buzz-out">
            ♥
            <span></span>
          </button>
        </div>
      </div>

      <div class="card border-top-0 wow slideInUp" data-wow-duration="2.2s">
        <div class="card-header bg-card03 text-white">
          <span class="badge badge-warning"></span>
          명대사
        </div>
        <div class="card-body">
          <p class="text-justify text-dark">
            I love you 3000.
          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted">- 어벤져스:엔드게임中 -</h6>
          <a href="" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary mb-3 float-right hvr-buzz-out">
            ♥
            <span></span>
          </button>
        </div>
      </div>

      <div class="card wow slideInUp" data-wow-duration="2.2s">
        <img class="card-img" src="img/main02.jpg" alt="Card image" style="max-height: 300px;">
      </div>

      <div class="card border-top-0 wow slideInUp" data-wow-duration="2.2s">
        <div class="card-header bg-card05 text-white">
          <span class="badge badge-warning"></span>
          예시
        </div>
        <div class="card-body">
          <p class="text-justify text-dark" style="max-height:">
            Lorem ipsum dolor sit amet consectetur adipisicing elit.
            Quas amet quos tempora, natus, cumque nam ut reiciendis quo quia vero eum quae. Eum adipisci hic quasi
            fugiat, consequuntur possimus saepe.

          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted">저자</h6>
          <a href="" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary mb-3 float-right hvr-buzz-out">
            ♥
            <span></span>
          </button>
        </div>
      </div>

      <div class="card border-top-0 wow slideInUp" data-wow-duration="2.2s">
        <div class="card-header bg-card06 text-white">
          <span class="badge badge-warning"></span>
          명대사
        </div>
        <div class="card-body">
          <p class="text-justify text-dark">
            카르페디엠 현재를 즐겨라 너희들의 삶을 특별하게 만들어
          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted">- 죽은 시인의 사회中 -</h6>
          <a href="" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary mb-3 float-right hvr-buzz-out">
            ♥
            <span></span>
          </button>
        </div>
      </div>

      <div class="card border-top-0 wow slideInUp" data-wow-duration="2.2s">
        <div class="card-header bg-card01 text-white">
          <span class="badge badge-warning"></span>
          예시
        </div>
        <div class="card-body">
          <p class="text-justify text-dark">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus
            id, eligendi ullam molestias tempora doloribus labore totam, corporis in dignissimos voluptate! Pariatur
            ratione et consectetur similique quae explicabo autem consequatur.
          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted">저자</h6>
          <a href="" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary mb-3 float-right hvr-buzz-out">
            ♥
            <span></span>
          </button>
        </div>
      </div>

      <div class="card wow slideInUp" data-wow-duration="2.2s">
        <img class="card-img" src="img/main03.jpg" alt="Card image" style="max-height: 400px;">
      </div>

      <div class="card border-top-0 wow slideInUp" data-wow-duration="2.2s">
        <div class="card-header bg-card02 text-white">
          <span class="badge badge-warning"></span>
          예시
        </div>
        <div class="card-body">
          <p class="text-justify text-dark">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus
            id, eligendi ullam molestias tempora doloribus labore totam, corporis in dignissimos voluptate! Pariatur
            ratione et consectetur similique quae explicabo autem consequatur.
          </p>
          <h6 class="card-subtitle text-right mb-3 text-muted">저자</h6>
          <a href="" class="btn btn-light">more</a>
          <button type="button" class="btn btn-secondary mb-3 float-right hvr-buzz-out">
            ♥
            <span></span>
          </button>
        </div>
      </div>
    </div>
    <footer>
      <button class="movetopbtn btn badge-light fixed-bottom mr-4 mb-2">
        <img src="img/top-up.png" alt="top-up">
      </button>
    </footer>

    <!-- 로그아웃-경고창 -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
      aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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
  </div>

  <!-- 환영창 -->


  <!-- script -->
  <script src="js/wow.min.js"></script>
  <script src="js/custom.js"></script>

  <script>
    wow = new WOW({});
    wow.init();
  </script>

</body>
</html>