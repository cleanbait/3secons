<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원종욱페이지</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/wju/hint.css">
<script type="text/javascript">
</script>
<style type="text/css"></style>
</head>
<body>
<header id="testHead" class="head_customer">
  <h1 class="tit_logo"> <a href="/mars" class="link_logo"> <span class="img_logo"> <span class="ir_wa">아나바다고객센터 </span> </span> </a> </h1>
</header>
<hr class="hide">
<main id="kakaoContent">
  <div id="cMain">
    <article id="mArticle">
      <h2 id="kakaoBody" class="tit_commercecs">문의하기</h2>
      <form id="requestForm" action="/inquire/shopad" enctype="multipart/form-data" method="post">
        <fieldset class="fld_entercs">
          <legend class="screen_out">문의하기 폼</legend>
          <div class="detail_entercs">
            <div class="bundle_entercs"> <strong class="tit_bundle">
              <label for="nameDirector">이름</label>
              <span class="ico_commercecs ico_require">필수항목</span> </strong>
              <div class="about_bundle">
                <div class="write_entercs">
                  <input type="text" id="nameDirector" name="director" class="tf_g" placeholder="이름을 입력해주세요" maxlength="11">
                  <span class="txt_error">이름을 입력해 주세요</span> </div>
              </div>
            </div>
            <div class="bundle_entercs"> <strong class="tit_bundle">
              <label for="emailAddress">이메일 주소</label>
              <span class="ico_commercecs ico_require">필수항목</span></strong>
              <div class="about_bundle">
                <div class="write_entercs">
                  <input type="text" id="emailAddress" name="email" class="tf_g" placeholder="예) example@kakao.com">
                  <span class="txt_error">형식에 맞지 않는 e-mail 주소입니다</span> </div>
              </div>
            </div>
            <div class="bundle_entercs"> <strong class="tit_bundle">
              <label for="TITLEDirector">제목</label>
              <span class="ico_commercecs ico_require">필수항목</span> </strong>
              <div class="about_bundle">
                <div class="write_entercs">
                  <input type="text" id="nameDirector" name="director" class="tf_g" placeholder="이름을 입력해주세요" maxlength="11">
                  <span class="txt_error">이름을 입력해 주세요</span> </div>
              </div>
            </div>
            <div class="bundle_entercs"> <strong class="tit_bundle">
              <label for="contInquiry">문의내용</label>
              <span class="ico_commercecs ico_require">필수항목</span></strong>
              <div class="about_bundle">
                <div class="write_entercs write_long">
                  <textarea id="contInquiry" name="content" class="tf_g" maxlength="550"></textarea>
                  <span class="txt_error">500자 이내로 작성해 주세요</span> </div>
              </div>
            </div>
</div>
<div class="receive_entercs">
            <button type="submit">접수</button>
          </div>
        </fieldset>
      </form>
    </article>
  </div>
</main>
</body>
</html>