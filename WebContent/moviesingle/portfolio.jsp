<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>演职员表</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400" rel="stylesheet">
    <link rel="stylesheet" href="css/styles-merged.css">
    <link rel="stylesheet" href="css/style.min.css">
    <link rel="stylesheet" href="css/custom.css">

    <!--[if lt IE 9]>
      <script src="js/vendor/html5shiv.min.js"></script>
      <script src="js/vendor/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

  <!-- START: header -->
  
  <div class="probootstrap-loader"></div>

  <header role="banner" class="probootstrap-header">
    <div class="container">
        
        <a href="#" class="probootstrap-burger-menu visible-xs" ><i>Menu</i></a>
        <div class="mobile-menu-overlay"></div>

        <nav role="navigation" class="probootstrap-nav hidden-xs">
          <ul class="probootstrap-main-nav">
            <li><a href="moviesingle.jsp">电影简介</a></li>
            <li class="active"><a href="portfolio.jsp">演职员表</a></li>
            <li><a href="services.jsp">评论</a></li>
            <li><a href="/BadBanana/FindAllMovieInformationServlet">热门电影</a></li>
            <c:if test="${empty user }">
						<li class="mr-lg-4 mr-3"><a href="/BadBanana/loginandregister/login.jsp?loginPath=moviesingle" class="scroll">登录</a></li>
						</c:if>
						<c:if test="${!empty user }">
						<li class="mr-lg-4 mr-3"><a href="/BadBanana/UserServlet?method=userHome&homeName=${user.username }" class="scroll">${user.username}</a><a>${time}!</a></li>
						<li class="mr-lg-4 mr-3"><a href="/BadBanana/clearSessionServlet?quitPath=moviesingle" class="scroll">退出</a></li>
						</c:if>
          </ul>
          <%session.getAttribute("actor1");%>
             
          <div class="extra-text visible-xs"> 
            <a href="#" class="probootstrap-burger-menu"><i>Menu</i></a>
          </div>
        </nav>
    </div>
  </header>
  <!-- END: header -->

  <div class="probootstrap-main">
  
    <section class="probootstrap-section-half">
      <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(${actor1.imgPath})"></div>
      <div class="probootstrap-text">
        <div class="probootstrap-inner probootstrap-animate">
          <h1 class="heading">${actor1.name}</h1>
          <p>${actor1.data}</p>
          <p><a href="https://baike.baidu.com" class="btn btn-primary">了解更多</a></p>
        </div>
      </div>
    </section>
    <!-- END section -->
    <section class="probootstrap-section-half probootstrap-reverse">
      <div class="probootstrap-image probootstrap-animate"  data-animate-effect="fadeIn" style="background-image: url(${actor2.imgPath})"></div>
      <div class="probootstrap-text">
        <div class="probootstrap-inner probootstrap-animate">
          <h1 class="heading">${actor2.name}</h1>
          <p>${actor2.data}</p>
          <p><a href="https://baike.baidu.com" class="btn btn-primary">了解更多</a></p>
        </div>
      </div>
    </section>
    <!-- END section -->
    <section class="probootstrap-section-half">
      <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(${actor3.imgPath})"></div>
      <div class="probootstrap-text">
        <div class="probootstrap-inner probootstrap-animate">
          <h1 class="heading">${actor3.name}</h1>
          <p>${actor3.data}</p>
          <p><a href="https://baike.baidu.com" class="btn btn-primary">了解更多</a></p>
        </div>
      </div>
    </section>
    <!-- END section -->
  </div>
  <footer class="probootstrap-footer">
    <div class="container">
      <div class="row">
       
      </div>
    </div>
  </footer>

  

  <div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="icon-chevron-thin-up"></i></a>
  </div>
  

  <script src="js/scripts.min.js"></script>
  <script src="js/main.min.js"></script>
  <script src="js/custom.js"></script>

  </body>
</html>