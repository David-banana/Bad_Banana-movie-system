<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bean.Movie" import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <script src="js/jquery-3.2.1.slim.min.js"></script>
    <link rel="stylesheet" href="css/styles-merged.css">
    <link rel="stylesheet" href="css/style.min.css">
    <link rel="stylesheet" href="css/custom.css">
  </head>
  <body>
  <div class="probootstrap-loader"></div>

  <header role="banner" class="probootstrap-header">
    <div class="container">
       
        
        <a href="#" class="probootstrap-burger-menu visible-xs" ><i>菜单</i></a>
        <div class="mobile-menu-overlay"></div>

        <nav role="navigation" class="probootstrap-nav hidden-xs">
          <ul class="probootstrap-main-nav">
          <%session.getAttribute("movie");%>
         
            <li class="active"><a href="moviesingle.jsp">电影简介</a></li>
            <li><a href="portfolio.jsp">演职员表</a></li>
            <li><a href="services.jsp">评论</a></li>
            <li><a href="/BadBanana/FindAllMovieInformationServlet">热门电影</a></li>
            <li><a href="/BadBanana/loginandregister/login.jsp">登录</a></li>
          </ul>
          <div class="extra-text visible-xs"> 
            <a href="#" class="probootstrap-burger-menu"><i>菜单</i></a>
          </div>
        </nav>
    </div>
  </header>
  <!-- END: header -->

  <div class="probootstrap-main">
  
    <section class="probootstrap-section-half">
      <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(${movie.imgPathOne})"></div>
      <div class="probootstrap-text">
        <div class="probootstrap-inner probootstrap-animate">
          <h1 class="heading"> ${movie.moviename}</h1>
          <p>${movie.generalizeOne}</p>
          <p><a href="https://baike.baidu.com" class="btn btn-primary">了解更多</a></p>
        </div>
      </div>
    </section>
    <!-- END section -->
    <section class="probootstrap-section-half probootstrap-reverse">
      <div class="probootstrap-image probootstrap-animate"  data-animate-effect="fadeIn" style="background-image: url(${movie.imgPathTwo})"></div>
      <div class="probootstrap-text">
        <div class="probootstrap-inner probootstrap-animate">
          <h1 class="heading">剧情简介</h1>
          <p>${movie.generalizeTwo}</p>
        </div>
      </div>
    </section>
    <!-- END section -->
   
    <div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >网站建设</a></div>
    <!-- END section -->
    
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