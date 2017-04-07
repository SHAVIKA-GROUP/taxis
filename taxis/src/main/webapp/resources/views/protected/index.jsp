<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html ng-app="indexApp">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Taxis | Dashboard</title>

<!-- Standard Favicon -->
<link rel="icon" type="image/x-icon" href="<c:url value='/resources/assets/images/favicon.ico'/>" />
<!-- For iPhone 4 Retina display: -->
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value='/resources/assets/images/apple-touch-icon-114x114-precomposed.png'/>">
<!-- For iPad: -->
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value='/resources/assets/images/apple-touch-icon-72x72-precomposed.png'/>">
<!-- For iPhone: -->
<link rel="apple-touch-icon-precomposed" href="<c:url value='/resources/assets/images//apple-touch-icon-57x57-precomposed.png'/>">

<!-- Library - Loader CSS -->
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/assets/libraries/loader/loaders.min.css'/>">

<!-- Library - Bootstrap v3.3.5 -->
<!-- 
<link href="<c:url value='./resources/assets/datetimepicker/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" media="screen">
 -->
<link href="<c:url value='./resources/assets/datetimepicker/css/bootstrap-datetimepicker.min.css'/>" rel="stylesheet" media="screen">

 
<link rel="stylesheet" type="text/css" href="<c:url value='./resources/assets/libraries/bootstrap/bootstrap.min.css'/>" media="screen">
<!--
<link rel="stylesheet" type="text/css" href="<c:url value='./resources/assets/libraries/bootstrap/bootstrap-datetimepicker.min.css'/>" media="screen">
-->
<!-- Library - Google Font Familys -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen:400,300,700'  rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lato:400,100italic,100,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>


<!-- Font Icons --> 
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/assets/libraries/fonts/font-awesome.min.css'/>">
<!-- Library - OWL Carousel V.2.0 beta -->
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/assets/libraries/owl-carousel/owl.carousel.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/assets/libraries/owl-carousel/owl.theme.css'/>">
<!-- Library - FlexSlider v2.5.0 -->
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/assets/libraries/flexslider/flexslider.css'/>">
<!-- Library - Animate CSS -->
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/assets/libraries/animate/animate.min.css'/>">
<!-- Custom - Common CSS -->
<link rel="stylesheet" media="all" type="text/css" href="<c:url value='/resources/assets/css/plugins.css'/>">
<link rel="stylesheet" media="all" type="text/css" href="<c:url value='/resources/assets/css/navigation-menu.css'/>">
<!-- Custom - Theme CSS -->
<link rel="stylesheet" media="all" type="text/css" href="<c:url value='/resources/assets/css/style.css'/>">
<link  rel="stylesheet" media="all" type="text/css" href="<c:url value='/resources/assets/css/shortcodes.css'/>">
<!--[if lt IE 9]>
		<script src="js/html5/respond.min.js"></script>
    <![endif]-->
</head>

<body data-offset="200" data-spy="scroll" data-target=".ow-navigation" ng-cloak>
	<!-- Loader -->
	<div id="site-loader" class="load-complete">
		<div class="loader">
			<div class="loader-inner ball-clip-rotate">
				<div></div>
			</div>
		</div>
	</div><!-- Loader /- -->
	<a id="top"></a>
	
	<!-- Main Container -->
 	<div class="main-container">

		<!-- ---------------------- Header  ----------------------  -->
		<header class="header-main">
			<!-- Logo Block -->
			<div class="middle-header container-fluid no-padding">
				<!-- Container -->
				<div class="container">
					<div class="col-md-4 logo-block pull-left">
						<a href="#"><img src="./resources/assets/images/logo.png" alt="Logo" /><b>National Cab</b><span>Always there for you</span></a>
					</div>
					<div class="col-md-6 pull-right">
						<div class="location">
							<img src="./resources/assets/images/icon/location-ic.png" alt="Location" /><p>A12 - Design Street,<span> Omaha, United States</span></p>
						</div>
						<div class="phone">
							<img src="./resources/assets/images/icon/phone-ic.png" alt="phone" /><p>Call Us Any Time:<span> +(01) 123 456 789</span></p>
						</div>
					</div>
				</div><!-- Container /- -->
			</div><!-- Logo Block /- -->
			<nav class="navbar ow-navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<div class="navbar-brand logo-block">
							<a href="#"><img src="./resources/assets/images/logo.png" alt="Logo" /><b>National Cab</b><span>Always there for you</span></a>
						</div>
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li><a href="#top" >Home</a></li>
							<li><a href="#bookdetails">Book Detail</a></li> 
							<li><a href="#vehiclefleet">Vehicle Type</a></li> 
							<li><a href="#book-taxi-online-form">Booking Form</a></li>
							<li><a href="#contact-us">Contact Us</a></li> 							
						</ul>						
					</div>
					<a href="#">Book For A Ride</a>
				</div>
			</nav>
		</header><!-- Header /- -->
		
		<!-- ---------------------- STATIC HTML  ----------------------  -->
		<div class="content-wrapper">
			<div ng-view></div>
		</div>
  		
  </div><!-- Main Container -->

	<!-- ---------------------- Map modal----------------------  -->
	<section align="center">
		<div class="container">	
			<div class="col-md-12 col-sm-12"> 
				<div class="modal fade bs-example-modal-lg" id="mapmodal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
				  <div class="modal-dialog modal-lg" role="document">
				    <div class="modal-content">
						  <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					        <h4 class="modal-title" id="myModalLabel">Google Map</h4>
					      </div>
					      
					      <div class="modal-body" style="height:100%;overflow:auto;">
							  <table border="0" cellpadding="0" cellspacing="3" width="90%" height="90%">
								<tr>
								    <td><div id="dvMap" style="width: 400px; height: 400px"></div></td>
								    <td><div id="dvPanel" style="width: 400px; height: 400px"></div></td>
								</tr>
							  </table>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					      </div>
				    </div>
				  </div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- ---------------------- Alert modal----------------------  -->
	<section align="center">
		<div class="container">	
			<div class="col-md-12 col-sm-12"> 
				<!--  @@@@@@@@@@@@@@@@@@ Warning alert message @@@@@@@@@@@@@@@@@@ -->
				<div id="myModal" class="modal fade" tabindex="-1" role="dialog">
				  <div class="modal-dialog" role="document">
					<div class="modal-content">
					  <div class="modal-body">
					  <h4><i><p ><div id="mymodal-content" align='center'></div></p></i></h4>
					  <!-- <h4><i><p id="mymodal-content" align='center'>Some of fields are not filed so enter it...</p></i></h4>  -->   
					  </div>
					  <div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					  </div>
					</div>
				  </div>
				</div><!-- /.modal -->
			</div>
		</div>
	</section>			

	<!-- ---------------------- Alert modal----------------------  -->
	<section align="center">
		<div class="container">	
			<div class="col-md-12 col-sm-12"> 
				<!--  @@@@@@@@@@@@@@@@@@ Warning alert message @@@@@@@@@@@@@@@@@@ -->
				<div id="myModal404" class="modal fade" tabindex="-1" role="dialog">
				  <div class="modal-dialog" role="document">
					<div class="modal-content">
					  <div class="modal-body">
					  <h4><i><p id="mymodal-content" align='center'>Work in progress...</p></i></h4>   
					  </div>
					  <div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					  </div>
					</div>
				  </div>
				</div><!-- /.modal -->
			</div>
		</div>
	</section>			
	
<!-- JQuery v1.11.3 -->
<script type="text/javascript" src="<c:url value='./resources/assets/datetimepicker/jquery/jquery-1.8.3.min.js'/>" charset="UTF-8"></script>
<!-- Library - Bootstrap v3.3.5 -->
<script type="text/javascript" src="<c:url value='./resources/assets/datetimepicker/bootstrap/js/bootstrap.min.js'/>"></script>
<!-- Bootstrap JS File v3.3.5 -->
<script type="text/javascript" src="<c:url value='./resources/assets/datetimepicker/js/bootstrap-datetimepicker.js'/>" charset="UTF-8"></script>

<!-- Library - Modernizer -->
<script src="<c:url value='/resources/assets/libraries/modernizr/modernizr.js'/>"></script>
<!-- jQuery Easing v1.3 -->
<script src="<c:url value='/resources/assets/js/jquery.easing.min.js'/>"></script>
<!-- Library - jQuery.appear -->
<script src="<c:url value='/resources/assets/libraries/appear/jquery.appear.js'/>"></script>
<!-- Library - OWL Carousel V.2.0 beta -->
<script src="<c:url value='/resources/assets/libraries/owl-carousel/owl.carousel.min.js'/>"></script>
<!-- jQuery For Number Counter -->
<script src="<c:url value='/resources/assets/libraries/number/jquery.animateNumber.min.js'/>"></script>

<!-- Library - Google Map API -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css" rel="stylesheet"></link>

<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDNW12AXxNtYXUWd-pdgMtauo6LpkOqBkY&libraries=places"></script>   
<!-- <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>   -->


<!-- Library - FlexSlider v2.5.0 -->
<script defer src="<c:url value='/resources/assets/libraries/flexslider/jquery.flexslider.js'/>"></script>
<!-- Library - Theme JS -->
<script src="<c:url value='/resources/assets/js/functions.js'/>""></script>
<!-- Library - Theme JS -->
<script src="<c:url value='/resources/assets/js/taxis.app.js'/>""></script>

<!-- angularJS -->
<script src="<c:url value='/resources/assets/anjularjs/angular.min.js' />"></script>
<script src="<c:url value='/resources/assets/anjularjs/angular-route.min.js' />"></script>
<script src="<c:url value='/resources/assets/anjularjs/angular-resource.min.js' />"></script>
<script src="<c:url value='/resources/views/protected/indexApp.js' />"></script>
<script src="<c:url value='/resources/views/protected/dashboard.app.js' />"></script>
<script src="<c:url value='/resources/views/protected/emailComfirmed.app.js' />"></script>
<script src="<c:url value='/resources/views/protected/paypalForm.app.js' />"></script>

</body>
</html>