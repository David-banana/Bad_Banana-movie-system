<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home </title>
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
							<a class="scroll" href="#about"><i class="fa fa-info"></i><span>关于我</span></a>
							<a class="scroll" href="#gallery"><i class="fa fa-picture-o"></i><span>照片墙</span></a>
							<a class="scroll" href="#education"><i class="fa fa-book"></i><span>我的足迹</span></a>
							<a class="scroll" href="#stats"><i class="fa fa-laptop"></i><span>我的成长</span></a>
							<a class="scroll" href="#contact"><i class="fa fa-phone"></i><span>联系我</span></a>
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
					<a href="index.html"><div class="agilelogo">我的小屋</div></a>
			</div>
			<div class="wthreecontact">
				<p><a class="scroll" href="#contact"><i class="fa fa-envelope-o" aria-hidden="true"></i> 联系我</a></p>
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
					<h1>${homeUser.username }</h1>
					<h2 class="rw-sentence">
					<span>个人标签</span>
					<div class="rw-words rw-words-1">
						<span>UI/UX Designer.</span>
						<span>Web Developer</span>
						<span>App Developer</span>
						<span>Graphic Designer</span>
						<span>Team Leader</span>
						<span>Programmer</span>
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
			<div class="gallery-info">
				<div class="col-md-3 gallery-grids">
					<a href="images/gallery1.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
						<img src="images/gallery1.jpg" alt="" class="img-responsive zoom-img">
					</a>
				</div>
				<div class="col-md-3 gallery-grids">
					<a href="images/gallery2.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
						<img src="images/gallery2.jpg" alt="" class="img-responsive zoom-img">
					</a>
				</div>
				<div class="col-md-3 gallery-grids">
					<a href="images/gallery3.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
						<img src="images/gallery3.jpg" alt="" class="img-responsive zoom-img">
					</a>
				</div>
				<div class="col-md-3 gallery-grids">
					<a href="images/gallery4.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
						<img src="images/gallery4.jpg" alt="" class="img-responsive zoom-img">
					</a>
				</div>
				<div class="col-md-3 gallery-grids grid-mdl">
					<a href="images/gallery5.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
						<img src="images/gallery5.jpg" alt="" class="img-responsive zoom-img">
					</a>
				</div>
				<div class="col-md-3 gallery-grids grid-mdl">
					<a href="images/gallery6.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
						<img src="images/gallery6.jpg" alt="" class="img-responsive zoom-img">
					</a>
				</div>
				<div class="col-md-3 gallery-grids grid-mdl">
					<a href="images/gallery7.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
						<img src="images/gallery7.jpg" alt="" class="img-responsive zoom-img">
					</a>
				</div>
				<div class="col-md-3 gallery-grids grid-mdl">
					<a href="images/gallery8.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
						<img src="images/gallery8.jpg" alt="" class="img-responsive zoom-img">
					</a>
				</div>
				<div class="col-md-3 gallery-grids grid-mdl">
					<a href="images/gallery9.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
						<img src="images/gallery9.jpg" alt="" class="img-responsive zoom-img">
					</a>
				</div>
				<div class="col-md-3 gallery-grids grid-mdl">
					<a href="images/gallery10.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
						<img src="images/gallery10.jpg" alt="" class="img-responsive zoom-img">
					</a>
				</div>
				<div class="col-md-3 gallery-grids grid-mdl">
					<a href="images/gallery11.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
						<img src="images/gallery11.jpg" alt="" class="img-responsive zoom-img">
					</a>
				</div>
				<div class="col-md-3 gallery-grids grid-mdl">
					<a href="images/gallery5.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
						<img src="images/gallery5.jpg" alt="" class="img-responsive zoom-img">
					</a>
				</div>
				<div class="clearfix"> </div>	
			</div>
		<script src="js/lightbox-plus-jquery.min.js"></script>
	</div>
<!-- //gallery -->

<!-- Education -->
<div class="education" id="education">
	<div class="container">
			<h3 class="heading">我的足迹</h3>
		<div class="col-md-6">
			<div class="grid1">
				<h3>电影名称</h3>
				<p>影评...Dignissim elit at ligula laoreet iaculis. Sed urna purus, 
					convallis sedrhon cus eget, bibendum idtortor. Donec libero tellus, 
					feugiat ut felis ac, commodo pharetra massa</p>
				<h4><b>时间</b> : 2011-2013</h4>
			</div>
		</div>
		<div class="col-md-6">
			<div class="grid1">
				<h3>Bachelor Degree of education</h3>
				<p>Dignissim elit at ligula laoreet iaculis. Sed urna purus, 
					convallis sedrhon cus eget, bibendum idtortor. Donec libero tellus, 
					feugiat ut felis ac, commodo pharetra massa</p>
				<h4><b>Year</b> : 2011-2013</h4>
			</div>
		</div>
		<div class='clearfix'></div>
		<div class="educationbottom">
			<div class="col-md-6">
				<div class="grid1">
					<h3>Bachelor Degree of education</h3>
					<p>Dignissim elit at ligula laoreet iaculis. Sed urna purus, 
						convallis sedrhon cus eget, bibendum idtortor. Donec libero tellus, 
						feugiat ut felis ac, commodo pharetra massa</p>
					<h4><b>Year</b> : 2011-2013</h4>
					
				</div>
			</div>
			<div class="col-md-6">
				<div class="grid1 lastgrid">
					<h3>Bachelor Degree of education</h3>
					<p>Dignissim elit at ligula laoreet iaculis. Sed urna purus, 
						convallis sedrhon cus eget, bibendum idtortor. Donec libero tellus, 
						feugiat ut felis ac, commodo pharetra massa</p>
					<h4><b>Year</b> : 2011-2013</h4>
				</div>
			</div>
			<div class='clearfix'></div>
		</div>
	</div>
</div>


<!-- Technical Skills -->
<div class="count-agileits" id="stats">
	<div class="container">
		<h3 class="heading">我的成长</h3>
					<div class="count-grids">
					<div class="count-bgcolor-w3ls">
						<div class="col-md-3 count-grid">
							<div class="count hvr-bounce-to-bottom">
								<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='120' data-delay='1' data-increment="1">120</div>
									<span></span>
									<h5>我已经看过这么多电影</h5>
							</div>
						</div>
						<div class="col-md-3 count-grid">
							<div class="count hvr-bounce-to-bottom">
								<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='172' data-delay='1' data-increment="1">172</div>
									<span></span>
									<h5>我有这么多点评</h5>
							</div>
						</div>
						<div class="col-md-3 count-grid">
							<div class="count hvr-bounce-to-bottom">
								<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='102' data-delay='1' data-increment="1">102</div>
									<span></span>
									<h5>我来到Banana已经</h5>
							</div>
						</div>
						<div class="col-md-3 count-grid">
							<div class="count hvr-bounce-to-bottom">
								<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='156' data-delay='1' data-increment="1">156</div>
									<span></span>
									<h5>我还想看这么多电影</h5>
								</div>
						</div>
						<div class="clearfix"></div>
						</div>
					</div>
	</div>
</div>

<!-- Technical Skills -->

<!-- contact -->
<div class="contact" id="contact">
	<div class="container">
		<h3 class="heading">联系我</h3>
		<div class="col-md-4 address">
			<h3>这是我的</h3>
			<div class="mail-agileits-w3layouts">
				<i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>
				<div class="contact-right">
					<p>联系方式</p><span>+1(01) 24-212-5665</span>
				</div>
				<div class="clear"></div>
			</div>
			<div class="mail-agileits-w3layouts">
				<i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
				<div class="contact-right">
					<p>邮箱</p><a href="mailto:info@example.com">info@example.com</a>
				</div>
				<div class="clear"></div>
			</div>
			<div class="mail-agileits-w3layouts">
				<i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>
				<div class="contact-right">
					<p>地址</p><span>10 Eunos Road 8, Mandalay </span> 
					<p><span>Towers, Singapore.</span></p>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="col-md-4 form">
			<form action="#" method="post">
				<div class="fields-grid">
					<div class="styled-input agile-styled-input-top">
						<input type="text" name="First name" required=""> 
						<label>你的名字</label>
						<span></span>
					</div>
					<div class="styled-input">
						<input type="email" name="Email" required="">
						<label>你的邮箱</label>
						<span></span>
					</div>
					<div class="styled-input">
						<input type="tel" name="Phone" required="">
						<label>告诉我你的电话</label>
						<span></span>
					</div>
					<div class="styled-input">
						<textarea name="Message" required></textarea>
						<label>小声对我说</label>
						<span></span>
					</div>
					<div class="clear"> </div>
				</div>
				<input type="submit" value="SEND">
			</form>

		</div>
		<!---<div class="col-md-4 map">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31909.33437743319!2d103.8212862717648!3d1.3766002857431643!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da16c40ac82661%3A0x500f7acaedaa550!2sAng+Mo+Kio%2C+Singapore!5e0!3m2!1sen!2sin!4v1497852510740"></iframe>
		</div>--->
		<div class="clearfix"></div>
	</div>
</div>
<!-- //contact -->

<!-- footer -->
<div class="footer">
	<div class="container">
		<h3><a href="index.html">My Career</a></h3>
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