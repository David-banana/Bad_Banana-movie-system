<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html lang="zxx">
<head>
	<title>Home</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta tag Keywords -->
	<!-- Custom-Files -->
	<link rel="stylesheet" href="/BadBanana/index/css/bootstrap.css">
	<!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="/BadBanana/index/css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="/BadBanana/index/css/font-awesome.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //Custom-Files -->
	<!-- Web-Fonts -->
	<link href="http://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	 rel="stylesheet">
	<!-- //Web-Fonts -->
</head>
<body>
<div class="main-top py-1">
<!-- header -->
	<header>
		<div class="container-fluid px-lg-5">
			<nav class="py-4">
                        <div class="logo" id="logo">
                            <h1> <a href="index.html">BANANA_MOVIE</a>
                            </h1>
                        </div>

                        <label for="drop" class="toggle">Menu</label>
                        <input type="checkbox" id="drop">
                        <ul class="menu mt-2">
                            <li class="mr-lg-4 mr-3 active"><a href="index.html">首页</a></li>
                            <li class="mr-lg-4 mr-3"><a href="/BadBanana/FindAllMovieInformationServlet" class="scroll">热门电影</a></li>
                            
							
						<c:if test="${empty user }">
						<li class="mr-lg-4 mr-3"><a href="/BadBanana/loginandregister/login.jsp" class="scroll">登录</a></li>
						</c:if>
						<c:if test="${!empty user }">
						<li class="mr-lg-4 mr-3"><a href="/BadBanana/UserServlet?method=userHome&homeName=${user.username }" class="scroll">${user.username}</a><a>${time}!</a></li>
						<li class="mr-lg-4 mr-3"><a href="/BadBanana/clearSessionServlet" class="scroll">退出</a></li>
						</c:if>
						
                            <li class="mr-lg-4 mr-3"><a href="/BadBanana/aboutus/aboutus.html" class="scroll">关于我们</a></li>
                            <li><a href="/BadBanana/contactus/contactus.html">联系我们</a></li>
                        </ul>
                    </nav>
		</div>
	</header>
	<!-- //header -->
	<!-- banner -->
	<div class="main-w3pvt">
		<div class="container-fluid">
			<div class="row">
				<div class="style-banner">
					<h2 class="text-white">烂香蕉</h2>
					<p class="mt-4 mx-auto text-white">专注电影鉴赏交流 </p>
					<a href="#about" class="scroll"><span class="fa fa-arrow-down"></span></a>
				</div>
			</div>
		</div>
	</div>
	<!-- //banner -->
</div>
 <section class="diam" id="about">
	<div class="diam_top py-5">
		<div class="container py-lg-5">
			<div class="row about-info-diam">
					<div class="col-md-4 about-diam about-diam1">
						<h4>Integer porttitor mollisar lorem molestie</h4>
						<p class="mt-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit </p>
					</div>
					<div class="col-md-4 about-diam about-diam2">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.Nulla pellentesque mi non laoreet eleifend. Integer porttitor mollisar lorem, at molestie arcu pulvinar ut. Proin ac fermentum est.  </p>
					</div>
					<div class="col-md-4 about-diam about-diam3">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.Nulla pellentesque mi non laoreet eleifend. Integer porttitor mollisar lorem, at molestie arcu pulvinar ut. Proin ac fermentum est.  </p>
					</div>
			</div>
		</div>	
	</div>	
</section>

	<!-- what -->
	<section class="what right" id="news">
		<div class="what_top">
			<h3>Fusce blandit ultrices in accumsan orci </h3>
			<h6 class="mt-3"> Sapien sed elementum egestas dolore condimentum. </h6>
			<p class="wtp mt-3">Lorem ipsum dolor sit amet et sapien sed elementum egestas dolore condimentum. Fusce blandit ultrices sapien, in accumsan orci rhoncus eu. Sed sodales venenatis arcu, id varius justo euismod in. Curabitur egestas consectetur magna.</p>
			<a href="#" class="btn button-style-1 mt-sm-5 mt-4 scroll">Learn More</a>
		</div>
	</section>
	<!-- //what -->
	<!-- who -->
	<section class="who left">
		<div class="who_top">
			<h3>Fusce blandit ultrices in accumsan orci </h3>
			<h6 class="mt-3"> Sapien sed elementum egestas dolore condimentum. </h6>
			<p class="wtp mt-3">Lorem ipsum dolor sit amet et sapien sed elementum egestas dolore condimentum. Fusce blandit ultrices sapien, in accumsan orci rhoncus eu. Sed sodales venenatis arcu, id varius justo euismod in. Curabitur egestas consectetur magna.</p>
			<a href="#" class="btn button-style-1 mt-sm-5 mt-4 scroll">Learn More</a>
		</div>
	</section>
	<!-- //what -->
	 <!-- //what we do -->
	 <div style="position:relative;display:block;">
<section class="what_you py-5" id="services">
	<div class="container py-lg-5">
	<h4 class="agile-ser_bot text-capitalize text-white text-center">Services</h4>
	<h6 class="mt-3 text-center"> Ante metus praesent faucibus ante integer id accumsan eleifend </h6>
		<div class="row about-info-grids text-center mt-3 py-md-5">
				<div class="col-lg-4 col-md-6 about-info about-info1">
					<span class="fa fa-area-chart"></span>
					<h4>Sit amet</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
				</div>
				<div class="col-lg-4 col-md-6 about-info about-info2">
					<span class="fa fa-comment"></span>
					<h4>Adipisicing</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
				</div>
				<div class="col-lg-4 col-md-6 about-info about-info3">
					<span class="fa fa-paper-plane"></span>
					<h4>Dolor sit</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
				</div>
				<div class="col-lg-4 col-md-6 about-info about-info4 mt-5">
					<span class="fa fa-file"></span>
					<h4>Sit amet</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
				</div>
				<div class="col-lg-4 col-md-6 about-info about-info5 mt-5">
					<span class="fa fa-lock"></span>
					<h4>Adipisicing</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
				</div>
				<div class="col-lg-4 col-md-6 about-info about-info6 mt-5">
					<span class="fa fa-flask"></span>
					<h4>Dolor sit</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
				</div>
				
		</div>
	</div>		
</section>
<div class="tlinks">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
</div>
	 <!-- what we do -->
<!-- services bottom -->
	<section class="serv_bottom py-5">
		<div class="container py-md-4 mt-md-3">
			<h4 class="agile-ser_bot text-capitalize text-white text-center">Subscribe For New Updates</h4>
			<h6 class="mt-3 text-center"> Ante metus praesent faucibus ante integer id accumsan eleifend </h6>	
				<div class="newsright mt-md-3 pt-5">
					<form action="#" method="post">
						<input type="email" placeholder="Enter your email..." name="email" required="">
						<button class="btn" type="submit">Subscribe</button>
					</form>
				</div>
		</div>
	</section>
<!-- //services bottom -->
	<div class="cpy-right text-center py-5">
		<ul class="social_section_1info pt-lg-4 mb-lg-4">
			<li><a href="#"><span class="fa fa-facebook"></span></a></li>
			<li><a href="#"><span class="fa fa-twitter"></span></a></li>
			<li><a href="#"><span class="fa fa-google"></span></a></li>
			<li><a href="#"><span class="fa fa-linkedin"></span></a></li>
		</ul>
        <p>Copyright &copy; 2019.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
        </p>
    </div>
</body>
</html>