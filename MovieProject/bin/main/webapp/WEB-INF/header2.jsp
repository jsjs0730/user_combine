

<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- header2 시작 -->
<!--  hm | </head> 부터 </header>까지 -->
</head>

<body>

   <!--preloading-->
   <div id="preloader">
      <img class="logo" src="resources/images/logo1.png" alt="" width="119"
         height="58">
      <div id="status">
         <span></span> <span></span>
      </div>
   </div>
   <!--end of preloading-->

   <!-- ======================================================                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ================================================================== -->
   <!--                                               hm |        모달 팝업 시작                                                  -->
   <!-- ======================================================================================================================== -->

   <!-- ======================================================================================================================== -->
   <!--                                            hm |         로그인 팝업 시작                                                  -->
   <!-- 입력 폼 패턴 삭제 -->
   <div class="login-wrapper" id="login-content">
      <div class="login-content">
         <a href="#" class="close">x</a>
         <h3>Login</h3>
         <form action="Login" method="post" name="LoginForm">
            <!-- action 변경 필요 -->
            <div class="row">
               <label for="email"> <input type="text" name="m_email"
                  id="m_email" placeholder="이메일을 입력하세요" required="required"
                  autocapitalize="off" />
               </label>
            </div>

            <div class="row">
               <label for="password"> <input type="password"
                  name="m_password" id="m_password" placeholder="비밀번호를 입력하세요"
                  required="required" />
               </label>
            </div>
            <div class="row">
               <div class="remember">
                  <div>
                     <input type="checkbox" id="idSaveCheck" name="remember"
                        value="Remember me"><span>아이디 저장</span>
                  </div>
               </div>
            </div>
            <div class="row hm_logtext">
               <button type="button" id="loginbtn">Login</button>
               <a class="btn signupLink" href="#">회원가입 | </a> <a
                  class="btn idfindLink" href="">아이디 찾기 | </a> <a
                  class="btn pwfindLink" href="">비밀번호 찾기</a>
            </div>
         </form>

      </div>
   </div>
   <!--    hm |                                                         로그인 폼 팝업 끝                                                 -->
   <!-- ======================================================================================================================== -->

   <!-- ======================================================================================================================== -->
   <!-- |   hm |                                                      아이디 찾기 팝업 시작                                              | -->
   <div class="login-wrapper" id="id-find-content">
      <!-- login-content 아이디 변경 -->
      <div class="login-content">
         <!-- login-content 클래스 변경 X -->
         <a href="#" class="close">x</a>
         <h3>아이디 찾기</h3>
         <h6>등록된 휴대폰 번호로 찾기</h6>
         <p>가입 당시 입력한 휴대전화 번호를 통해 아이디를 찾을 수 있습니다.</p>
         <form method="post" class="findIdClass">
            <!-- login.php 액션 변경 -->

            <div class="row">
               <label for="username"> <!-- username 라벨 이름 변경 --> 이름 <!-- 라벨 추가 -->
                  <input type="text" name="m_name" id="id_username" placeholder="이름"
                  required="required" autocapitalize="off" /> <!-- name, id, placeholder 변경-->
               </label>
            </div>

            <div class="row phone">
               <label for="phone"> <!-- password 라벨 이름 변경 --> 휴대전화</br> <!-- 라벨 추가 -->
                  <input type="text" name="m_phone1" maxlength="3" placeholder=""
                  required="required" /> - <input type="text" name="m_phone2"
                  maxlength="4" placeholder="" required="required" /> - <input
                  type="text" name="m_phone3" maxlength="4" placeholder=""
                  required="required" /> <!-- name, id, placeholder 변경-->
               </label>
            </div>

            <div class="row" id="hm_logtext">
               <!-- <button type="submit">확인</button>  버튼 이름 변경 -->
               <button class="idokLink" type="button">확인</button>
               <a class="btn pwfindLink" href="">비밀번호 찾기</a>
               <!-- 하단 링크 변경 -->
            </div>
         </form>

      </div>
   </div>
   <!-- |        hm |                                                  아이디 찾기 팝업 끝                                              |  -->
   <!-- ======================================================================================================================== -->

   <!-- ======================================================================================================================== -->
   <!-- |        hm |                                            아이디 찾기 확인 팝업 시작                                              | -->
   <div class="login-wrapper" id="id-ok-content">
      <!-- login-content 아이디 변경 -->
      <div class="login-content" style="text-align: center">
         <!-- login-content 클래스 변경 X -->
         <a href="#" class="close">x</a>
         <!--  
            <h6 class="h6one"> 입력하신 정보와 일치하는 아이디는 <br>아래와 같습니다.</h6>
         <h6 class="h6two"style="display:none"> 입력하신 정보와 일치하는 <br>아이디가 없습니다.</h6>
         -->
         <!-- 이메일 정보 추가 -->
         <p>
            <span> </span>
         </p>
         <div class="row">
            <button class="close" type="button" style="display: inline-block;">확인</button>
         </div>
      </div>
   </div>
   <!-- |           hm |                                          아이디 찾기 확인 팝업 끝                                              |  -->
   <!-- ======================================================================================================================== -->

   <!-- ======================================================================================================================== -->
   <!-- |          hm |                                        비밀번호 찾기 폼 팝업 시작                                              | -->
   <div class="login-wrapper" id="pw-find-content">
      <!-- login-content 아이디 변경 -->
      <div class="login-content">
         <!-- login-content 클래스 변경 X -->
         <a href="#" class="close">x</a>
         <h3>비밀번호 찾기</h3>
         <h6>등록된 휴대폰 번호로 찾기</h6>
         <p>가입 당시 입력한 휴대전화 번호를 통해 인증 후 새비밀번호를 등록해주세요.</p>
         <form method="post" class="findPwClass">
            <!-- login.php 액션 변경 -->
            <div class="row">
               <label for="email"> <!-- username 라벨 이름 변경 --> 이메일 <!-- 라벨 추가 -->
                  <input type="text" name="m_email" id="pw_email" placeholder="이메일"
                  required="required" autocapitalize="off" /> <!-- name, id, placeholder 변경-->
               </label>
            </div>

            <div class="row">
               <label for="username"> <!-- username 라벨 이름 변경 --> 이름 <!-- 라벨 추가 -->
                  <input type="text" name="m_name" id="pw_username" placeholder="이름"
                  required="required" autocapitalize="off" /> <!-- name, id, placeholder 변경-->
               </label>
            </div>

            <div class="row phone">
               <label for="phone"> <!-- password 라벨 이름 변경 --> 휴대전화</br> <!-- 라벨 추가 -->
                  <!-- 라벨 추가 --> <input type="text" name="m_phone1" maxlength="3"
                  placeholder="" required="required" /> - <input type="text"
                  name="m_phone2" maxlength="4" placeholder="" required="required" />
                  - <input type="text" name="m_phone3" maxlength="4" placeholder=""
                  required="required" /> <!-- name, id, placeholder 변경-->
               </label>
            </div>

            <div class="row" id="hm_logtext">
               <!-- <button type="submit">확인</button>  버튼 이름 변경 -->
               <button class="pwokLink" type="button">확인</button>
               <a class="btn idfindLink" href="">아이디 찾기</a>
               <!-- 하단 링크 변경 -->
            </div>
         </form>

      </div>
   </div>
   <!-- |      hm |                                            비밀번호 찾기 폼 팝업 끝                                               |  -->
   <!-- ======================================================================================================================== -->




   <!-- ======================================================================================================================== -->
   <!-- |       hm |                                           비밀번호 찾기 확인 팝업 시작                                              | -->
   <div class="login-wrapper" id="pw-ok-content">
      <!-- login-content 아이디 변경 -->
      <div class="login-content">
         <!-- login-content 클래스 변경 X -->
         <a href="#" class="close">x</a>
         <h3>비밀번호 찾기</h3>
         <p>회원님의 계정 비밀번호를 재설정 해주세요.</p>
         <p>신규비밀번호는 8-20자 이내의 영문자, 숫자의 조합으로 작성 하셔야 합니다.</p>
         <form class="newPassword">
            <input type="hidden" id="phone_number" name="m_phone" value="" />
            <div class="row">
               <label for="password"> <!-- username 라벨 이름 변경 --> 신규 비밀번호
                  입력 </br> <!-- 라벨 추가 --> <input type="password" name="m_password"
                  id="password" placeholder="" required="required"
                  autocapitalize="off" onchange="checkPassword(this.value)" /> <!-- name, id, placeholder 변경-->
                  <span> </span>
               </label>

            </div>

            <div class="row">
               <label for="password2"> <!-- username 라벨 이름 변경 --> 비밀번호 확인
                  </br> <!-- 라벨 추가 --> <input type="password" name="m_password2"
                  id="password2" placeholder="" required="required"
                  autocapitalize="off" onchange="checkPasswordConfirm(this.value)" />
                  <!-- name, id, placeholder 변경--> <span> </span>
               </label>
               <div class="alert-success" id="alert-success">비밀번호가 일치합니다.</div>
               <div class="alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
            </div>

            <div class="row">
               <button class="pwcfLink" type="button">비밀번호 변경</button>
            </div>
         </form>
      </div>
   </div>
   <!-- |     hm |                                             비밀번호 찾기 확인 팝업 끝                                               |  -->
   <!-- ======================================================================================================================== -->

   <!-- ======================================================================================================================== -->
   <!--         hm |                                                   회원가입 폼 팝업 시작                                              -->
   <!--signup form popup-->
   <div class="login-wrapper" id="signup-content">
      <div class="login-content">
         <a href="#" class="close">x</a>
         <h3>sign up</h3>
         <form method="post" id="joinform" action="memberJoin"
            method="post" onsubmit="return ws_check()">

            <div class="row">

               <label for="email-2"> 이메일 :</br> 
               <input type="text" name="m_email" id="email-2" placeholder="이메일을 입력하세요" required="required" />
               <button id="email_overlap_chk" class="overch" style="width:19%;" >중복확인</button>
               <div id="email_chk_msg">이메일 중복검사를 눌러주세요</div>   

               </label>
               
            </div>

            <div class="row">
               <label for="username-2"> 이름 : <input type="text"
                  name="m_name" id="username-2" placeholder="이름을 입력하세요"
                  />
               </label>
            </div>

            <div class="row">
               <label for="nickname-2"> 닉네임 :</br> <input type="text"
                  name="m_nickname" id="nickname-2" placeholder="닉네임을 입력하세요"
                  required="required" />
                  <button id="nick_overlap_chk" style="width:19%;">중복확인</button>
                  <div id="nick_chk_msg">닉네임 중복검사를 눌러주세요</div>
               </label>
               
            </div>

            <div class="row">
               <label for="password-2"> 비밀번호: <input type="password"
                  name="m_password" id="password-2"
                  placeholder="8-20자 이내 영문자, 숫자의 조합" required="required" />
               </label>
            </div>
            <div class="row">
               <label for="repassword-2"> 비밀번호 확인 : <input type="password"
                  name="password" id="repassword-2"
                  placeholder="8-20자 이내 영문자, 숫자의 조합" Srequired="required" />
               </label>
            </div>

            <div class="row phone">
               <label for="repassword-2"> 휴대전화 : </br> <input type="text"
                  name="m_phone1" placeholder="" Srequired="required" /> - <input
                  type="text" name="m_phone2" placeholder="" Srequired="required" />
                  - <input type="text" name="m_phone3" placeholder=""
                  Srequired="required" />
               </label>
            </div>

            <div class="row">
               <label for="genre-2"> 선호장르 : </br> <label
                  class="fancy-radio custom-color-coral"> <input
                     name="m_favorite" value="공포/호러" type="radio" checked><span><i></i>공포/호러</span>
               </label> <label class="fancy-radio custom-color-coral"> <input
                     name="gender4" value="멜로/로맨스" type="radio"><span><i></i>멜로/로맨스
                  </span>
               </label> <label class="fancy-radio custom-color-coral"> <input
                     name="m_favorite" value="액션" type="radio"><span><i></i>액션</span>
               </label> <label class="fancy-radio custom-color-coral"> <input
                     name="m_favorite" value="코미디" type="radio"><span><i></i>코미디</span>
               </label> <label class="fancy-radio custom-color-coral"> <input
                     name="m_favorite" value="범죄" type="radio"><span><i></i>범죄</span>
               </label> <label class="fancy-radio custom-color-coral"> <input
                     name="m_favorite" value="스릴러" type="radio"><span><i></i>스릴러</span>
               </label> <label class="fancy-radio custom-color-coral"> <input
                     name="m_favorite" value="느와르" type="radio"><span><i></i>느와르</span>
               </label> <label class="fancy-radio custom-color-coral"> <input
                     name="m_favorite" value="가족" type="radio"><span><i></i>가족</span>
               </label> <label class="fancy-radio custom-color-coral"> <input
                     name="m_favorite" value="애니메이션" type="radio"><span><i></i>애니메이션</span>
               </label> <label class="fancy-radio custom-color-coral"> <input
                     name="m_favorite" value="코미디" type="radio"><span><i></i>코미디</span>
               </label>
               </label>
            </div>

            <div class="row">


               <label for="terms-2"> 약관동의 : </br> <label
                  class="fancy-checkbox custom-bgcolor-coral"> <input
                     type="checkbox" checked name="useage_agree" value="usage_ok"><span>[필수]이용약관</span>
               </label> <a class="termsLink">약관보기</a> <label
                  class="fancy-checkbox custom-bgcolor-coral"> <input
                     type="checkbox" checked name="info_agree" value="info_ok"><span>[필수]개인정보
                        수집 및 이용</span>
               </label> <a class="termsLink">약관보기</a> <input name="m_cert" type="hidden"
                  value="Y" /> <label class="fancy-checkbox custom-bgcolor-coral">
                     <input type="checkbox" checked name="m_eagree" value="Y"><span>이메일
                        수신 동의</span>
               </label> <label class="fancy-checkbox custom-bgcolor-coral"> <input
                     type="checkbox" checked name="m_sagree" value="Y"><span>SMS
                        수신 동의</span>
               </label>
               </label> <label class="fancy-checkbox custom-bgcolor-coral" id="checkall">
                  <input type="checkbox" checked><span>전체동의</span>

               </label>
               <hr>
            </div>

            <div class="row">
               <button class="signupokLink" type="submit">가입하기</button>
            </div>
         </form>
      </div>
   </div>
   <!--end of signup form popup-->
   <!--        hm |                                                     회원가입 폼 팝업 끝                                               -->
   <!-- ======================================================================================================================== -->

   <!-- ======================================================================================================================== -->
   <!-- |      hm |                                              회원가입 확인 팝업 시작                                                 | -->
   <!--signup OK popup-->
   <div class="login-wrapper" id="signup-ok-content" style="height: 50%;">
      <div class="login-content">
         <a href="#" class="close">x</a>
         <h3>sign up</h3>

         <h4>회원가입이 완료되었습니다.</h4>
         </br>
         <!-- 코드수정: id 넣어야 함-->
         <h6>회원님 회원가입을 축하합니다.</h6>
         </br>
         <p>블록버스터의 다양한 영화 정보를 확인하세요!</p>

         <div class="row">
            <button class="close" type="submit" id="hm_button2">홈으로</button>
            <button class="loginLink" type="submit" id="hm_button2">로그인</button>

         </div>
      </div>
   </div>
   <!--end of signup OK popup-->
   <!-- |          hm |                                           회원가입 확인 팝업 끝                                                 |  -->
   <!-- ======================================================================================================================== -->




   <!-- ======================================================================================================================== -->
   <!-- |          hm |                                          아이디 중복확인 팝업 시작                                               | -->
   <div class="login-wrapper" id="id-check-content">
      <!-- login-content 아이디 변경 -->
      <div class="login-content">
         <!-- login-content 클래스 변경 X -->
         <a href="#" class="close">x</a>
         <h3>아이디 중복 확인</h3>

         <div class="row">
            <label for="email"> <!-- username 라벨 이름 변경 --> 사용할 이메일 입력 <!-- 라벨 추가 -->
               <input type="text" name="email" id="email" placeholder=""
               required="required" autocapitalize="off" /> <!-- name, id, placeholder 변경-->
            </label>
         </div>

         <div class="row">
            <button class="" type="submit">확인</button>
            <!-- 한칸만 끄기.. -->
         </div>
      </div>
   </div>
   <!-- |           hm |                                          아이디 중복확인 팝업 끝                                               |  -->
   <!-- ======================================================================================================================== -->

   <!-- ======================================================================================================================== -->
   <!-- |            hm |                                        닉네임 중복확인 팝업 시작                                               | -->
   <div class="login-wrapper" id="nik-check-content">
      <!-- login-content 아이디 변경 -->
      <div class="login-content">
         <!-- login-content 클래스 변경 X -->
         <a href="#" class="close">x</a>
         <h3>닉네임 중복 확인</h3>

         <div class="row">
            <label for="nickname"> <!-- username 라벨 이름 변경 --> 사용할 닉네임 입력
               <!-- 라벨 추가 --> <input type="text" name="nickname" id="nickname"
               placeholder="" required="required" autocapitalize="off" /> <!-- name, id, placeholder 변경-->
            </label>
         </div>

         <div class="row">
            <button class="" type="submit">확인</button>
            <!-- 한칸만 끄기 -->
         </div>
      </div>
   </div>
   <!-- |      hm |                                               닉네임 중복확인 팝업 끝                                               |  -->
   <!-- ======================================================================================================================== -->

   <!-- ======================================================================================================================== -->
   <!-- |            hm |                                        약관 팝업 시작                                               | -->
   <div class="login-wrapper2" id="terms-content">
      <!-- login-content 아이디 변경 -->
      <div class="login-content2">
         <!-- login-content 클래스 변경 X -->
         <a href="#" class="close">x</a>
         <h3>약관</h3>
         <div class="hm_contents">
            <h3>제 1장 총칙</h3>
            <h4>제 1 조 (목적)</h4>
            <p>본 약관은 통계청(이하 ‘제공기관’이라 한다)에서 제공하는 BBB(Block Buster Bit)를 활용함에
               있어 준수하여야 하는 활용조건 및 절차, 활용자의 권리・의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
         </div>

         <div class="row">
            <!-- <button onclick="this.parentNode.parentsNode.style.display = 'none';">확인</button>-->
            <button class="terms-content-bt">닫기</button>

         </div>
      </div>
   </div>
   <!-- |      hm |                                               약관 팝업 끝                                               |  -->
   <!-- ======================================================================================================================== -->



   <!-- ======================================================================================================================== -->
   <!-- ======================================================================================================================== -->
   <!-- ======================================================================================================================== -->
   <!--        hm |                                                       모달 팝업 끝                                                    -->
   <!-- ======================================================================================================================== -->

   <!-- BEGIN | Header -->
   <header class="ht-header sticky">
      <div class="container">
         <nav class="navbar navbar-default navbar-custom">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header logo">
               <div class="navbar-toggle" data-toggle="collapse"
                  data-target="#bs-example-navbar-collapse-1">
                  <span class="sr-only">Toggle navigation</span>
                  <div id="nav-icon1">
                     <span></span> <span></span> <span></span>
                  </div>
               </div>
               <a href="index"><img class="logo"
                  src="resources/images/logo1.png" alt="" width="119" height="58"></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse flex-parent"
               id="bs-example-navbar-collapse-1">
               <ul class="nav navbar-nav flex-child-menu menu-left">
                  <li class="hidden"><a href="#page-top"></a></li>
                  <!--  hm |   add : 각 항목의 텍스트 변경-->
                  <li class="dropdown first"><a
                     class="btn btn-default dropdown-toggle lv1"
                     href="movieTicketing"> 예매 </a></li>
                  <li class="dropdown first"><a
                     class="btn btn-default dropdown-toggle lv1" href="movieList">
                                             영화 </a></li>

                  <li class="dropdown first"><a
                     class="btn btn-default dropdown-toggle lv1"
                     href="cinemaList"> 영화관 </a></li>
                  <li class="dropdown first"><a
                     class="btn btn-default dropdown-toggle lv1"
                     href="boardEventCollection"> 이벤트 & 정보 </a></li>
                  <li class="dropdown first"><a
                     class="btn btn-default dropdown-toggle lv1"
                     data-toggle="dropdown" data-hover="dropdown"> 커뮤니티<i
                        class="fa fa-angle-down" aria-hidden="true"></i>
                  </a>
                     <ul class="dropdown-menu level1">
                        <li><a href="boardFreeListP">자유 게시판</a></li>
                        <li class="it-last"><a href="boardShareListP">나눔 게시판</a></li>
                     </ul></li>
               </ul>
               <ul class="nav navbar-nav flex-child-menu menu-right">

                  <c:choose>
                     <c:when test="${!empty m_email }">
                        <li class="dropdown first"><a
                           class="btn btn-default dropdown-toggle lv1" href="mmlList">
                              나영리 </a></li>

                        <li><a href="mypage">마이페이지</a></li>
                        <li><a href="Logout">로그아웃</a></li>
                        <!--  hm |   <li><a href="member_join.html">회원가입</a></li> -->
                     </c:when>

                     <c:otherwise>
                        <li class="loginLink"><a href="#">로그인</a></li>
                        <li class="btn signupLink"><a href="#">회원가입</a></li>
                     </c:otherwise>
                  </c:choose>
               </ul>

            </div>
            <!-- 검색 모달 -->
            <form id="demo-2">
               <input type="search" placeholder="Search">
            </form>
         </nav>

      </div>
   </header>
   <!-- END | Header -->
   <script src="<c:url value="/resources/js/jquery.js" />"></script>

<script src="<c:url value="/resources/js/plugins.js" />"></script>
<script src="<c:url value="/resources/js/plugins2.js" />"></script>
<script>
$('#check_all').on('click', function() {
   //모든 이벤트가 작동이 안되는듯 하다. 페이지 내부에서는 작동. hn_js.js에서는 동일 코드가 미작동. 왜??
   alert('asdasd');
   if($('#check_all').is(':checked')) {      $('.chk_box').prop('checked', true);
   }else {
      $('.chk_box').prop('checked', false);
   }
   
});

</script>   
<!-- header2 끝 -->