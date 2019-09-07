<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html lang="zxx">
<head>
	<title>首页</title>
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
                            <h1> <a href="/BadBanana/IndexMovieInformationIndexServlet">BANANA_MOVIE</a>
                            </h1>
                        </div>

                        <label for="drop" class="toggle">Menu</label>
                        <input type="checkbox" id="drop">
                        <ul class="menu mt-2">
                            <li class="mr-lg-4 mr-3 active"><a href="/BadBanana/IndexMovieInformationIndexServlet">首页</a></li>
                            <li class="mr-lg-4 mr-3"><a href="/BadBanana/FindAllMovieInformationServlet" class="scroll">热门电影</a></li>
                            
							
						<c:if test="${empty user }">
						<li class="mr-lg-4 mr-3"><a href="/BadBanana/loginandregister/login.jsp?loginPath=index" class="scroll">登录</a></li>
						</c:if>
						<c:if test="${!empty user }">
						<li class="mr-lg-4 mr-3"><a href="/BadBanana/UserServlet?method=userHome&homeName=${user.username }" class="scroll">${user.username}</a><a>${time}!</a></li>
						<li class="mr-lg-4 mr-3"><a href="/BadBanana/clearSessionServlet?quitPath=index" class="scroll">退出</a></li>
						</c:if>
						
                            <li class="mr-lg-4 mr-3"><a href="/BadBanana/aboutus/aboutus.html" class="scroll">关于我们</a></li>
                            <li><a href="/BadBanana/contactus/contactus.jsp">联系我们</a></li>
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
	<%session.getAttribute("indexmovieOne");
	session.getAttribute("indexmovieTwo");%>
	<!-- //banner -->
</div>
 <section class="diam" id="about">
	<div class="diam_top py-5">
		<div class="container py-lg-5">
			<div class="row about-info-diam">
					<div class="col-md-4 about-diam about-diam1">
						<h4>Bad-Banana电影鉴赏网站</h4>
						<p class="mt-3">鹏程 大卫 露丹 嘉成 </p>
					</div>
					<div class="col-md-4 about-diam about-diam2">
						<p>我们的网站专注于电影点评，是一家专业级别非常高的电影点评网站，每条评论都由专业的影评人评写</p>
					</div>
					<div class="col-md-4 about-diam about-diam3">
						<p>Our website focuses on film reviews. It is a highly professional film reviews website. Every review is written by a professional film reviewer.</p>
					</div>
			</div>
		</div>	
	</div>	
</section>

	<!-- what -->
	<section class="what right" style="background-image: url(${indexmovieOne.imgPathThree})" id="news">
		<div class="what_top">
			<h3>${indexmovieOne.moviename}  </h3>
			<h6 class="mt-3"> ${indexmovieOne.daoyanname} </h6>
			<p class="wtp mt-3">${indexmovieOne.generalizeOne} </p>
			<a href="/BadBanana/FindMovieInformationServlet?movieid=${indexmovieOne.movieid}&path=moviesingle" class="btn button-style-1 mt-sm-5 mt-4 scroll">了解更多 </a>
		</div>
	</section>
	<!-- //what -->
	<!-- who -->
	<section class="who left" style="background-image: url(${indexmovieTwo.imgPathThree})">
		<div class="who_top">
			<h3>${indexmovieTwo.moviename}</h3>
			<h6 class="mt-3">${indexmovieTwo.daoyanname}  </h6>
			<p class="wtp mt-3">${indexmovieTwo.generalizeOne}  </p>
			<a href="/BadBanana/FindMovieInformationServlet?movieid=${indexmovieTwo.movieid}&path=moviesingle" class="btn button-style-1 mt-sm-5 mt-4 scroll">了解更多 </a>
		</div>
	</section>
	<!-- //what -->
	 <!-- //what we do -->
	 <div style="position:relative;display:block;">
<section class="what_you py-5" id="services">
	<div class="container py-lg-5">
			
				
		</div>
	</div>		
</section>

	
	
</body>
</html>