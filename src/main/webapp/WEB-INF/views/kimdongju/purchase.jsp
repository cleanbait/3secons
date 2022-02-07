<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 구매</title>
<style type="text/css">

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

/* 구매 이미지 */

.buyimg img {
	width: 600px;
	height: 600px;
	float: left;
	margin: 50px;
}
</style>
</head>
<body>
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
	
	<div class="buyimg">
	<img src="${pageContext.request.contextPath}/resources/img/logo2.jpg">
	<h3>구매상품명</h3>
	<h5>구매보조상품명</h5>
	<br>
	<p>간단설명</p>
	<ul>
		<li>하자1</li>
		<li>하자2</li>
		<li>하자3</li>
	</ul>
	<p>판매가 : ???</p>
	수량 <input type="number" value="1" min="1" width="50px;">
	<h5>상세설명</h5>
	<pre>이건 진짜진짜진짜 좋아요.
	너무너무너무 좋아요.
	하자가 있지만 진짜 좋아요.
	</pre>
	<button>구매하기</button>
	<button>장바구니</button>
	</div>
	<footer> copyright ©2022 codeOpacity. designed by 3seconds_To_Mars<br>
	<a href="purchase">구매하기</a>
	<a href="hamberger">햄버거</a>
	</footer>
</div>
</body>
</html>