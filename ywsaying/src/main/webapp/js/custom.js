//로그인 화면
function fnLogin() {
  var objLogin = document.getElementById("inputId");
  var objPasswd = document.getElementById("inputPw");

  if (objLogin.value == "") {
    $('#check-inputId').text('아이디를 입력해주세요.');
    $('#check-inputId').css('color', 'red').css('font-size', '13px');
    objLogin.focus();
    return;
  } else {
    $('#check-inputId').text('');
  };

  if (objPasswd.value == "") {
    $('#check-inputPw').text('비밀번호를 입력해주세요.');
    $('#check-inputPw').css('color', 'red').css('font-size', '13px');
    objPasswd.focus();
    return;
  } else {
    $('#check-inputPw').text('');
  };
  document.location.href = "main.html";
};



//register 유효성체크 

var empJ = /\s/g; //공백 정규식

var idJ = /^[a-z0-9]{4,12}$/; //아이디 정규식 

var pwJ = /^[A-Za-z0-9]{4,12}$/; // 비밀번호 정규식

var nameJ = /^[가-힣]{3,6}$/; // 이름 정규식

var nickJ = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]{2,8}$/; // 닉네임 정규식

var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; // 이메일 검사 정규식

//아이디 유효성
$("#id").blur(function () {
  if (idJ.test($(this).val())) {
    console.log(idJ.test($(this).val()));
    $("#check-id").text('');
  } else {
    $('#check-id').text('아이디를 확인해주세요.');
    $('#check-id').css('color', 'red').css('font-size', '13px');
  }
});

//비밀번호 유효성
$("#pw").blur(function () {
  if (pwJ.test($(this).val())) {
    console.log(pwJ.test($(this).val()));
    $("#check-pw").text('');
  } else {
    $('#check-pw').text('비밀번호를 확인해주세요.');
    $('#check-pw').css('color', 'red').css('font-size', '13px');
  }
});

//비밀번호 일치 확인 유효성
$("#checkpw").blur(function () {
  if ($('#pw').val() != $(this).val()) {
    $('#check-checkpw').text('비밀번호가 일치하지 않습니다.');
    $('#check-checkpw').css('color', 'red').css('font-size', '13px');
  } else {
    $("#check-checkpw").text('');
  }
});

//이름 유효성
$("#name").blur(function () {
  if (nameJ.test($(this).val())) {
    console.log(nameJ.test($(this).val()));
    $("#check-name").text('');
  } else {
    $('#check-name').text('이름을 확인해주세요');
    $('#check-name').css('color', 'red').css('font-size', '13px');
  }
});

//닉네임 유효성
$("#nick").blur(function () {
  if (nickJ.test($(this).val())) {
    console.log(nickJ.test($(this).val()));
    $("#check-nick").text('');
  } else {
    $('#check-nick').text('닉네임을 확인해주세요');
    $('#check-nick').css('color', 'red').css('font-size', '13px');
  }
});

// 생일 유효성 검사
var birthJ = false;
$('#birth').blur(function () {
  var dateStr = $(this).val();
  var year = Number(dateStr.substr(0, 4)); // 입력한 값의 0~4자리까지 (연)
  var month = Number(dateStr.substr(4, 2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
  var day = Number(dateStr.substr(6, 2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
  var today = new Date(); // 날짜 변수 선언
  var yearNow = today.getFullYear(); // 올해 연도 가져옴

  if (dateStr.length <= 8) {
    // 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
    if (1900 > year || year > yearNow) {

      $('#check-birth').text('생년월일을 확인해주세요 :)');
      $('#check-birth').css('color', 'red').css('font-size', '13px');

    } else if (month < 1 || month > 12) {

      $('#check-birth').text('생년월일을 확인해주세요 :)');
      $('#check-birth').css('color', 'red').css('font-size', '13px');

    } else if (day < 1 || day > 31) {

      $('#check-birth').text('생년월일을 확인해주세요 :)');
      $('#check-birth').css('color', 'red').css('font-size', '13px');

    } else if ((month == 4 || month == 6 || month == 9 || month == 11) && day == 31) {

      $('#check-birth').text('생년월일을 확인해주세요 :)');
      $('#check-birth').css('color', 'red').css('font-size', '13px');

    } else if (month == 2) {

      var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));

      if (day > 29 || (day == 29 && !isleap)) {

        $('#check-birth').text('생년월일을 확인해주세요 :)');
        $('#check-birth').css('color', 'red').css('font-size', '13px');

      } else {
        $('#check-birth').text('');
        birthJ = true;
      } //end of if (day>29 || (day==29 && !isleap))

    } else {

      $('#check-birth').text('');
      birthJ = true;
    } //end of if

  } else {
    //1.입력된 생년월일이 8자 초과할때 :  auth:false
    $('#check-birth').text('생년월일을 확인해주세요 :)');
    $('#check-birth').css('color', 'red').css('font-size', '13px');
  }
}); //End of method /*

$("#email").blur(function () {
  if (mailJ.test($(this).val())) {
    console.log(mailJ.test($(this).val()));
    $("#check-email").text('');
  } else {
    $('#check-email').text('올바른 이메일 형식이 아닙니다.');
    $('#check-email').css('color', 'red').css('font-size', '13px');
  }
});

// 가입하기 실행 버튼 유효성 검사!
var inval_Arr = new Array(6).fill(false);
$('#singUp').click(function (e) {
  e.preventDefault(e)

  // 아이디 정규식
  if (idJ.test($('#id').val())) {
    inval_Arr[0] = true;
  } else {
    inval_Arr[0] = false;
  }

  // 비밀번호가 같은 경우 && 비밀번호 정규식
  if (($('#pw').val() == ($('#checkpw').val())) &&
    pwJ.test($('#pw').val())) {
    inval_Arr[1] = true;
  } else {
    inval_Arr[1] = false;
  }

  // 이름 정규식
  if (nameJ.test($('#name').val())) {
    inval_Arr[2] = true;
  } else {
    inval_Arr[2] = false;
  }

  // 닉네임 정규식
  if (nickJ.test($('#nick').val())) {
    inval_Arr[3] = true;
  } else {
    inval_Arr[3] = false;
  }

  // 생년월일 정규식
  inval_Arr[4] = true;
//  if (birthJ) {
//    inval_Arr[4] = true;
//  } else {
//    inval_Arr[4] = false;
//  }

  // 이메일 정규식
  if (mailJ.test($('#email').val())) {
    inval_Arr[5] = true;
  } else {
    inval_Arr[5] = false;
  }

  var validAll = true;
  for (var i = 0; i < inval_Arr.length; i++) {

    if (inval_Arr[i] == false) {
      validAll = false;
    }
  }
  // 유효성 모두 통과
  if (validAll) {
    alert('회원가입이 완료되었습니다.!');
    document.getElementById('signUpForm').submit();    
//    document.location.href = "login.html";

  } else {
    alert('입력한 정보들을 다시 한번 확인해주세요 :)')
    
  }
});

// scrollUp
$(document).ready(function () {
  $('.movetopbtn').bind('click', function () {
    $('html, body').animate({
      scrollTop: '0'
    }, 0);
  });
});

//Like
(function () {
  $(".like-btn01").click(function () {
    $(".like-m01").html(function (i, val) {
      return val * 1 + 1;
    });
  });
}).call(this);

(function () {
  $(".like-btn02").click(function () {
    $(".like-m02").html(function (i, val) {
      return val * 1 + 1;
    });
  });
}).call(this);

(function () {
  $(".like-btn03").click(function () {
    $(".like-m03").html(function (i, val) {
      return val * 1 + 1;
    });
  });
}).call(this);

(function () {
  $(".like-btn04").click(function () {
    $(".like-m04").html(function (i, val) {
      return val * 1 + 1;
    });
  });
}).call(this);

(function () {
  $(".like-btn05").click(function () {
    $(".like-m05").html(function (i, val) {
      return val * 1 + 1;
    });
  });
}).call(this);

(function () {
  $(".like-btn06").click(function () {
    $(".like-m06").html(function (i, val) {
      return val * 1 + 1;
    });
  });
}).call(this);




//alert
$(".btn-ask").click(function () {
  alert("문의하신 내용은 신속하게 답변 드리겠습니다.");
  document.location.href = "main.html";
});

$("#btn-delete").click(function () {
  alert("회원 탈퇴되었습니다.");
  document.location.href = "../login.html";
});

$("#btn-edit").click(function () {
  alert("회원정보가 변경되었습니다.");
  document.location.href = "mypage.html";
});

$("#btn-write").click(function () {
  alert("등록되었습니다.");
  document.location.href = "main.html";
});

//검색창
$(document).ready(function () {
  $("#search").keyup(function () {
    var k = $(this).val();
    $(".card").hide();
    var temp = $(".card-header:contains('" + k + "')");
    var temp2 = $(".card-body:contains('" + k + "')");
    var temp3 = $(".card-subtitle:contains('" + k + "')");

    $(temp).parent().show();
    $(temp2).parent().show();
    $(temp3).parent().show();
  })
});