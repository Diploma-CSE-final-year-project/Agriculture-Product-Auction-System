<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AgricultureAuction.index" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Online Auction an Agriculture</title>

	<!--meta tags -->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="Online Auction Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//meta tags ends here-->

	<!--booststrap-->

	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
	<!--//booststrap end-->

	<!-- font-awesome icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome icons -->
	<!--stylesheets-->
	<link href="css/style.css" rel='stylesheet' type='text/css' media="all">
	<!--//stylesheets-->
	<link rel="stylesheet" href="css/lightbox.css">
	<!--gallery-->

	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet">

</head>

<body>
	<div class="header-outs">
		<div class="w3-agile-logo">
			<div class=" head-wl">
				<div class="headder-w3">
					<h1><a href="index.html">Agriculture Product Auction System</a></h1>
				</div>

				<%--<div class="search-w3ls">
					<form action="#" method="post">
						<div class="input-group">
							<div class="search-up">
								<input type="search" class="form-control" name="search" id="search2" placeholder="Search" required="">
							</div>
							<span class="input-group-btn">
							<button class="btn btn-default" type="submit"><span class="fa fa-search"></span></button>
							</span>
						</div>
					</form>
				</div>--%>

				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="top-nav">
			<nav class="navbar navbar-default navbar-fixed-top">
				<div class="container">

					<!-- //header -->

					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						 aria-controls="navbar">
	                <span class="sr-only">Toggle navigation</span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
                </button>
					</div>

					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav ">
							<li><asp:HyperLink ID ="h1" runat="server" Text="Home" NavigateUrl="~/index.aspx"></asp:HyperLink></li>
							<li><asp:HyperLink ID ="HyperLink2" runat="server" Text="Admin" NavigateUrl="~/admin.aspx"></asp:HyperLink></li>
							<li><asp:HyperLink ID ="HyperLink3" runat="server" Text="Merchants" NavigateUrl="~/loginMerchant.aspx"></asp:HyperLink></li>
							<li><asp:HyperLink ID ="HyperLink4" runat="server" Text="Farmers" NavigateUrl="~/loginFarmer.aspx"></asp:HyperLink></li>
							<li><asp:HyperLink ID ="HyperLink5" runat="server" Text="Contact" NavigateUrl="~/contact.aspx"></asp:HyperLink></li>
						</ul>
					</div>

				</div>
			</nav>
		</div>


		<!-- Slideshow 4 -->
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides" id="slider4">
					<li>
						<div class="slider-img">
							<div class="container">
								<div class="slider-info">
									<h4>Online Auction Application for Farmers </h4>
									
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="slider-img ">
							<div class="container">
								<div class="slider-info">
									<h4>Real And Natural Food Agri Products</h4>
									
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="slider-img">
							<div class="container">
								<div class="slider-info">
									<h4>Online Auction Application for Farmers</h4>
									
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- This is here just to demonstrate the callbacks -->
	<!-- <ul class="events">
      <li>Example 4 callback events</li>
    </ul>-->
	<!-- //banner -->
	<!--Services-->
	<div class="services" id="services">
		<div class="container">
			<h2 class="sub-title">About</h2>

			<div class="banner-bottom-girds">
				<div class="col-md-6  col-sm-6 col-xs-6  its-banner-grid">
					<div class="white-shadow">

						<div class=" col-md-8 white-right">
							<h4>Vision</h4>
							<p>Our Mission is to help Farmers and Merchants by providing best in class Software solutions to achieve Best Product at Best Price and Contribute to Digital India and E-Governance Movements..<br/><br/></p>
							<div class="w3layouts_more-buttn ser-buttn">
								<a href="#" data-toggle="modal" data-target="#myModal">Read More</a>
							</div>

						</div>
						<div class="col-md-4 white-left">
							<span class="fa fa-truck banner-icon" aria-hidden="true"></span>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-6  col-sm-6 col-xs-6  its-banner-grid">
					<div class="white-shadow">

						<div class=" col-md-8 white-right">
							<h4>Our Plan</h4>
							<p>Building Secure Web Platform for Agriculture Product Auction and Management to remove Mediators from transactions and provide best quoted price for Farmers Product and Govt can use this data for analysis purpose.</p>
							<div class="w3layouts_more-buttn ser-buttn">
								<a href="#" data-toggle="modal" data-target="#myModal">Read More</a>
							</div>

						</div>
						<div class="col-md-4 white-left">
							<span class="fa fa-flask banner-icon" aria-hidden="true"></span>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-6  col-sm-6 col-xs-6  its-banner-grid">
					<div class="white-shadow">

						<div class="col-md-8 white-right">
							<h4>Mission</h4>
							<p>In Future we integrate APAS to all Agriculture Govt Agencies and developing Android and IOS Applications to make APAS more efficient and convenient to Use, Applying Artificial Intelligence & Machine Learning Tactis govt easily tackle Artificial Scarcity in Market..</p>
							<div class="w3layouts_more-buttn ser-buttn">
								<a href="#" data-toggle="modal" data-target="#myModal">Read More</a>
							</div>

						</div>
						<div class="col-md-4 white-left">
							<span class="fa fa-pagelines banner-icon" aria-hidden="true"></span>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-6  col-sm-6 col-xs-6  its-banner-grid">
					<div class="white-shadow">

						<div class=" col-md-8 white-right">
							<h4>What is APMC ?</h4>
							<p>An Agricultural Produce Market Committee is a marketing board established by a state government in India to ensure farmers are safeguarded from exploitation by large retailers, as well as ensuring the farm to retail price spread does not reach excessively high levels.</p>
							<div class="w3layouts_more-buttn ser-buttn">
								<a href="#" data-toggle="modal" data-target="#myModal">Read More</a>
							</div>

						</div>
						<div class="col-md-4 white-left">
							<span class="fa fa-leaf banner-icon" aria-hidden="true"></span>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>

	<!--//Services-->

	<%--<!-- modal -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">Online Auction</h4>
				</div>
				<div class="modal-body">
					<div class="out-info">
						<img src="images/g1.jpg" alt="" />
						<p>Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae,
							eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellu</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //modal -->
	<!-- bolg -->
	<div class="blog" id="blog">
		<div class="blog-two-grids">
			<h3 class="title">Our Blog</h3>
			<div class="blog-top-grids">
				<div class="col-md-7 col-sm-7 blog-grid left-side">
					<h4>Lorem ipsum
					</h4>
					<p class="groom-right">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sed odio consequat, tristique elit sed, molestie nulla.
						Mauris et quam leo. Quisque tincidunt facilisis rutrum. Etiam mattis arcu vitae velit sagittis vehicula. Duis posuere
						ex in mollis iaculis.
					</p>
					<div class="w3layouts_more-buttn right-buttn">
						<a href="#" data-toggle="modal" data-target="#myModal">Read More</a>
					</div>
				</div>
				<div class="col-md-5 col-sm-5 blog-gr">
				</div>
				<div class="clearfix"> </div>

				<div class="blog-top-grids low-grid">
					<div class="col-md-6 col-sm-5 blog-br">
					</div>
					<div class="col-md-3 col-sm-4 blog-three">
						<div class="agri-matter">
							<p> Quisque tincidunt facilisis rutrum. Etiam mattis arcu vitae velit sagittis vehicula. Duis posuere ex in mollis iaculis.
							</p>
						</div>

					</div>
					<div class="col-md-3 col-sm-3  blog-fore">
					</div>
					<div class="clearfix"> </div>
				</div>

			</div>
		</div>
	</div>
	<!-- //blog -->
	<!-- gallery-->
	<div id="gallery" class="gallery">
		<div class="container">
			<h3 class="title">Gallery</h3>
			<div class="gallery-info">
				<div class="col-md-4 col-sm-4 col-xs-4 gallery-grids">
					<a href="images/g1.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
					<img src="images/g1.jpg" alt="" class="img-responsive zoom-img">
				</a>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-4 gallery-grids">
					<a href="images/g2.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
					<img src="images/g2.jpg" alt="" class="img-responsive zoom-img">
				</a>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-4 gallery-grids">
					<a href="images/g3.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
					<img src="images/g3.jpg" alt="" class="img-responsive zoom-img">
				</a>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-4 gallery-grids  grid-mdl">
					<a href="images/g4.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
					<img src="images/g4.jpg" alt="" class="img-responsive zoom-img">
				</a>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-4 gallery-grids grid-mdl">
					<a href="images/g5.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
					<img src="images/g5.jpg" alt="" class="img-responsive zoom-img">
				</a>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-4 gallery-grids  grid-mdl">
					<a href="images/g6.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
					<img src="images/g6.jpg" alt="" class="img-responsive zoom-img">
				</a>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-4 gallery-grids  grid-mdl">
					<a href="images/g7.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
					<img src="images/g7.jpg" alt="" class="img-responsive zoom-img">
				</a>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-4 gallery-grids  grid-mdl">
					<a href="images/g8.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
					<img src="images/g8.jpg" alt="" class="img-responsive zoom-img">
				</a>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-4 gallery-grids  grid-mdl">
					<a href="images/g9.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
					<img src="images/g9.jpg" alt="" class="img-responsive zoom-img">
				</a>
				</div>
			</div>
		</div>
	</div>
	<!-- //gallery-->
	<!-- counter-->
	<div class="rate" id="rate">
		<div class="container">
			<h3 class="title clr">Our Facilities</h3>
			<div class="stats-info agileits w3layouts">
				<div class="col-md-3 col-sm-3 col-xs-6 agileits w3layouts stats-grid stats-grid-1">
					<div class="ser-icone"> <span class="fa fa-users font" aria-hidden="true"></span>
					</div>
					<div class=" agileits-w3layouts counter">3500</div>
					<div class="stat-info-w3ls">
						<h4 class="agileits w3layouts">Farmers</h4>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 agileits w3layouts stats-grid stats-grid-2">
					<div class="ser-icone"> <span class="fa fa-pagelines font" aria-hidden="true"></span>
					</div>
					<div class=" agileits-w3layouts counter">650</div>
					<div class="stat-info-w3ls">
						<h4 class="agileits w3layouts ">Products</h4>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 stats-grid agileits w3layouts stats-grid-3">
					<div class="ser-icone"> <span class="fa fa-leaf font" aria-hidden="true"></span>
					</div>
					<div class=" agileits-w3layouts counter">1021</div>
					<div class="stat-info-w3ls">
						<h4 class="agileits w3layouts ">seeds</h4>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 stats-grid agileits w3layouts stats-grid-4">
					<div class="ser-icone"> <span class="fa fa-truck font" aria-hidden="true"></span>
					</div>
					<div class=" agileits-w3layouts counter">1010</div>
					<div class="stat-info-w3ls">
						<h4 class="agileits w3layouts">Logistics</h4>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //counter-->
	<!-- team-->
	<div class="team agileits" id="team">
		<div class="team-info">
			<div class="container">
				<div class="team-row">
					<h3 class="title">Our Team</h3>
					<div class="col-md-3 col-sm-6 col-xs-6 team-grids">
						<div class="team-agile-img">
							<a href="#"><img src="images/t1.jpg" alt="img"></a>
							<div class="view-caption">
								<div class="w3ls-info">
									<h4>Smith</h4>
								</div>
								<ul>
									<li><a href="#"><span class="fa fa-facebook"></span></a></li>
									<li><a href="#"><span class="fa fa-twitter"></span></a></li>
									<li><a href="#"><span class="fa fa-google-plus"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 team-grids">
						<div class="team-agile-img">
							<a href="#"><img src="images/t2.jpg" alt="img"></a>
							<div class="view-caption">
								<div class="w3ls-info">
									<h4>Sophia </h4>
								</div>
								<ul>
									<li><a href="#"><span class="fa fa-facebook"></span></a></li>
									<li><a href="#"><span class="fa fa-twitter"></span></a></li>
									<li><a href="#"><span class="fa fa-google-plus"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 team-grids">
						<div class="team-agile-img">
							<a href="#"><img src="images/t3.jpg" alt="img"></a>
							<div class="view-caption">
								<div class="w3ls-info">
									<h4>Michael</h4>
								</div>
								<ul>
									<li><a href="#"><span class="fa fa-facebook"></span></a></li>
									<li><a href="#"><span class="fa fa-twitter"></span></a></li>
									<li><a href="#"><span class="fa fa-google-plus"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 team-grids">
						<div class="team-agile-img">
							<a href="#"><img src="images/t4.jpg" alt="img"></a>
							<div class="view-caption">
								<div class="w3ls-info">
									<h4>lara</h4>
								</div>
								<ul>
									<li><a href="#"><span class="fa fa-facebook"></span></a></li>
									<li><a href="#"><span class="fa fa-twitter"></span></a></li>
									<li><a href="#"><span class="fa fa-google-plus"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	<!-- //team-->
	<!-- contact-->
	<div class="contact" id="contact">
		<div class="container">
			<h3 class="title clr">Contact</h3>
			<div class="contact-two-grids">
				<div class="col-md-8 contact-left-grid">
					<div class=" col-md-4 col-sm-5 contact-icons">
						<div class=" footer_grid_left">
							<div class="icon_grid_left">
								<span class="fa fa-map-marker" aria-hidden="true"></span>
							</div>
							<h5>Address</h5>
							<p>Unterberg 11,06108,<span>Halle,
					Germany</span></p>
						</div>
						<div class=" footer_grid_left">

							<div class="icon_grid_left">
								<span class="fa fa-volume-control-phone" aria-hidden="true"></span>
							</div>
							<h5> Contact Us</h5>
							<p>+(000) 123 4565 32 <span>+(010) 123 4565 35</span></p>
						</div>
						<div class=" footer_grid_left">
							<div class="icon_grid_left">

								<span class="fa fa-envelope" aria-hidden="true"></span>
							</div>
							<h5>Email Us</h5>
							<p><a href="mailto:info@example.com">info@example1.com</a>
								<span><a href="mailto:info@example.com">info@example2.com</a></span></p>
						</div>

					</div>
					<div class="col-md-8 col-sm-7 contact-us">
						<form action="#" method="post">
							<div class="styled-input">

								<input type="text" name="Name" placeholder="Name" required="">

							</div>
							<div class="styled-input">

								<input type="email" name="Email" placeholder="Email" required="">



							</div>
							<div class="styled-input">

                                <input type="text" name="phone" placeholder="phone" required="">

                                

							</div>
							<div class="styled-input">

								<textarea name="Message" placeholder="Message" required=""></textarea>



							</div>
							<div>
								<div class="click">
									<input type="submit" value="SEND">
								</div>
							</div>
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>

				<div class="col-md-4 map-grid">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6509687.090753893!2d-123.76387427440008!3d37.18697025540024!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fb9fe5f285e3d%3A0x8b5109a227086f55!2sCalifornia%2C+USA!5e0!3m2!1sen!2sin!4v1491201047627"></iframe>
				</div>
				<div class="clearfix"> </div>
			</div>


		</div>
	</div>--%>
	<footer>
		<div class="container">
			<div class="col-md-7 col-sm-8 header-side">
				<p>© 2020 Agriculture Product Auction System</p>
			</div>
			<div class="col-md-5 col-sm-4 header-side">
				<div class="buttom-social-grids">

					<ul>
						
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<!--//contact-->
	<!--js working-->
	<script src='js/jquery-2.2.3.min.js'></script>

	<!-- //js  working-->

	<!-- gallery -->
	<script src="js/lightbox-plus-jquery.min.js"></script>
	<!-- //gallery -->
	<script src="js/responsiveslides.min.js"></script>

	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 4
			$("#slider4").responsiveSlides({
				auto: true,
				pager: true,
				nav: false,
				speed: 900,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<!--// banner-->
	<!-- OnScroll-Number-Increase-JavaScript -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
	</script>
	<!-- //OnScroll-Number-Increase-JavaScript -->
	<!-- start-smoth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->

	<!-- for-bottom-to-top smooth scrolling -->
	<script>
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
			$().UItoTop({
				easingType: 'easeOutQuart'
			});
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- //for-bottom-to-top smooth scrolling -->

	<!--bootstrap-->
	<script src="js/bootstrap.js"></script>
	<!--// bootstrap-->


</body>
</html>
