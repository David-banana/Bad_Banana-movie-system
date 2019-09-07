<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>热门电影</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/contactstyle.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/faqstyle.css" type="text/css" media="all" />
<link href="css/single.css" rel='stylesheet' type='text/css' />
<link href="css/medile.css" rel='stylesheet' type='text/css' />
<!-- banner-slider -->
<link href="css/jquery.slidey.min.css" rel="stylesheet">
<!-- //banner-slider -->
<!-- pop-up -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- banner-bottom-plugin -->
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="js/owl.carousel.js"></script>
<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		  autoPlay: 3000, //Set AutoPlay to 3 seconds
	 
		  items : 5,
		  itemsDesktop : [640,4],
		  itemsDesktopSmall : [414,3]
	 
		});
	 
	}); 
</script> 

<script>
	$(function(){
		$("#moviename").keyup(function(){
			$.get(
			"/BadBanana/ReMenDianYingServlet",
			{"word":$("#moviename").val()}
				,
			function(data){
					console.log(data);
				$("#list").empty();
				for(var i=0;i<data.length;i++){
					if(i>6){
						break;
					}
					$("#list").append("<div onmouseover='on(this)' onmouseout='out(this)' onclick='onck(this)'>"+data[i].moviename+"</div>");
					
				}
				$("#list").css("display","block");
			},
			"json"
			)
		})	
		$("#moviename").mouseout(function() {
			$("#list").css("display","none");
		});

	})
	function on(obj){
		obj.style.background="RGB(232,232,232)"
	}
	function out(obj){
		obj.style.background="white"
	}
	function onck(obj){
		$("#moviename").val($(obj).html());
		$("#list").css("display","none");		
	}	
	function goPage(obj){
		$("#fenye").val(obj);
		$("#pagego").submit();
	}
	
	$(function(){
		$("#xiayiye").click(function(){
			$("#fenye").val(parseInt($("#fenye").val()) + 1);
			if($("#fenye").val() > $("#zongyeshu").val()){
				$("#fenye").val(parseInt($("#fenye").val()) - 1);
			}
			$("#pagego").submit();
		})
	});
	
	$(function(){
		$("#shangyiye").click(function(){
			$("#fenye").val(parseInt($("#fenye").val()) - 1);
			if($("#fenye").val() < 1){
				$("#fenye").val(parseInt($("#fenye").val()) + 1);
			}
			$("#pagego").submit();
		})
		
	});
	
	
	
	
	
	</script>
<!-- //banner-bottom-plugin -->
<!---<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>--->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
/* 	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	}); */
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="/BadBanana/IndexMovieInformationIndexServlet"><h1>B-B<span>Bad_Banana</span></h1></a>
			</div>
			<div class="w3_search">
				<form action="/BadBanana/SearchMovieServlet" method="get">
					<input type="text" name="moviename" placeholder="Search" required="" id="moviename">
					<input type="hidden" name="search" value="search">
					<input type="submit" value="Go">
					<div id=list style="width:357px ;border:1px solid gray;background-color:white;position:absolute; z-index:1000;display:none"></div>
				</form>
			</div>
			<div class="w3l_sign_in_register">
				<ul>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Sign In & Sign Up
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">Click Me</div>
							  </div>
							  <div class="form">
								<h3>Login to your account</h3>
								<form action="#" method="post">
								  <input type="text" name="Username" placeholder="Username" required="">
								  <input type="password" name="Password" placeholder="Password" required="">
								  <input type="submit" value="Login">
								</form>
							  </div>
							  <div class="form">
								<h3>Create an account</h3>
								<form action="#" method="post">
								  <input type="text" name="Username" placeholder="Username" required="">
								  <input type="password" name="Password" placeholder="Password" required="">
								  <input type="email" name="Email" placeholder="Email Address" required="">
								  <input type="text" name="Phone" placeholder="Phone Number" required="">
								  <input type="submit" value="Register">
								</form>
							  </div>
							  <div class="cta"><a href="#">Forgot your password?</a></div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script>
		$('.toggle').click(function(){
		  // Switches the Icon
		  $(this).children('i').toggleClass('fa-pencil');
		  // Switches the forms  
		  $('.form').animate({
			height: "toggle",
			'padding-top': 'toggle',
			'padding-bottom': 'toggle',
			opacity: "toggle"
		  }, "slow");
		});
		
		
	</script>
<!-- //bootstrap-pop-up -->
<!-- nav -->
	<div class="movies_nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav>
						<ul class="nav navbar-nav">
							<li class="active"><a href="/BadBanana/index/index.jsp">首页</a></li>
								<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">电影类别 <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="${pageContext.request.contextPath}/TypeMovieServlet?movietype=科幻">科幻</a></li>
											<li><a href="${pageContext.request.contextPath}/TypeMovieServlet?movietype=纪实">纪实</a></li>
											<li><a href="${pageContext.request.contextPath}/TypeMovieServlet?movietype=喜剧">喜剧</a></li>
											<li><a href="${pageContext.request.contextPath}/TypeMovieServlet?movietype=恐怖">恐怖</a></li>
											<li><a href="${pageContext.request.contextPath}/TypeMovieServlet?movietype=战争">战争</a></li>
											<li><a href="${pageContext.request.contextPath}/TypeMovieServlet?movietype=爱情">爱情</a></li>
										</ul>
									</div>
									
									<div class="clearfix"></div>
									</li>
								</ul>
							</li>
						<c:if test="${empty user }">
						<li class="mr-lg-4 mr-3"><a href="/BadBanana/loginandregister/login.jsp?loginPath=remendianying" class="scroll">登录</a></li>
						</c:if>
						<c:if test="${!empty user }">
						<li class="mr-lg-4 mr-3"><a href="/BadBanana/UserServlet?method=userHome&homeName=${user.username }" class="scroll">${user.username}${time}!</a></li>
						<li class="mr-lg-4 mr-3"><a href="/BadBanana/clearSessionServlet?quitPath=remendianying" class="scroll">退出</a></li>
						</c:if>
							<li><a href="/BadBanana/aboutus/aboutus.html">关于我们</a></li>
							<li><a href="/BadBanana/contactus/contactus.jsp">联系我们</a></li>
						</ul>
					</nav>
				</div>
			</nav>	
		</div>
	</div>
<!-- //nav -->
<!-- banner -->
	<div id="slidey" style="display:none;">
		<ul>
			<li><img src="${allmovie.list[1].imgPathThree}" alt=" "><p class='title'>${allmovie.list[1].moviename}</p><p class='description'>${allmovie.list[1].generalizeOne}</p></li>
			<li><img src="${allmovie.list[2].imgPathThree}" alt=" "><p class='title'>${allmovie.list[2].moviename}</p><p class='description'>${allmovie.list[2].generalizeOne}</p></li>
			<li><img src="${allmovie.list[3].imgPathThree}" alt=" "><p class='title'>${allmovie.list[3].moviename}</p><p class='description'>${allmovie.list[3].generalizeOne}</p></li>
			<li><img src="${allmovie.list[4].imgPathThree}" alt=" "><p class='title'>${allmovie.list[4].moviename}</p><p class='description'>${allmovie.list[4].generalizeOne}</p></li>
			<li><img src="${allmovie.list[5].imgPathThree}" alt=" "><p class='title'>${allmovie.list[5].moviename}</p><p class='description'>${allmovie.list[5].generalizeOne}</p></li>
			<li><img src="${allmovie.list[6].imgPathThree}" alt=" "><p class='title'>${allmovie.list[6].moviename}</p><p class='description'>${allmovie.list[6].generalizeOne}</p></li>
		</ul>   	
    </div>
    <script src="js/jquery.slidey.js"></script>
    <script src="js/jquery.dotdotdot.min.js"></script>
	   <script type="text/javascript">
			$("#slidey").slidey({
				interval: 8000,
				listCount: 5,
				autoplay: false,
				showList: true
			});
			$(".slidey-list-description").dotdotdot();
			
		</script>
<!-- //banner -->
<!-- general -->
	<div class="general">
		<h4 class="latest-text w3_latest_text">热门电影</h4>
		<div class="container">
			<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
				
				<div id="myTabContent" class="tab-content">
				
				<c:forEach items="${allmovie.list}" var = "allmovie">	
									<div class="w3_agile_featured_movies">
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="/BadBanana/FindMovieInformationServlet?movieid=${allmovie.movieid}&path=moviesingle" class="hvr-shutter-out-horizontal"><img src="${allmovie.imgPathOne}" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6><a href="single.html">${allmovie.moviename}</a></h6>							
									</div>	
								</div>
								<div class="ribben">
									<p>HOT</p>
								</div>
							</div>					
					</div>
					</c:forEach>
					
						
						
						
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>

	
	
	<form id="pagego" action="${pageContext.request.contextPath }/FindAllMovieInformationServlet">
				<div class="blog-pagenat-wthree">
							<ul id="huanye">
								<li><a href="javascript:void(0)" id = "shangyiye"class="frist" >上一页</a></li>
								<li id="zongyeshu"  value = "${allmovie.totalPage}"></li> 
								<c:forEach begin="1" end="${allmovie.totalPage }" var="i">
									<li ><a href="javascript:void(0) " onclick="goPage(${i})">${i }</li></a>
								</c:forEach>
								<li>当前页：${allmovie.currentPage}</li>
								<li><a href="javascript:void(0)" id = "xiayiye"   class="last" >下一页</a></li>
								<input id="fenye" name = "currentPage" value = "${allmovie.currentPage}" type = "hidden"></input> 
								
							</ul>
						</div>	
								</form>
								
								
<!-- //general -->
	
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->
	<div id="small-dialog" class="mfp-hide">
		<!---<iframe src="https://player.vimeo.com/video/164819130?title=0&byline=0"></iframe>--->
	</div>
	<div id="small-dialog1" class="mfp-hide">
		<!---<iframe src="https://player.vimeo.com/video/148284736"></iframe>--->
	</div>
	<div id="small-dialog2" class="mfp-hide">
		<!---<iframe src="https://player.vimeo.com/video/165197924?color=ffffff&title=0&byline=0&portrait=0"></iframe>--->
	</div>
	<script>
		$(document).ready(function() {
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});
																		
		});
	</script>
<!-- //Latest-tv-series -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3ls_footer_grid">
				<div class="col-md-6 w3ls_footer_grid_left">
					<div class="w3ls_footer_grid_left1">
						
					</div>
				</div>

				<div class="clearfix"> </div>
			</div>
			<div class="col-md-5 w3ls_footer_grid1_left">
			
			</div>

			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- //Bootstrap Core JavaScript -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>