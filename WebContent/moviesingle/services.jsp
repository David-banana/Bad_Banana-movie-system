<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>电影评论</title>
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
            <c:if test="${empty user }">
						<li class="mr-lg-4 mr-3"><a href="/BadBanana/loginandregister/login.jsp" class="scroll">登录</a></li>
						</c:if>
						<c:if test="${!empty user }">
						<li class="mr-lg-4 mr-3"><a href="/BadBanana/UserServlet?method=userHome&homeName=${user.username }" class="scroll">${user.username}</a><a>${time}!</a></li>
						<li class="mr-lg-4 mr-3"><a href="/BadBanana/clearSessionServlet" class="scroll">退出</a></li>
						</c:if>
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
              <p>${moviecomment.fileComment} </p>
              <p>${moviecomment.date}</p>
               <p><a href="/BadBanana/FindWriteBack?cid=${moviecomment.cid}">learn more</a></p>
            </div>
          </div>
        </div>
			</c:forEach>
			
      <!-- zld测试写评论 -->
		<div class="col-md-4">
          <div class="service left-icon probootstrap-animate">
            <div class="text" border:1px solid black;>
            <c:if test="${empty user }">
						<h3 text-align:center>登录后，可以评论</h3>
							<a href= "/BadBanana/loginandregister/login.jsp?path=index/index.jsp"><input  type="button" value="登录" /></a>
			</c:if>
			<c:if test="${!empty user }">
					<h3 class="heading"> ${user.username}</h3>
					<form action="/BadBanana/CommentServlet">
					<input placeholder = "您的评论" type="hidden" name="method" value="getMovieComment">
              	<textarea name="myComment" rows="5" cols="30" placeholder="您的评论"  style="margin-left: 1.2em; resize:none"></textarea>
              	<br>
              	<input  type="submit" value="评论" style="margin-left: 9.7em;margin-bottom: 1.0em;margin-top: 1.5em;">
              </form>
			</c:if>
              
               
            </div>
          </div>
        </div>
<!-- 测试结束 -->

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