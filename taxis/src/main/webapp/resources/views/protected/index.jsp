<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="">
<!--<![endif]-->
<html><head>
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
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/assets/css/plugins.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/assets/css/navigation-menu.css'/>">
<!-- Custom - Theme CSS -->
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/assets/css/style.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/assets/css/shortcodes.css'/>">
<!--[if lt IE 9]>
		<script src="js/html5/respond.min.js"></script>
    <![endif]-->
</head>

<body data-offset="200" data-spy="scroll" data-target=".ow-navigation">
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
							<a href="#"><img src="images/logo.png" alt="Logo" /><b>National Cab</b><span>Always there for you</span></a>
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
	
		<!-- ---------------------- Photo Slider  ----------------------  -->
		<section id="photosslider">
			<div class="container-fluid photos-slider">
			<div class="section-padding"></div>
				<div class="carousel slide" data-ride="carousel">			
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="./resources/assets/images/photos-slider/photo-slide-1.jpg" alt="side-1"/>
							<div class="carousel-caption">
								<h2>A reliable way to travel</h2>
								<p>Come and listen to a story about a man named Jed a poor mountaineer barely kept his family fed so lets make the most of this 
								beautiful day since we are together it is a beautiful day in this neighborhood a beautiful day for a neighbor</p>
								<a href="#" class="purchase">Purchase</a>
								<a href="#" title="See More" class="see-more">See More</a>						
							</div>
						</div>
						<div class="item">
							<img src="./resources/assets/images/photos-slider/photo-slide-1.jpg" alt="side-2"/>
							<div class="carousel-caption">
								<h2>A reliable way to travel</h2>
								<p>Come and listen to a story about a man named Jed a poor mountaineer barely kept his family fed so lets make the most of this 
								beautiful day since we are together it is a beautiful day in this neighborhood a beautiful day for a neighbor</p>
								<a href="#" class="purchase">Purchase</a>
								<a href="#" class="see-more">See More</a>						
							</div>
						</div>
					</div>
				</div>
				<div class="section-padding"></div>
			</div ><!-- Photo Slider/- -->
		</section>
	
		<!-- ---------------------- Book Detail  ----------------------  -->
		<section id="bookdetails">
			<div class="container-fluid no-padding book-details">
				<!-- Container -->
				<div class="container">
					<div class="section-padding"></div>
					<div class="section-header">
						<h3>Book For a Ride</h3>				
					</div>
					<!-- Booking Details Form -->
					<form class="booking-details-form">
						<div class="form-group col-md-6 col-sm-12 col-xs-12">
							<label>Source</label>
							<input type="text" class="form-control" id="txtSource" placeholder="Enter Your Starting point">
						</div>
						<div class="form-group col-md-6 col-sm-12 col-xs-12">
							<label>Designation</label>
							<input type="text" class="form-control" id="txtDestination" placeholder="Enter Your Ending point">
						</div>
						
						<div class="form-group col-md-6 col-sm-12 col-xs-12">
							<label>Date &amp; Time</label>
                			<div class="input-group date form_datetime" data-date="2017-03-14T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
                    			<input class="form-control" size="16" type="text" value="" readonly>
                    			<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
								<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                			</div>
							<input type="hidden" id="dtp_input1" value="" /><br/>
						</div>
						<div class="form-group col-md-3 col-sm-6 col-xs-12">
							<label>Passenger</label>
							<input type="number" class="form-control" id="passenger" placeholder="1">
						</div>
						<div class="form-group col-md-3 col-sm-6 col-xs-12">
							<label>Luggage</label>
							<input type="number" class="form-control" id="luggage" placeholder="0">
						</div>
						
						
						<div class="form-group col-md-12 col-sm-12 col-xs-12">
								<div class="form-group col-md-3 col-sm-6 col-xs-12" align="left">
									<button type="button" class="btn" data-toggle="modal" data-target="#mapmodal" >get Map</button>
								</div>
								<div class="form-group col-md-3 col-sm-6 col-xs-12" align="left">
									<h4>Duration : <span class="label label-default" id="spnDuration"></span></h4>
								</div>
								<div class="form-group col-md-3 col-sm-6 col-xs-12" align="left">
									<h4>Distance : <span class="label label-default" id="spnDistance"></span></h4>
								</div>
								<div class="form-group col-md-3 col-sm-6 col-xs-12" align="right">
									<button type="button" class="btn" onclick="GetRoute()">Get Distance</button>
								</div>
						</div>
						
					</form><!-- Booking Details Form/- -->
				</div><!-- Container/- -->
			</div><!-- Book Details/- -->
			<div class="section-padding"></div>
		</section>
	
		<!-- ---------------------- Vehicle feleet ----------------------  -->
		<section id="vehiclefleet">
			<div class="container-fluid no-padding vehicle-fleet">
				<div class="container">
					<div class="section-header">
						<h3>Vehicles In Our Fleet</h3>				
					</div>
					<div class="vehicle-tabs">
						<!-- Nav Tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#luxury_cars" role="tab" data-toggle="tab">HatchBack</a></li>
							<li role="presentation"><a href="#regular_rider" role="tab" data-toggle="tab">Sedan</a></li>
							<li role="presentation"><a href="#airport_shuttle" role="tab" data-toggle="tab">MPV / SUV</a></li>
						</ul><!-- Nav Tabs /- -->
						<!-- Tab Content -->
						<div class="tab-content">
						
							<!-- ******************* HatchBack ********************* -->
							<div role="tabpanel" class="tab-pane fade in active" id="luxury_cars">
								<div class="col-md-7 vehicle-slider no-padding">
									<div class="row">
										<div class="main-slider">
											<div id="slider-1" class="flexslider">
												<ul class="slides">
													<li><img src="./resources/assets/images/vehicles-fleet/item-1.jpg" alt="item-1"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/item-2.jpg" alt="item-2"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/item-3.jpg" alt="item-3"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/item-1.jpg" alt="item-1"/></li>					
												</ul>
											</div>
										</div>
										<div class="thumbnail-slider">
											<div id="carousel-1" class="flexslider">
												<ul class="slides">
													<li><img src="./resources/assets/images/vehicles-fleet/thumb-item-1.jpg" alt="item-1"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/thumb-item-1.jpg" alt="item-1"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/thumb-item-1.jpg" alt="item-1"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/thumb-item-1.jpg" alt="item-1"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/thumb-item-1.jpg" alt="item-1"/></li>
												</ul>
											</div>
										</div>
									</div>
								</div>					
								<div class="col-md-5 vehicle-detail">
									<!-- Nav tabs -->
									<ul class="nav nav-tabs" role="tablist">
										<li role="presentation" class="active"><a href="#cab_details-1" role="tab" data-toggle="tab">Cab Details</a></li>
										<li role="presentation"><a href="#customer_feedback-1" role="tab" data-toggle="tab"> Driver Detail</a></li>
									</ul>
									<!-- Tab panes -->
									<div class="tab-content">
										<div role="tabpanel" class="tab-pane active" id="cab_details-1">
											<div class="tabe-content">
												<h3>Passenger Capacity <span>4 + 1 Driver</span></h3>
												<h3>Regular Fare <span>$6 / Km (Day Travel)</span></h3>
												<h3>Maximum Speed <span>60Km / hr - City Limit</span></h3>
												<h3>Availability <span>Offering Anytime</span></h3>
												<h3>Rating <span>
												<div class="rating">
													<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
												</div></span></h3>
											</div>
										</div>
										<div role="tabpanel" class="tab-pane" id="customer_feedback-1"> 
											<div class="tabe-content">
												<h3>Name <span>4 + 1 Driver</span></h3>
												<h3>Regular Fare <span>$6 / Km (Day Travel)</span></h3>
												<h3>Maximum Speed <span>60Km / hr - City Limit</span></h3>
												<h3>Availability <span>Offering Anytime</span></h3>
												<h3>Contract Details <span><a href="#">Contact Now</a></span></h3>
											</div>
										</div>
									</div>
								</div>
							</div><!-- Tabs /- -->
							
							<!-- ******************* SEDAN ********************* -->
							<div role="tabpanel" class="tab-pane fade" id="regular_rider">
								<div class="col-md-7 vehicle-slider no-padding">
									<div class="row">
										<div class="main-slider">
											<div id="slider-2" class="flexslider">
												<ul class="slides">
													<li><img src="./resources/assets/images/vehicles-fleet/item-1.jpg" alt="item-1"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/item-2.jpg" alt="item-2"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/item-3.jpg" alt="item-3"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/item-1.jpg" alt="item-1"/></li>					
												</ul>
											</div>
										</div>
										<div class="thumbnail-slider">
											<div id="carousel-2" class="flexslider">
												<ul class="slides">
													<li><img src="./resources/assets/images/vehicles-fleet/thumb-item-1.jpg" alt="item-1"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/thumb-item-1.jpg" alt="item-1"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/thumb-item-1.jpg" alt="item-1"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/thumb-item-1.jpg" alt="item-1"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/thumb-item-1.jpg" alt="item-1"/></li>
												</ul>
											</div>
										</div>
									</div>
								</div>					
								<div class="col-md-5 vehicle-detail">
									<!-- Nav tabs -->
									<ul class="nav nav-tabs" role="tablist">
										<li role="presentation" class="active"><a href="#cab_details-2" role="tab" data-toggle="tab">Cab Details</a></li>
										<li role="presentation"><a href="#customer_feedback-2" role="tab" data-toggle="tab"> Customer Feedback</a></li>
									</ul>
									<!-- Tab panes -->
									<div class="tab-content">
										<div role="tabpanel" class="tab-pane active" id="cab_details-2">
											<div class="tabe-content">
												<h3>Passenger Capacity <span>4 + 1 Driver</span></h3>
												<h3>Regular Fare <span>$6 / Km (Day Travel)</span></h3>
												<h3>Maximum Speed <span>60Km / hr - City Limit</span></h3>
												<h3>Availability <span>Offering Anytime</span></h3>
												<h3>Contract Details <span><a href="#">Contact Now</a></span></h3>
											</div>
										</div>
										<div role="tabpanel" class="tab-pane" id="customer_feedback-2"> 
											<div class="tabe-content">
												<h3>Passenger Capacity <span>4 + 1 Driver</span></h3>
												<h3>Regular Fare <span>$6 / Km (Day Travel)</span></h3>
												<h3>Maximum Speed <span>60Km / hr - City Limit</span></h3>
												<h3>Availability <span>Offering Anytime</span></h3>
												<h3>Contract Details <span><a href="#">Contact Now</a></span></h3>
											</div>
										</div>
									</div>
								</div>
							</div><!-- Tabs /- -->
							
							<!-- ******************* SUV / MPV ********************* -->
							<div role="tabpanel" class="tab-pane fade" id="airport_shuttle">
								<div class="col-md-7 vehicle-slider no-padding">
									<div class="row">
										<div class="main-slider">
											<div id="slider-3" class="flexslider">
												<ul class="slides">
													<li><img src="./resources/assets/images/vehicles-fleet/item-1.jpg" alt="item-1"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/item-2.jpg" alt="item-2"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/item-3.jpg" alt="item-3"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/item-1.jpg" alt="item-1"/></li>					
												</ul>
											</div>
										</div>
										<div class="thumbnail-slider">
											<div id="carousel-3" class="flexslider">
												<ul class="slides">
													<li><img src="./resources/assets/images/vehicles-fleet/thumb-item-1.jpg" alt="item-1"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/thumb-item-1.jpg" alt="item-1"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/thumb-item-1.jpg" alt="item-1"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/thumb-item-1.jpg" alt="item-1"/></li>
													<li><img src="./resources/assets/images/vehicles-fleet/thumb-item-1.jpg" alt="item-1"/></li>
												</ul>
											</div>
										</div>
									</div>
								</div>					
								<div class="col-md-5 vehicle-detail">
									<!-- Nav tabs -->
									<ul class="nav nav-tabs" role="tablist">
										<li role="presentation" class="active"><a href="#cab_details-3" role="tab" data-toggle="tab">Cab Details</a></li>
										<li role="presentation"><a href="#customer_feedback-3" role="tab" data-toggle="tab"> Customer Feedback</a></li>
									</ul>
									<!-- Tab panes -->
									<div class="tab-content">
										<div role="tabpanel" class="tab-pane active" id="cab_details-3">
											<div class="tabe-content">
												<h3>Passenger Capacity <span>4 + 1 Driver</span></h3>
												<h3>Regular Fare <span>$6 / Km (Day Travel)</span></h3>
												<h3>Maximum Speed <span>60Km / hr - City Limit</span></h3>
												<h3>Availability <span>Offering Anytime</span></h3>
												<h3>Contract Details <span><a href="#">Contact Now</a></span></h3>
											</div>
										</div>
										<div role="tabpanel" class="tab-pane" id="customer_feedback-3"> 
											<div class="tabe-content">
												<h3>Passenger Capacity <span>4 + 1 Driver</span></h3>
												<h3>Regular Fare <span>$6 / Km (Day Travel)</span></h3>
												<h3>Maximum Speed <span>60Km / hr - City Limit</span></h3>
												<h3>Availability <span>Offering Anytime</span></h3>
												<h3>Contract Details <span><a href="#">Contact Now</a></span></h3>
											</div>
										</div>
									</div>
								</div>
							</div><!-- Tabs /- -->	
							
						</div><!-- Tab Content /-  -->
					</div>
				</div>
			</div>
			<div class="section-padding"></div>	
		</section>
	
		<!-- ---------------------- Online Booking----------------------  -->
		<section id="book-taxi-online-form">
		<div class="container-fluid no-padding page-content book-taxi-online-form">
		<!-- Container -->
		<div class="container">		
			<!-- Blog Area -->
				<div class="section-header">
					<h3>Book Your Taxi Online</h3>
				</div>
			<div class="col-md-12 col-sm-12 col-xs-12 blog-area">				
				<!-- Online Booking Form -->
				<form class="online-booking-form row">
					<h4>Personal Details</h4>					
					
					<div class="form-group col-md-6 col-sm-12 col-xs-12">
						<label>Name</label>
						<input type="text" class="form-control" id="name" placeholder="Enter Your Name Here">
					</div>
					<div class="form-group col-md-6 col-sm-12 col-xs-12">
						<label>Phone Number</label>
						<input type="text" class="form-control" id="phone" placeholder="+(01) xxx - xxx - xx">
					</div>
					
					<div class="form-group col-md-6 col-sm-12 col-xs-12">
						<label>E-Mail</label>
						<input type="email" class="form-control" id="email" placeholder="Your E-Mail">
					</div>
					<div class="form-group col-md-6 col-sm-12 col-xs-12">
						<label>State</label>
						<select class="form-control">
							<option>Select Your State</option>
							<option>USA</option>
							<option>Florida</option>
						</select>
					</div>					
					
					<div class="form-group col-md-6 col-sm-12 col-xs-12">
						<div class="input-group col-md-12 col-sm-12">
							<label>City</label>
							<select class="form-control">
								<option>Select Your City</option>
								<option>America</option>
								<option>New York</option>
							</select>
						</div>
						<div class="input-group col-md-12 col-sm-12 col-xs-12">
							<label>Zip Code</label>
							<input type="text" class="form-control" id="zip_code" placeholder="Your Postal Code">
						</div>
					</div>
					<div class="form-group col-md-6 col-sm-12 col-xs-12">
						<label>Address</label>
						<textarea name="message" class="form-control" rows="5" placeholder="Your Address"></textarea>
					</div>
					
					
					<h4>Booking Datails</h4>
					<div class="form-group col-md-6 col-sm-12 col-xs-12">
						<label>Form</label>
						<input type="text" class="form-control" id="form" placeholder="place, City">
					</div>
					<div class="form-group col-md-6 col-sm-12 col-xs-12">
						<label>To</label>
						<input type="text" class="form-control" id="to" placeholder="place, City">
					</div>
					
					<div class="form-group col-md-6 col-sm-12 col-xs-12">
						<label>Taxi Type</label>
						<select class="form-control">
							<option>Select The Taxi Type</option>
							<option>SUV</option>
							<option>Sedan</option>
							<option>Limousine</option>
						</select>
					</div>
					<div class="form-group col-md-6 col-sm-12 col-xs-12">
						<label>Number Of Passengers</label>
						<select class="form-control">
							<option>Enter The Number of Passengers</option>
							<option>2</option>
							<option>3</option>
							<option>5</option>
						</select>
					</div>
					
					<div class="form-group col-md-6 col-sm-12 col-xs-12">
						<label>Pickup Address</label>
						<textarea name="message" class="form-control" rows="5" placeholder="Start Place Address"></textarea>
					</div>
					<div class="form-group col-md-6 col-sm-12 col-xs-12">
						<label>Drop Address</label>
						<textarea name="message" class="form-control" rows="5" placeholder="End Place Address"></textarea>
					</div>
					
					<div class="form-group col-md-6 col-sm-12 col-xs-12">
						<label>Payment Method</label>
						<select class="form-control">
							<option>Select Your payment Method</option>
							<option>Debit</option>
							<option>Credit</option>
							<option>Online</option>
						</select>
					</div>
					<div class="form-group col-md-12 col-sm-12 col-xs-12">
						<input type="checkbox"><span>I understand and agree with the Terms of Service and Cancellation / Refund policy</span>
					</div>
					<div class="form-group col-md-6 col-sm-12 col-xs-12">
						<button type="submit" class="btn">Book Your Trip</button>
					</div>
				</form><!-- Online Booking Form/- -->
			</div>
		</div><!-- Container/- -->
		<div class="section-padding"></div>
	</div><!-- Page Content/- -->
	</section>

	<!-- ---------------------- Contact us----------------------  -->
	<section id="contact-us">
		<footer class="footer-main">
			 <div class="container-fluid no-padding about-contact">
				<!-- Container -->
				<div class="container">	
					<div class="section-header">
						<h3>About / Contact Us</h3>
					</div>
					<div class="col-md-4 col-sm-6">
						<aside class="widget widget-subscribe">
							<div class="subscribe-box">
								<h4>Subscribe To Mail!</h4>
								<p>Get our Daily email n.ewsletter with Special Services, Updates, Offers and more</p>
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Email Address">
									<span class="input-group-btn">
										<button class="btn btn-default" type="button">SignUp</button>
									</span>
								</div><!-- /input-group -->
							</div>
							<ul>
								<li><a href="#"><img src="./resources/assets/images/icon/ftr-fb.png" alt="ftr" /></a></li>
								<li><a href="#"><img src="./resources/assets/images/icon/ftr-g+.png" alt="ftr" /></a></li>
								<li><a href="#"><img src="./resources/assets/images/icon/ftr-tumbler.png" alt="ftr" /></a></li>
								<li><a href="#"><img src="./resources/assets/images/icon/ftr-dribbble.png" alt="ftr" /></a></li>
								<li><a href="#"><img src="./resources/assets/images/icon/ftr-ln.png" alt="ftr" /></a></li>
								<li><a href="#"><img src="./resources/assets/images/icon/ftr-tw.png" alt="ftr" /></a></li>
							</ul>
						</aside>
					</div>
					<div class="col-md-4 col-sm-6">
						<aside class="widget widget-links">
							<h3 class="widget-title">We Glad To Offer</h3>
							<ul>
								<li><a href="#">24 / 7 Taxi Service To Any Where Around The City</a></li>
								<li><a href="#">Sending Taxi Booking Alert By SMS</a></li>
								<li><a href="#">GPS Tracking System For Location Guessing</a></li>
								<li><a href="#">Instant Printed Bills In Car On Departure</a></li>
								<li><a href="#">Magazine And News Papers For Reading On Ride</a></li>
								<li><a href="#">Credit And Debit Card Payment Available</a></li>
							</ul>
						</aside>
					</div>			
					<div class="col-md-4 col-sm-6">
						<aside class="widget widget-about">
							<h3 class="widget-title">about Us</h3>
							<p>Hello we are Comre. We are here to provide you the best offers through our coupons. Hello we are We are here to provide you coupons.</p>
							<ul>
								<li><img src="./resources/assets/images/icon/ftr-location.png" alt="Address" />A12 - Design Street, <span>Omaha, United States</span></li>
								<li><img src="./resources/assets/images/icon/ftr-customer.png" alt="Phone" /> Customer Support : <span>+ 124 45 76 678</span></li>
								<li><img src="./resources/assets/images/icon/ftr-email.png" alt="Mail" /><span>Email :</span><a href="mailto:mail@NationalCab.com"> mail@NationalCab.com</a></li>
							</ul>
						</aside>
					</div>
				</div><!-- Container /- -->
				<div class="bottom-footer container-fluid no-padding">
					<div class="container">
						<ul class="col-md-5 pull-left">
							<li><a href="#">Faq</a></li>
							<li><a href="#">News</a></li>
							<li><a href="#">Client Support</a></li>
						</ul>
						<div class="col-md-7 pull-right">
							<p class="copyright">copyrights &copy; 2017 Shavika Infotech (p). All rights reserved</p>
						</div>
					</div>
				</div>
			</div>	
		</footer>
	</section>
	</div><!-- Main Container -->

	<!-- ---------------------- Map modal----------------------  -->
	</section align="center">
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
<!--  <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>  -->

<!-- Library - FlexSlider v2.5.0 -->
<script defer src="<c:url value='/resources/assets/libraries/flexslider/jquery.flexslider.js'/>"></script>
<!-- Library - Theme JS -->
<script src="<c:url value='/resources/assets/js/functions.js'/>""></script>
<!-- Library - Theme JS -->
<script src="<c:url value='/resources/assets/js/taxis.app.js'/>""></script>

</body>
</html>