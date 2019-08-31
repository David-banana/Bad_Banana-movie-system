<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>个人界面</title>


<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="My Career Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>

<link rel="stylesheet" href="/BadBanana/personalHomepage/css/lightbox.css"><!-- for gallery css -->

<!-- banner text effect css files -->
    <link rel="stylesheet" type="text/css" href="/BadBanana/personalHomepage/css/demo.css" />
    <link rel="stylesheet" type="text/css" href="/BadBanana/personalHomepage/css/style3.css" />
<!-- banner text effect css files -->

<!-- Navigation-CSS --> <link rel="stylesheet" href="/BadBanana/personalHomepage/css/menu_sideslide.css"	type="text/css" media="all">

<link rel="stylesheet" href="/BadBanana/personalHomepage/css/flexslider.css" type="text/css" media="all" /><!-- for testimonials -->

<link href="/BadBanana/personalHomepage/css/bars.css" rel="stylesheet" type="text/css"><!-- for skills -->

<!-- custom-theme files -->
<link href="/BadBanana/personalHomepage/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="/BadBanana/personalHomepage/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //custom-theme files -->

<!-- font-awesome-icons -->
<link href="/BadBanana/personalHomepage/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->

<!-- googlefonts -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
<!-- //googlefonts -->

</head>
<body>

<!-- Header -->
	<div class="aitsheaderw3ls" id="agilehome">

		<!-- Navigation -->
		<div class="agiletopbar">
			<div class="wthreenavigation">
				<div class="menu-wrap">
					<nav class="menu">
						<div class="icon-list">
							<a class="scroll active" href="#agilehome"><i class="fa fa-home"></i><span>Home</span></a>
							<a class="scroll" href="#gallery"><i class="fa fa-picture-o"></i><span>照片墙</span></a>
							<a class="scroll" href="#education"><i class="fa fa-book"></i><span>我的足迹</span></a>
							</div>
					</nav>
					<button class="close-button" id="close-button">Close Menu</button>
				</div>
				<button class="menu-button" id="open-button">Open Menu</button>
			</div>
			<div class="agileinfomenu">
				<p>MENU</p>
			</div>
			<div class="aitslogow3ls">
					<a href="#"><div class="agilelogo">${HomeList[0].username }的小屋</div></a>
			</div>
			<div class="wthreecontact">
				<p><a  href="/BadBanana/FindAllMovieInformationServlet"><i class="fa fa-envelope-o" aria-hidden="true"></i> 返回热门电影</a></p>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- //Navigation -->
	</div>
<!-- //Header -->

<!-- Banner -->
<div class="banner">
	<div class="container">
			<div class="w3_banner_info">
				<div class="w3_banner_info_grid">
					<h1>${HomeList[0].username }</h1>
					<h2 class="rw-sentence">
					<span>My Lover</span>
					<div class="rw-words rw-words-1">
					<c:forEach items="${MoviePath }" var="str">
						<span>${str.moviename }</span>
					</c:forEach>
					
					</div>
					</h2>
					
					<ul class="social-nav model-3d-0 footer-social w3_agile_social">
						<li><a href="#" class="facebook">
							<div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a>
						</li>
						<li><a href="#" class="twitter"> 
							<div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a>
						</li>
						<li><a href="#" class="instagram">
							<div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a>
						</li>
						<li><a href="#" class="pinterest">
							<div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a>
						</li>
					</ul>
				</div>
			</div>
	</div>
</div>
<!-- //Banner -->


<!-- About -->

	<div id="gallery" class="gallery">
		<h3 class="heading">照片墙</h3>
			<div class="gallery-info" style="text-align: center;">
			<c:if test="${empty MoviePath }">
				
				<c:if test="${judge eq 'true' }">
					<span>您还没有收藏任何一部电影~</span>
				</c:if>
				<c:if test="${judge eq 'false' }">
					<span>该用户暂时还没有收藏任何一部电影~</span>
				</c:if>
			</c:if>
			<c:forEach items="${MoviePath }" var="str"  >
				<div class="col-md-3 gallery-grids">
					<a href="${str.imgPathOne}" class="gallery-box" data-lightbox="example-set" data-title="">
						<img src="${str.imgPathOne}" alt="" class="img-responsive zoom-img">				
						<c:if test="${judge eq 'true' }">
						
							<a href="${pageContext.request.contextPath }/CollectionServlet?movieid=${str.movieid}&userid=${HomeList[0].userid}&method=cancelCollection&method2=Home&username=${HomeList[0].username}">取消收藏</a>
						</c:if>
					</a>
				</div>
				</c:forEach>
				
				
				<div class="clearfix"> </div>	
			</div>
		<script src="js/lightbox-plus-jquery.min.js"></script>
	</div>
<!-- //gallery -->

<!-- Education -->
<div class="education" id="education">
	<div class="container">
			<h3 class="heading">我的足迹</h3>
			
	<c:forEach items="${HomeList }" var="str"  >

		<div class="col-md-6">
			<div class="grid1">
				<a href="/BadBanana/FindMovieInformationServlet?moviename=${str.filmname}&search=search"><h3>${str.filmname}</h3></a>
				<a href="/BadBanana/FindWriteBack?cid=${str.cid}"><p>${str.fileComment}</p></a>
				<h4><b>时间</b> : ${str.date }</h4>
				
				<c:if test="${judge eq 'true' }">
					<a href="/BadBanana/CommentServlet?method=deleteComment&cid=${str.cid }&username=${str.username}" style="padding-left: 950px;">删除</a>
				</c:if>
			</div>
		</div>

	</c:forEach>
		
		
		
			
			<div class='clearfix'></div>
		</div>
	</div>


<!-- //contact -->

<!-- footer -->
<div class="footer">
	<div class="container">
		<h3><a href="#">My Career</a></h3>
		<p>Copyright &copy; 2017.Company name All rights reserved.From Bad-Banana </p>
					<ul class="social-nav model-3d-0 footer-social w3_agile_social">
						<li><a href="#" class="facebook">
							<div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a>
						</li>
						<li><a href="#" class="twitter"> 
							<div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a>
						</li>
						<li><a href="#" class="instagram">
							<div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a>
						</li>
						<li><a href="#" class="pinterest">
							<div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a>
						</li>
					</ul>
	</div>
</div>
<!-- //footer -->

<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->

<script type="text/javascript" src="js/numscroller-1.0.js"></script><!-- numscroller js file -->

<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<!-- //scrolling script -->

<!-- //here starts scrolling icon -->
<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling script -->
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
	<!-- //here ends scrolling script -->
<!-- //here ends scrolling icon -->

<!-- Navigation-JavaScript -->
	<script src="js/classie.js"></script>
	<script src="js/main.js"></script>
<!-- //Navigation-JavaScript -->
		
<!-- FlexSlider-JavaScript -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(function(){
			SyntaxHighlighter.all();
				});
				$(window).load(function(){
				$('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
						$('body').removeClass('loading');
					}
			});
		});
	</script>
<!-- //FlexSlider-JavaScript -->

<!-- bars js files -->
	<script src="js/bars.js"></script>
<!-- //bars js files -->

<!-- banner text effect js file -->
	<script src="js/modernizr.custom.72111.js"></script>
<!-- banner text effect js file -->

<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->

</body>
</html>