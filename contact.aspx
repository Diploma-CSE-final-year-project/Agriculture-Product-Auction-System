<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="AgricultureAuction.contact" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Online Auction an Agriculture | Home </title>

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
							<p>BVVS Polytechnic Autonomous,<span>Raichur Road, Bagalkote
					</span></p>
						</div>
						<div class=" footer_grid_left">

							<div class="icon_grid_left">
								<span class="fa fa-volume-control-phone" aria-hidden="true"></span>
							</div>
							<h5> Contact Us</h5>
							<p>+(91) 7349543380<span>+(91) 9008327805</span></p>
						</div>
						<div class=" footer_grid_left">
							<div class="icon_grid_left">

								<span class="fa fa-envelope" aria-hidden="true"></span>
							</div>
							<h5>Email Us</h5>
							<p><a href="mailto:info@example.com">vadirajjorapur3@gmail.com</a>
								<span><a href="mailto:info@example.com">swarajjinnad@gmail.com</a></span></p>
						</div>

					</div>
					<div class="col-md-8 col-sm-7 contact-us">
						<form name ="form1" runat ="server">
							<div class="styled-input">

                                <asp:TextBox ID ="name" Text ="Name" runat ="server"></asp:TextBox>

								
							</div>
							<div class="styled-input">

                                <asp:TextBox ID ="email" Text ="Email" runat ="server"></asp:TextBox>



							</div>
							<div class="styled-input">

                                <asp:TextBox ID ="phone" Text ="Phone" runat ="server"></asp:TextBox>

                                

							</div>
							<div class="styled-input">

                    
                                <asp:Textbox ID ="msg" runat ="server" TextMode ="MultiLine" Height ="100"></asp:Textbox>
 


							</div>
							<div>
								<div class="click">
									
                                    <asp:Button ID ="sendMsg" runat ="server" Text ="Send Message" OnClick="sendMsg_Click" />
                                    
								</div>
							</div>
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>

				<div class="col-md-4 map-grid">
					
				
                
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15329.072483323625!2d75.66748372840786!3d16.15511782124531!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc778db0af94815%3A0xa2cf96095482e836!2sA%20P%20M%20C%20Yard%2C%20Bagalkot%2C%20Karnataka%20587103!5e0!3m2!1sen!2sin!4v1597558051778!5m2!1sen!2sin" ></iframe>

                </div>
				<div class="clearfix"> </div>
			</div>


		</div>
	</div>
	<footer>
		<div class="container">
			<div class="col-md-7 col-sm-8 header-side">
				<p>© 2020 </p>
			</div>
			<div class="col-md-5 col-sm-4 header-side">
				<div class="buttom-social-grids">

					
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
