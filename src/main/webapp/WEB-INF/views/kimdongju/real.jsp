<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 페이지</title>
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

/* 카테고리 */

.category ul {
	list-style-type: none;
	margin-left: 100px;
}

.category li {
	float: left;
	margin-left: 30px;
	font-style: bold;
}

.category a {
	text-decoration: none;
	color: black;
	font-style: bold;
}

/* 물건 */

.product {
	border: 1px solid;
	border-radius: 5px;
	height: 350px;
	width: 250px;
	padding: 5px;
	margin-bottom: 30px;
	text-align: center;
	float: left;
	margin: 20px;
	margin-left: 160px;
	display: flex;
	flex-direction:column;
}

.product img {
	height: 200px;
	width: 230px;
}

.product .text p {
	font-size: 14px;
	opacity: .8;
}

.product .text button {
	background: black;
	color: white;
	border:2px solid white;
	border-radius:5px;
	padding:5px 10px;
	font-size: 10px;
	transition .5s ease;
}

.product .text button:hover{
	transition: .5s ease;
	border: 2px solid black;
	background: transparent;
	color: black;
}

/* 푸터 */

footer {
	padding:30px 0;
	background: #333;
	color:#fff; 
}

/* 앞뒤버튼 */

.change {
	margin : 30px;
	margin-left: 200px;
	margin-right: 200px;
	display : flex;
	justify-content: space-between;
}

.change button {
	background: white;
	color: black;
	border:2px solid white;
	border-radius:5px;
	padding:5px 10px;
	font-size: 20px;
	transition .5s ease;
}

.change button:hover {
	transition: .5s ease;
	border: 2px solid black;
	background: transparent;
	color: black;
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
	
	<h3>Our Product</h3>
	
	<div class="category">
		<ul>
			<li><a href="#">Cloth</a></li>
			<li><a href="#">Accessories</a></li>
			<li><a href="#">Furniture</a></li>
			<li><a href="#">Etc</a></li>
		</ul>
	</div>
	<br>
	
	<div class="main-content">
		<div class="contents">
			<div class="product">
			   	<div class="img">
			   		<img src="${pageContext.request.contextPath}/resources/img/11.jpg">
			   	</div>
			   	<div class="text">
			    	<h2>라이언</h2>
			   		<p>가격 10원 하자많음</p>
			   		<button><i class="fas fa-check"></i>사러가기</button>
			   	</div> 	
			</div>
			<div class="product">
			   	<div class="img">
			   		<img src="${pageContext.request.contextPath}/resources/img/11.jpg">
			   	</div>
			   	<div class="text">
			    	<h2>라이언</h2>
			   		<p>가격 10원 하자많음</p>
			   		<button><i class="fas fa-check"></i>사러가기</button>
			   	</div> 	
			</div>
			<div class="product">
			   	<div class="img">
			   		<img src="${pageContext.request.contextPath}/resources/img/11.jpg">
			   	</div>
			   	<div class="text">
			    	<h2>라이언</h2>
			   		<p>가격 10원 하자많음</p>
			   		<button><i class="fas fa-check"></i>사러가기</button>
			   	</div> 	
			</div>
			<div class="product">
			   	<div class="img">
			   		<img src="${pageContext.request.contextPath}/resources/img/11.jpg">
			   	</div>
			   	<div class="text">
			    	<h2>라이언</h2>
			   		<p>가격 10원 하자많음</p>
			   		<button><i class="fas fa-check"></i>사러가기</button>
			   	</div> 	
			</div>
		</div>
		<br>
	</div>
	<div class="change">
		<button>back</button> 1/3 <button>front</button>
	</div>
	<footer> copyright ©2022 codeOpacity. designed by 3seconds_To_Mars<br>
	<a href="purchase">구매하기</a>
	</footer>
</div>
</body>
</html>