﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerMerchant.aspx.cs" Inherits="AgricultureAuction.registerMerchant" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Online Auction an Agriculture | Admin</title>

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

				<div class="search-w3ls">
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


			<!--Services-->
	<div class="services" id="services">
		<div class="container">
	
            
            <div class="contact" id="contact1">
            <div class="container">
                <h3 class="title clr">Register Merchant</h3>
                <div class="contact-two-grids">
                    <div class="col-md-12 contact-left-grid">

                        <div class="col-md-12 col-sm-12 contact-us">
                            <form id ="form1" runat="server">
                                
                                <div class="styled-input">
     
                                    <asp:TextBox ID ="merchantID" runat="server" Text="Merchant ID"></asp:TextBox>
                                
                                </div>
                                

                                <div class="styled-input">
     
                                    <asp:TextBox ID ="merchantname" runat="server" Text="Business Name"></asp:TextBox>
                                
                                </div>
                                
                                
                                
                                <div class="styled-input">
                                                                        

                                    <asp:TextBox ID ="name" runat="server" Text="Name"></asp:TextBox>


                                </div>
                                <div class="styled-input">
                                
                                    <asp:TextBox ID ="email" runat="server" Text="Email"></asp:TextBox>

                                </div>

                                <div class="styled-input">
                                
                                    <asp:TextBox ID ="phone" runat="server" Text="Phone"></asp:TextBox>

                                </div>
                                
                                <div class="styled-input">
                                
                                <asp:TextBox ID ="password" runat="server" Text ="Enter Password"></asp:TextBox>

                                </div>
                                
                                

                                <div>
                                    <div class="click">
                                        <asp:Button id ="btn_Merchant" runat="server" Text="Register" OnClick="btn_Merchant_Click"/>

                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="clearfix"> </div>
                    </div>


                    <div class="clearfix"> </div>
                </div>


            </div>
        </div>
            
            

		</div>
        </div>
	
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
