<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3S-ANABADA</title>
<style type="text/css">

@font-face {
	font-family: abster;
	src: url(font/abster-webfont.woff) format('woff');
}
body {
	margin: 0;
	padding: 0;
}

input[id="menuicon"] {
	display:none;	
}

input[id="menuicon"] + label {
	display:block;
	width: 40px;
	height: 30px;
	position: relative;
	cursor:pointer;
	position: fixed;
	margin: 10px;
	z-index: 2;
	top: 5px;
	left: 20px;
}

input[id="menuicon"] + label span {
	display: block;
	position: absolute;
	width: 100%;
	height: 3px;
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
	z-index:2;
	transition:all .35s;
}

input[id="menuicon"]:checked + label + div {
	left: 0;
}

input[id="menuicon"]:checked + label {
	z-index:3;
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

.nav {
	border: 2px solid;
	width: 100%;
	position:absolute;
	top: -1%;
	left: -2px;
	height: 70px;
	z-index: 1;
	position: fixed;
	background-color: #fff;
}

.logo {
	position: absolute;
	top: 25px;
	left: 120px;
	font-family: abster;
	font-size: 25px;
}
.garo2 {
	border: 0px solid;
	width: 60%;
	height: 60px;
	z-index: 1;
	position: fixed;
	right: 10%;
	background-color: pink;
}


/* 메뉴들 */

.garo img {
	height: 40px;
}


.smol ul{
	background-color: white;
	float: right;
	line-height: 40px;
}

.smol li {
	list-style-type: none;
	float:left;
	margin-right: 30px;
}

.smol a {
	text-decoration: none;
	color: black;
	font-weight: bold;
	font-size: 17px;
}

#wrapper{
  height: auto;
  min-height: 100%;
  padding-bottom: 100px;
}
footer{
  height: 100px;
  position : relative;
  transform : translateY(-100%);
  background-color: black;
  margin-top: -4px;
  color: #fff;
}
</style>
</head>
<body>
<div id='wrapper'>
	<div>
		<input type="checkbox" id="menuicon">
		<label for="menuicon">
			<span></span>
			<span></span>
			<span></span>
		</label>
		<div class="sidebar">
			<div class="sidemenu">
				<p><a href="home">Home</a></p>
				<p><a href="#">Notice</a></p>
				<p><a href="#">Event</a></p>
				<p><a href="#">Donation</a></p>
				<p><a href="#">Sponsor</a></p>
			</div>
		</div>
		<div class="nav">
			<div class="logo">
				ANABADA
			</div>
			<div class="smol">
				<ul>
					<li><a href="kimgunu/login">LOGIN</a></li>
					<li><a href="#">CART</a></li>
					<li><a href="#">SEARCH</a></li>
				</ul>
			</div>
		</div>
		<img src="${pageContext.request.contextPath}/resources/img2/leaves.jpg">
	</div>
</div>
<footer><br><br> &nbsp&nbsp&nbsp&nbsp Welcome Of Our <span style="color: red;">3Secons of Mars</span></footer>
</body>
</html>