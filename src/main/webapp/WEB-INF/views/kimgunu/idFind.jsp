<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디/비밀번호 찾기</title>
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/logo.jpg">

<script type="text/javascript">

</script>

<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@700&family=Gowun+Dodum&family=Gugi&family=Hahmlet:wght@300&display=swap');
/* 폰트 */

body {
	background-image: url("${pageContext.request.contextPath}/resources/img/images.jpg");
	background-size: cover;				 /* 배경에 여백없게*/
	background-repeat: no-repeat; 		/* 배경 페이지 반복 설정 여부 X*/
	text-align: center;					/* 센터로*/
	font-family: "Gowun+Dodum";			/* 폰트 */
	font-size: 12px;					/* 폰트 사이즈 */
	 margin-top:25px;
	}

form{
	font-family: "Gowun+Batang";
	display: inline-flex;
}

.member {
 font-size: 50px;
 text-shadow: 0 0 10px #666;	/* 그림자 생성 */
 color: #fff; /* 폰트 색 지정 */
 font-family:  'Gugi';
}

.form {
 background-color: aliceblue; /* 배경색 */
 width: 498px;
 height: 300px;
 border-radius: 25px; /* 박스 모서리 둥글게 */
 border: 3px solid #7acbe2; /* 선 굵기 5, 양선, 색-999 */
 margin: 15px auto;
  text-align: center;
}

.form2 {
 background-color: aliceblue;
 width: 380px;
 min-width: 180px;
 margin: 40px auto; /* 윗 마진 */
 text-align: center;
}

.form3 {
 background-color: aliceblue;
 float: left; /* 폰트 정렬 */
 text-align: center;					/* 센터로*/
 /*   background:#f00;  */
}

.form3 label {
 width: 60px;
 height: 20px;
 /*  display: block; */
 float: left;
 font-family:  'Gowun+Dodum', sans-serif;
}

.form4 {

}

#wrap {
 width: 600px;
 height: 500px;
 margin: 0 auto;
}

.clear {
 clear: both;
}

input[type="submit"] {
 float: left;
 color: #fff;
 /*  display:block; */
 height: 50px;
 background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
 border-radius: 5px;
 border: none;
 font-family:  'Gugi', sans-serif;
}
input[type="button"] {
 margin-top:35px;
}
input[type="checkbox"] {
 margin-top:10px;
 font-family: 'Gowun+Dodum', sans-serif;
}

.w-btn {
    position: relative;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

.w-btn-outline {
    position: relative;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

.w-btn:active {
    transform: scale(1.5);
}

.w-btn-gra1 {
    background: linear-gradient(-45deg, #33ccff 0%, #ff99cc 100%);
    color: white;
}

</style>
</head>
<body>

<div style="font-size: 25px; text-align: left; color: aliceblue; /* 배경색 */
font-family: 'Gugi'; font-weight: bold;">
<a style="text-decoration:none; color: aliceblue;" href="http://localhost:8888/mars/kimgunu/login"> « 로그인 페이지로 </a></div>

<form class = noLogin>
  <div id="wrap">
  <h1 class="member">아이디 찾기</h1>
   <div class="form">
    <div class="form2">
     <div class="form3">
	<h3> 찾으려는 아이디의 정보를 입력해 주세요. </h3>
	아이디 확인를 위해 고객님의 이메일의 인증번호를 입력해 주세요.<br>
	<br><br>
      <input type="text" id="user" placeholder="이름" style="width: 250px; height: 28px;">
      <div class="clear"></div>
      <input type="email" id="user" placeholder="이메일" style="width: 250px; height: 28px;">
     </div>
     <div class="clear"></div>
     <div class="form4">
      <div class="clear"></div>
 	<label><input class="w-btn w-btn-gra1" type="button" value="아이디 확인"></label>
     </div>
    </div>
   </div>
  </div>
 </form>

<form class = noLogin>
  <div id="wrap">
  <h1 class="member">비밀번호 찾기</h1>
   <div class="form">
    <div class="form2">
     <div class="form3">
	<h3> 찾으려는 비밀번호의 정보를 입력해 주세요. </h3>
	비밀번호 확인를 위해 고객님의 이메일의 인증번호를 입력해 주세요.<br>
	<br><br>
      <input type="text" id="user" placeholder="아이디" style="width: 250px; height: 28px;">
      <div class="clear"></div>
      <input type="email" id="user" placeholder="이메일" style="width: 250px; height: 28px;">
     </div>
     <div class="clear"></div>
     <div class="form4">
      <div class="clear"></div>
 	<label><input class="w-btn w-btn-gra1" type="button" value="비밀번호 확인"></label>
     </div>
    </div>
   </div>
  </div>
 </form>

 <!--    <hr class="separator"/> -->
    <div>
      <h2>㈜ 3secons_of_Mars</h2>
      <p>©2021 All Rights Reserved.<br>
      우리는 섹시 맵시 요시 리 싸이클링을 추구하는 국제적 기업이 되고싶다.</p>
    </div>
  
</body>
</html>