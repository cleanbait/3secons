<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/logo.jpg"> <!-- 탭에 로고 박기 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script> <!-- 제이쿼리 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> <!-- 다음 우편번호 검색 -->

<script type="text/javascript">
	function formCheck() {
		// 유효성 검사
		// ID는 3~10자로 입력
		// 비밀번호는 3~10자리 입력
		// 비밀번호와 비밀번호 확인 일치
		// 이름, 성별은 필수 입력
		return true;
	}

	function idcheckOpen() {
		window.open("idcheck", "newwin", "top=200, left=400, width=400, heigth=300, resizeable=no");
	}

	/** 우편번호 찾기 */
function openZipSearch() {
	new daum.Postcode({
		oncomplete: function(data) {
			$('[name=postcode]').val(data.zonecode); // 우편번호 (5자리)
			$('[name=address]').val(data.address);
			$('[name=detailAddress]').val(data.buildingName);
		}
	}).open();
}

</script>

<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@700&family=Gowun+Dodum&family=Gugi&family=Hahmlet:wght@300&display=swap');
/* 폰트 */

.centerdiv {
	margin: auto;
	text-align: center
}

h1{
	font-family: "Gugi";
	font-size:50px;
}

a#top{
	font-family: "Gugi";
	font-size:20px;
	position: relative; right: 375px;
}

a.font {
	color: #bab7ac;
	font-size:8px;
	margin:0px 0px 0px 10px;
}

a.link {
	color: #000000;
	text-decoration: none
}

a.visited {
	color: #000000;
	text-decoration: none;
}

a.hover {
	color: #ff0000;
	text-decoration: underline;	
}

/* 이미지 */
img {
	vertical-align: middle;
}

/* 게시판 관련 */
table {
	margin: auto;
	border-collapse: collapse;
	font-family: "Gowun+Dodum";
	}

tr.hover {
	background-color: #cccccc;
}

th, td {
	border-bottom: 1px solid #c9c4b5;
	border-left: 1px solid #c9c4b5;
	border-top: 1px solid #444444;
	padding: 10px;
}

th {
	width: 200px;
	height: 60px;
	background-color: rgba(240, 239, 232, 0.4 );/* 배경색 + 투명도 지정 */
	font-weight: bold;
}

td {
	width: 600px;
	padding: 3px;
	text-align: left;
}


 th:first-child, td:first-child {
    border-left: none;
  } /* 테이블 왼쪽 선 제거 */

input#button {
	height: 35px;
	width: 100px;
	background-color: rgba(240, 238, 236, 0.7);/* 배경색 + 투명도 지정 */
	border-color: f7c147;/* 버튼 테두리색 */
	border-radius: 4px;
	margin: 5px;
}

input[type="text"] {
	height: 30px;
	width: 300px;
	margin:10px 0px 0px 10px;
}

input[type="password"] {
	height: 30px;
	width: 300px;
	margin:10px 0px 0px 10px;
}

input[type="email"] {
	height: 30px;
	width: 300px;
	margin:10px 0px 0px 10px;
}

/* 에러 메시지 출력 */
.errorMsg {
	color: red;
	font-size: 12px;
	background-color: #ffffff;
}

.w-btn {
    position: relative;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    margin : 15px;
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
    background-color: rgba(24, 25, 26, 0.7);/* 배경색 + 투명도 지정 */
    color: white;
}

/* 약관 */
details { width:830px; height:50%; margin:0 auto; }
details > summary { background:#444; color:#fff; padding:10px; outline:0; border-radius:5px; cursor:pointer; transition:background 0.5s; text-align:center; box-shadow: 1px 1px 2px gray;}
details > summary::-webkit-details-marker { background:#444; color:#fff; background-size:contain; transform:rotate3d(0, 0, 1, 90deg); transition:transform 0.25s;}
details[open] > summary::-webkit-details-marker { transform:rotate3d(0, 0, 1, 180deg);}
details[open] > summary { background:#444;}
details[open] > summary ~ * { animation:reveal 0.5s;}
.tpt { background:#444; color:#fff; margin:5px 0 10px; padding:5px 10px; line-height:25px; border-radius:5px; box-shadow: 1px 1px 2px gray;}


@keyframes reveal {
    from { opacity:0; transform:translate3d(0, -30px, 0); }
    to { opacity:1; transform:translate3d(0, 0, 0); }
} 


/* 롱주형 햄버억 */
input[id="menuicon"] {
    display:none;    
}

input[id="menuicon"] + label {
    display:block;
    width: 60px;
    height: 40px;
    position: relative;
    cursor:pointer;
}

input[id="menuicon"] + label span {
    display: block;
    position: absolute;
    width: 100%;
    height: 5px;
    border-radius: 30px;
    background: #000;
    transition: all .35s;
}

input[id="menuicon"] + label span:nth-child(1) {
    top:0;
}

input[id="menuicon"] + label span:nth-child(2) {
    top:50%;
    transform:translateY(-50%);
}

input[id="menuicon"] + label span:nth-child(3) {
    bottom: 0;
}

input[id="menuicon"]:checked + label span:nth-child(1) {
    top:50%;
    transform:translateY(-50%) rotate(45deg);
}

input[id="menuicon"]:checked + label span:nth-child(2) {
    opacity: 0;
}

input[id="menuicon"]:checked + label span:nth-child(3) {
    bottom: 50%;
    transform:translateY(50%) rotate(-45deg);
}

div[class="sidebar"] {
    width:300px;
    height: 100%;
    background: #222;
    position: fixed;
    top: 0;
    left: -300px;
    z-index:1;
    transition:all .35s;
}

input[id="menuicon"]:checked + label + div {
    left: 0;
}

input[id="menuicon"]:checked + label {
    z-index:2;
}

input[id="menuicon"]:checked + label span {
    background:#fff;
}

div div[class="sidemenu"] {
    position:absolute;
    top:100px;
    left:20px;
    width: 250px;
    height: 800px;
    color: #fff;
}

.sidemenu a {
    text-decoration: none;
    color: #fff;
    font-size: 40px;
    font-style: bold;
}
/* 롱주형 햄버억 */

/* 롱주형 상단메뉴 (5252 그는 신이냐구!!) */
/* 전체적인 */

html, body {
    margin: 0;
    padding: 0;
    height: 100%;
    min-width: 992px;
    font-family: "Helvetica";
}

body h3 {
    margin-top: 20px;
    margin-left: 100px; 
    font-size: 24px;
    font-style: bold;
    color: #545454;
}

.wrapper {
    display: flex;
    flex-direction:column;
    height: 100%;
}

.main-content {
    flex:1;
}
/* 제일 윗단 */

.smol {
    position: fixed;
    top: 0;
    background-color: white;
    left: 0; width:100%;
}

.smol li {
    list-style-type: none;
    float:right;
    margin-right: 30px;
}

.smol a {
    text-decoration: none;
    color: black;
    font-style: bold;
    font-size: 13px;
}

/* 로고 */

.logo img {
    height: 120px;
    margin: 0 auto;
    display: block;
}

/* 헤드메뉴 */

.topmenu {
    text-align: center;
}

.topmenu a {
    font-size: 20px;
    color: #545454;
    font-style: bold;
    text-decoration: none;
    position: relative;
    padding: 20px 40px;
}

.topmenu a::after {
    content: "";
    position: absolute;
    bottom: 0;
    left: 50%;
    transform: translateX(-50%);
    width: 0%;
    height: 4px;
    background: #2F4F4F;
    transition: all .5s ease-out;
}

.topmenu a:hover::after {
    width: 100%;
}
/* 푸터 */

footer {
    padding:30px 0;
    background: #333;
    color:#fff; 
}
/* 롱주형 상단메뉴 (5252 그는 신이냐구!!) */
</style>
</head>
<body>
<!-- 롱주형 햄버억 -->
<input type="checkbox" id="menuicon">
<label for="menuicon">
    <span></span>
    <span></span>
    <span></span>
</label>
<div class="sidebar">
    <div class="sidemenu">
        <p><a href="#">Notice</a></p>
        <p><a href="#">Event</a></p>
        <p><a href="#">Donation</a></p>
        <p><a href="#">Sponsor</a></p>
    </div>
</div>
<!-- 롱주형 햄버억 -->
<!-- 롱주형 상단메뉴 -->
<div class="wrapper">
    <div class="header">
        <div class="smol">
              <ul>
                <li><a href="#">Contact</a></li>
                <li><a href="#">Shop</a></li>
                <li><a href="#">Cart</a></li>
                <li><a href="#">Login</a></li>
                <li><a href="#">Search</a></li>
              </ul>
        </div><br><hr>
        <div class="logo">
            <img src="${pageContext.request.contextPath}/resources/img/logo.jpg">
        </div>
        
        <div class="topmenu">
            <a href="#">Notice</a>
            <a href="#">Event</a>
            <a href="#">Donation</a>
            <a href="#">Sponsor</a>
        </div><br><hr><br>
    </div>
    <div>
    <div class="centerdiv">
	<h1> 회원가입 </h1>
	<form id="joinForm" action="join" method="post" onsubmit="return formCheck()">
	<a id = "top">기본정보</a>
		<table>
			<tr>
				<th>아이디<a style="color: red">*</a></th>
				<td>
					<input type="text" name="custid" id="custid" placeholder="ID 중복확인 이용" readonly="readonly">
					<input id="button" type="button" value="ID 중복확인" onclick="idcheckOpen()"><br> <!-- 나중에 제이쿼리로 동적 처리할것 -->
					<a class="font">(영문 대소문자/숫자, 4~16자)</a>
				</td>
			</tr>
			<tr>
				<th>비밀번호<a style="color: red">*</a></th>
				<td>
					<input type="password" name="password" id="password" placeholder="비밀번호 입력" required><br>
					<a class="font">(영문 대소문자/숫자/특수문자, 8~16자)</a>
				</td>
			</tr>
			<tr>
				<th>비밀번호 확인<a style="color: red">*</a></th>
				<td>
					<input type="password" name="password" id="password" placeholder="비밀번호 확인" required>
				</td>
			</tr>
			<tr>
				<th>이름<a style="color: red">*</a></th>
				<td>
					<input type="text" name="name" id="name" placeholder="이름 입력" required>
				</td>
			</tr>
			<tr>
				<th>주민번호<a style="color: red">*</a></th>
				<td>
					<input type="text" name="ssn" placeholder="주민번호 입력  (예시 : 950101-1111111)" required>
				</td>
			</tr>
			<tr>
				<th>주소<a style="color: red">*</a></th>
				<td>
					<input type="text" name="postcode" placeholder="우편번호"
					readonly="readonly" style="width:150px;" required>
					<input id="button" type="button" value="우편번호 입력" onclick="openZipSearch()"><br>
					<input type="text" name="address" placeholder="도로명 주소"
					readonly="readonly" required>
					<input type="text" name="detailAddress" placeholder="상세 주소" style="margin: 10px" required>
				</td>
			</tr>
			<tr>
			<th>전화번호<a style="color: red">*</a></th>
				<td>
					<select name="phoneNum" style="height: 35px; width:50px; margin: 10px">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>-
					<input type="text" name="number" id="number" placeholder="번호 입력" style="width:75px; margin: 10px" required>-
					<input type="text" name="number" id="number" placeholder="번호 입력" style="width:75px;"required>
				</td>
			</tr>
			<tr>
			<th>이메일<a style="color: red">*</a></th>
				<td>
					<input type="email" name="email" id="email" placeholder="이메일 입력" required>
				</td>
			</tr>
		</table>
		<details>
			<summary>회원 약관 - [클릭하여 확인]</summary>
			<table>
				<tr>
					<td style="width: 830px; text-align: center;">
	   					<p>대충 약관내용 슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.ㅍ
	   					슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.
	   					슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.
	   					슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.
	   					슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.
	   					슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.슈슉 슈숙. 슉. 시. 시발럼아.
	   					<br>점심 나가서 먹을 것 같아</p><br>
	   					<a>인정?? 어, 인정~.</a>
	   					<input type="checkbox" name="checkbox" id="checkbox" value="OK" required>
					</td>
				</tr>
			</table>
		</details>		<br>
		
		
		<input class="w-btn w-btn-gra1" type="submit" value="회원가입">
		<input class="w-btn w-btn-gra1" type="reset" value="다시쓰기">
	</form>
</div>
    </div>
    <footer> copyright ©2022 codeOpacity. designed by 3seconds_To_Mars<br>
    <a href="purchase">구매하기</a>
    <a href="hamberger">햄버거</a>
    </footer>
</div>
<!-- 롱주형 상단메뉴 -->

</body>
</html>