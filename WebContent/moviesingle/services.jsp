<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Connect</title>
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
            <li><a href="portfolio.jsp">演职员表</a></li>
            <li class="active"><a href="services.jsp">评论</a></li>
            <li><a href="/BadBanana/FindAllMovieInformationServlet">热门电影</a></li>
            <li><a href="/BadBanana/loginandregister/login.jsp">登录</a></li>
         	<% session.getAttribute("MovieComment");%>
          <div class="extra-text visible-xs"> 
            <a href="#" class="probootstrap-burger-menu"><i>Menu</i></a>
          </div>
        </nav>
    </div>
  </header>
    <section class="probootstrap-section">
    <div class="container">
      <div class="row">


        
 
        <c:forEach items="${MovieComment }" var="moviecomment">
			 <div class="col-md-4">
          <div class="service left-icon probootstrap-animate">
            <div class="text" border:1px solid black;>
              <h3 class="heading"> ${moviecomment.username}</h3>
              <p>${moviecomment.comment} </p>
              <p>${moviecomment.date}</p>
               <p><a href="single-page.html">learn more</a></p>
            </div>
          </div>
        </div>
			</c:forEach>
      

      </div>
    </div>
  </section>
  <!-- END section -->
       

  </div>


  

  <div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="icon-chevron-thin-up"></i></a>
  </div>
  

  <script src="js/scripts.min.js"></script>
  <script src="js/main.min.js"></script>
  <script src="js/custom.js"></script>

  </body>
</html>