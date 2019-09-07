<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>

<script src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

	function zengjia() {
		console.log('${empty user}')
		if (${empty user}== true) {
			alert("请先登录");
		}
		else {			
			$.ajax({
				url : "/BadBanana/DianZanServlet",
				data : {
					"filmcid" : "${moviecomment.cid}",
					"userid":"${user.userid}"
				},
				success : function(data) {
					console.log(data.dianzanshu);
					console.log(data.isDianZan);					
					$("#dianzanshu").html(data.dianzanshu);
					if(!data.isDianZan){
						$("#dianzanimg").prop("src","img/yiDianzan.jpg");
					}else if(data.isDianZan){
						$("#dianzanimg").prop("src","img/dianzan.jpg");
					}
				},
				dataType : "json",
				async : false
			});
		}

	}
	function backZhuye(){
		 window.location.href="/BadBanana/";
		}
</script>
<html lang="en">
<head>
<title>评论详情</title>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<!-- Main CSS -->
<link rel="stylesheet" href="css/style.css">

<!-- Font Awesome -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
</head>

<body>


	<div class="outer-wrapper">



		<!-- Header navigation -->
		<div class="agileits-single-top">
			<ol class="breadcrumb">
				<li><a href="/BadBanana/IndexMovieInformationIndexServlet">首页</a></li>/
				<li class="active"><a
					href="/BadBanana/FindAllMovieInformationServlet">热门电影</a></li>/
					<li class="active"><a
					href="/BadBanana/FindMovieInformationServlet?path=services&search=back">评论</a></li>/
					<li class="active">评论详情</li>
			</ol>
		</div>
		<header>
			<div class="headers d-none d-md-block">
				<div><a style="color:#666; font-size:40px;">评论详情</a></div>
				<h2>Details of comments</h2>
			</div>

		</header>


		<!-- Main navigation -->
		<nav class="navbar navbar-expand-md navbar-dark bg-primary">

			<!-- Company name shown on mobile -->

			<!-- Mobile menu toggle -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#mainNavbar" aria-controls="mainNavbar"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

		</nav>

		<!-- Jumbtron / Slider -->
		<!-- @TODO HEADER -->
		<!-- Main content area -->
		
		<article>
			<h3 class="article-title">${moviecomment.username}</h3>
			<p>${moviecomment.fileComment}</p>
			
			<label id="dianzan" name="dianzan" onclick="zengjia()">
			 <c:if test="${!checkDianZan }"> 
			<img src="img/dianzan.jpg" alt="点赞图" id="dianzanimg" style="margin-right: 4em;cursor:pointer" name="dianzanimg"></label>
			 </c:if> 

			<c:if test="${checkDianZan }">
			<img src="img/yiDianzan.jpg" alt="点赞图" id="dianzanimg" style="margin-right: 4em;cursor:pointer" name="dianzanimg"></label>			
			</c:if>
			
			<p style="margin-left: 27em;" id="">${moviecomment.date}</p>
			<p style="margin-left: 27em;">
				有<span style="color: blue" id="dianzanshu">
					${moviecomment.click} </span> 个人觉得很赞
			</p>
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
			<a href="/BadBanana/loginandregister/login.jsp?loginPath=huifujiemian&cid=${moviecomment.cid }"><input
				type="button" value="登录" /></a>
		</c:if> 
		<c:if test="${!empty user }">
			<article>
				<h3>您的评论</h3>
				<form action="/BadBanana/SaveNewWriteBackServlet">
					<p>
						<input placeholder="您的评论" type="hidden" name="method"
							value="getMovieComment">
						<textarea name="myWriteBack" rows="5" cols="69" placeholder="您的评论"
							style="margin-left: 1.2em; resize: none;"></textarea>
					</p>
					<input type="submit" value="回复"
						style="margin-left: 16em; margin-bottom: 0.5em; margin-top: 0.5em; resize: none">
						
				</form>
			</article>
		</c:if> 






		<!-- Footer -->

		<p class="text-center">
		
			<a href="#">Back to top</a>
		</p>


	</div>


	<!-- Bootcamp JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"
		integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4"
		crossorigin="anonymous"></script>

</body>
</html>