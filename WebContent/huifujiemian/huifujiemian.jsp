<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!doctype html>
<html lang="en">
	<head>
        <title>Home</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


        <!-- Main CSS --> 
        <link rel="stylesheet" href="css/style.css">

        <!-- Font Awesome -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    </head>
  
    <body>

    
        <div class="outer-wrapper">
            
           
            
            <!-- Header navigation -->
            <header>
                <div class="headers d-none d-md-block">
                    <h1>评论详情</h1>
                    <h2>Details of comments</h2>
                </div>
            
            </header>
    
            
            <!-- Main navigation -->
            <nav class="navbar navbar-expand-md navbar-dark bg-primary">

                    <!-- Company name shown on mobile -->
                    <a class="navbar-brand d-md-none d-lg-none d-xl-none" href="#">评论详情</a>

                    <!-- Mobile menu toggle -->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainNavbar" aria-controls="mainNavbar" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

            </nav>

			<div class="tlinks">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
            <!-- Jumbtron / Slider -->
            <!-- @TODO HEADER -->
			<%session.getAttribute("moviecomment");
				session.getAttribute("witeback");%>
            <!-- Main content area -->
            <main>
                <article>
                    <h3 class="article-title">${moviecomment.username}</h3>
                    <p>${moviecomment.fileComment}</p>
                    <p style="margin-left: 27em;">${moviecomment.date} </p>	
					<p style="margin-left: 27em;">有<a style="color: blue;"> ${moviecomment.click} </a>  个人觉得很赞 </p>
                </article>


			<c:forEach items="${writeback}" var="writeback">
 			<article>
			<h3 class="article-title">${writeback.username }</h3>
                    <p>${writeback.writeText }</p>
                    <p>${writeback.date }</p>
                    </article>
			</c:forEach>
			
			   <c:if test="${empty user }">
					<h4>登录后，可以评论</h4>
					<a href= "/BadBanana/loginandregister/login.jsp?path=index/index.jsp"><input  type="button" value="登录" /></a>
			</c:if>
			<c:if test="${!empty user }">
 			     <article>
 			     <h3>您的评论</h3>
 			     	<form action="/BadBanana/SaveNewWriteBackServlet">
                    <p><input placeholder = "您的评论" type="hidden" name="method" value="getMovieComment">
              		<textarea name="myWriteBack" rows="5" cols="69" placeholder="您的评论"  style="margin-left: 1.2em;resize:none;"></textarea></p>
              		<input  type="submit" value="回复" style="margin-left: 16em;margin-bottom: 0.5em;margin-top: 0.5em;resize: none">
					 </form>
					  </article>
					 </c:if>
            </main>
            
            
            
            

            <!-- Footer -->
            
                    <p class="text-center"><a href="#">Back to top</a></p>
         

        </div>


        <!-- Bootcamp JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous"></script>

    </body>
</html>