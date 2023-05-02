<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from askbootstrap.com/preview/groci/theme-three/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 10:00:27 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Askbootstrap">
<meta name="author" content="Askbootstrap">
<title>Groci - Organic Food & Grocery Market Template</title>

<link rel="icon" type="image/png" href="img/favicon.png">

<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<link href="/vendor/icons/css/materialdesignicons.min.css" media="all"
	rel="stylesheet" type="text/css" />

<link href="/vendor/select2/css/select2-bootstrap.css" />
<link href="/vendor/select2/css/select2.min.css" rel="stylesheet" />

<link href="/css/osahan.css" rel="stylesheet">

<link rel="stylesheet" href="/vendor/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="/vendor/owl-carousel/owl.theme.css">
</head>
<body>
	<div class="modal fade login-modal-main" id="bd-example-modal">
		<div class="modal-dialog modal-lg modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-body">
					<div class="login-modal">
						<div class="row">
							<div class="col-lg-6 pad-right-0">
								<div class="login-modal-left"></div>
							</div>
							<div class="col-lg-6 pad-left-0">
								<button type="button" class="close close-top-right"
									data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true"><i class="mdi mdi-close"></i></span> <span
										class="sr-only">Close</span>
								</button>
								<form>
									<div class="login-modal-right">

										<div class="tab-content">
											<div class="tab-pane active" id="login" role="tabpanel">
												<h5 class="heading-design-h5">Login to your account</h5>
												<form action="Login" method="POST">
												<fieldset class="form-group">
													<label>Enter Email/Mobile number</label> <input type="text"
														class="form-control" name="email"
														placeholder="Email Address">
												</fieldset>
												<fieldset class="form-group">
													<label>Enter Password</label> <input type="password"
														class="form-control" name="password"
														placeholder="********">
												</fieldset>
												<fieldset class="form-group">
													<button type="submit"
														class="btn btn-lg btn-secondary btn-block">Enter
														to your account</button>
												</fieldset>
												
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="customCheck1"> <label
														class="custom-control-label" for="customCheck1">Remember
														me</label>
												</div>
												</form>
											</div>
											
											<div class="tab-pane" id="register" role="tabpanel">
												<h5 class="heading-design-h5">Register Now!</h5>
												<form action="Registration" method="POST">
												<fieldset class="form-group">
													<label>Enter Email</label> <input type="text" name="email"
														class="form-control" placeholder="Email Address">
												</fieldset>
												<fieldset class="form-group">
													<label>Enter Password</label> <input type="password" name="password"
														class="form-control" placeholder="********">
												</fieldset>
												<fieldset class="form-group">
													<label>Enter Confirm Password </label> <input
														type="password" class="form-control" name="cpassword"
														placeholder="********">
												</fieldset>
												<fieldset class="form-group">
													<button type="submit"
														class="btn btn-lg btn-secondary btn-block">Create
														Your Account</button>
												</fieldset>
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="customCheck2" required> <label
														class="custom-control-label" for="customCheck2">I
														Agree with <a href="#">Term and Conditions</a>
													</label>
												</div>
												</form>
											</div>
										</div>
										<div class="clearfix"></div>
										<div class="text-center login-footer-tab">
											<ul class="nav nav-tabs" role="tablist">
												<li class="nav-item"><a class="nav-link active"
													data-toggle="tab" href="#login" role="tab"><i
														class="mdi mdi-lock"></i> LOGIN</a></li>
												<li class="nav-item"><a class="nav-link"
													data-toggle="tab" href="#register" role="tab"><i
														class="mdi mdi-pencil"></i> REGISTER</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="navbar-top pt-2 pb-2">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<a href="#" class="mb-0 text-white"> 20% cashback for all users
						| Code: <strong><span class="text-light">OGOFERS13
								<span class="mdi mdi-tag-faces"></span>
						</span> </strong>
					</a>
				</div>
				<div class="col-md-6 text-right">
					<a href="#" class="text-white"><i aria-hidden="true"
						class="mdi mdi-map-marker-circle"></i> New York</a> <a href="#"
						data-target="#bd-example-modal" data-toggle="modal"
						class="text-white ml-3 mr-3"><i class="mdi mdi-lock"></i> Sign
						In</a> <a href="#" data-target="#bd-example-modal" data-toggle="modal"
						class="text-white"><i class="mdi mdi-account-circle"></i> Sign
						Up</a>
				</div>
			</div>
		</div>
	</div>
	<nav
		class="navbar navbar-light navbar-expand-lg bg-dark bg-faded osahan-menu">
		<div class="container">
			<a class="navbar-brand" href="index"> <img src="img/logo.png"
				alt="logo">
			</a>
			<button class="navbar-toggler navbar-toggler-white" type="button"
				data-toggle="collapse" data-target="#navbarText"
				aria-controls="navbarText" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="navbar-collapse" id="navbarNavDropdown ">
				<div
					class="navbar-nav mr-auto mt-5 mt-lg-2 margin-auto top-categories-search-main">
					<div class="top-categories-search">
						<div class="input-group">
							<span class="input-group-btn categories-dropdown"> <select
								class="form-control-select">
									<option selected="selected">Your City</option>
									<option value="0">New Delhi</option>
									<option value="2">Bengaluru</option>
									<option value="3">Hyderabad</option>
									<option value="4">Kolkata</option>
							</select>
							</span> <input class="form-control"
								placeholder="Search products in Your City"
								aria-label="Search products in Your City" type="text"> <span
								class="input-group-btn">
								<button class="btn btn-secondary" type="button">
									<i class="mdi mdi-file-find"></i> Search
								</button>
							</span>
						</div>
					</div>
				</div>
				<div class="my-2 my-lg-0">
					<ul class="list-inline main-nav-right">
						<li class="list-inline-item cart-btn"><a href="#"
							data-toggle="offcanvas" class="btn btn-link border-none"><i
								class="mdi mdi-cart"></i> My Cart <small class="cart-value">5</small></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<nav
		class="navbar navbar-expand-lg navbar-light osahan-menu-2 pad-none-mobile">
		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="navbarText">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0 margin-auto">
					<li class="nav-item"><a class="nav-link shop" href="index"><span
							class="mdi mdi-store"></span> Super Store</a></li>
					<li class="nav-item"><a href="index" class="nav-link">Home</a>
					</li>
					<li class="nav-item"><a href="about" class="nav-link">About
							Us</a></li>
					<li class="nav-item"><a class="nav-link" href="shop">Fruits
							& Vegetables</a></li>
					<li class="nav-item"><a class="nav-link" href="shop">Grocery
							& Staples</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Pages </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="shop"><i
								class="mdi mdi-chevron-right" aria-hidden="true"></i> Shop Grid</a>
							<a class="dropdown-item" href="single"><i
								class="mdi mdi-chevron-right" aria-hidden="true"></i> Single
								Product</a> <a class="dropdown-item" href="cart"><i
								class="mdi mdi-chevron-right" aria-hidden="true"></i> Shopping
								Cart</a> <a class="dropdown-item" href="checkout"><i
								class="mdi mdi-chevron-right" aria-hidden="true"></i> Checkout</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> My Account </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="my-profile"><i
								class="mdi mdi-chevron-right" aria-hidden="true"></i> My Profile</a>
							<a class="dropdown-item" href="my-address"><i
								class="mdi mdi-chevron-right" aria-hidden="true"></i> My Address</a>
							<a class="dropdown-item" href="wishlist"><i
								class="mdi mdi-chevron-right" aria-hidden="true"></i> Wish List
							</a> <a class="dropdown-item" href="orderlist"><i
								class="mdi mdi-chevron-right" aria-hidden="true"></i> Order List</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Blog Page </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="blog"><i
								class="mdi mdi-chevron-right" aria-hidden="true"></i> Blog</a> <a
								class="dropdown-item" href="blog-detail"><i
								class="mdi mdi-chevron-right" aria-hidden="true"></i> Blog
								Detail</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> More Pages </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="about"><i
								class="mdi mdi-chevron-right" aria-hidden="true"></i> About Us</a> <a
								class="dropdown-item" href="contact"><i
								class="mdi mdi-chevron-right" aria-hidden="true"></i> Contact Us</a>
							<a class="dropdown-item" href="faq"><i
								class="mdi mdi-chevron-right" aria-hidden="true"></i> FAQ </a> <a
								class="dropdown-item" href="not-found"><i
								class="mdi mdi-chevron-right" aria-hidden="true"></i> 404 Error</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="contact">Contact</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<section class="section-padding bg-dark inner-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<h1 class="mt-0 mb-3 text-white">About Us</h1>
					<div class="breadcrumbs">
						<p class="mb-0 text-white">
							<a class="text-white" href="#">Home</a> / <span
								class="text-white">About Us</span>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="section-padding bg-white">
		<div class="container">
			<div class="row">
				<div class="pl-4 col-lg-5 col-md-5 pr-4">
					<img class="rounded img-fluid" src="img/about.jpg"
						alt="Card image cap">
				</div>
				<div class="col-lg-6 col-md-6 pl-5 pr-5">
					<h2 class="mt-5 mb-5 text-secondary">Save more with GO! We
						give you the lowest prices on all your grocery needs.</h2>
					<h5 class="mt-2">Our Vision</h5>
					<p>It is a long established fact that a reader will be
						distracted by the readable content of a page when looking at its
						layout. The point of using Lorem Ipsum is that it has a
						more-or-less normal distribution of letters, as opposed to using
						'Content here,</p>
					<h5 class="mt-4">Our Goal</h5>
					<p>When looking at its layout. The point of using Lorem Ipsum
						is that it has a more-or-less normal distribution of letters, as
						opposed to using 'Content here, Lorem Ipsum has been the
						industry's standard dummy text ever since.</p>
				</div>
			</div>
		</div>
	</section>


	<section class="section-padding">
		<div class="section-title text-center mb-5">
			<h2>What We Provide?</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<div class="mt-4 mb-4">
						<i class="text-success mdi mdi-shopping mdi-48px"></i>
					</div>
					<h5 class="mt-3 mb-3 text-secondary">Best Prices & Offers</h5>
					<p>There are many variations of passages of Lorem Ipsum
						available, but the majority have suffered alteration in some form,
						by injected humour.</p>
				</div>
				<div class="col-lg-4 col-md-4">
					<div class="mt-4 mb-4">
						<i class="text-success mdi mdi-earth mdi-48px"></i>
					</div>
					<h5 class="mb-3 text-secondary">Wide Assortment</h5>
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting industry. Lorem Ipsum has been the industry's standard
						dummy text eve.</p>
				</div>
				<div class="col-lg-4 col-md-4">
					<div class="mt-4 mb-4">
						<i class="text-success mdi mdi-refresh mdi-48px"></i>
					</div>
					<h5 class="mt-3 mb-3 text-secondary">Easy Returns</h5>
					<p>It is a long established fact that a reader will be
						distracted by the readable content of a page when looking at its
						layout. The point of using.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<div class="mt-4 mb-4">
						<i class="text-success mdi mdi-truck-fast mdi-48px"></i>
					</div>
					<h5 class="mb-3 text-secondary">Free & Next Day Delivery</h5>
					<p>Contrary to popular belief, Lorem Ipsum is not simply random
						text. It has roots in a piece of classical Latin literature from
						45 BC.</p>
				</div>
				<div class="col-lg-4 col-md-4">
					<div class="mt-4 mb-4">
						<i class="text-success mdi mdi-basket mdi-48px"></i>
					</div>
					<h5 class="mt-3 mb-3 text-secondary">100% Satisfaction
						Guarantee</h5>
					<p>There are many variations of passages of Lorem Ipsum
						available, but the majority have suffered alteration in some form,
						by injected humour.</p>
				</div>
				<div class="col-lg-4 col-md-4">
					<div class="mt-4 mb-4">
						<i class="text-success mdi mdi mdi-tag-heart mdi-48px"></i>
					</div>
					<h5 class="mt-3 mb-3 text-secondary">Great Daily Deals
						Discount</h5>
					<p>It is a long established fact that a reader will be
						distracted by the readable content of a page when looking at its
						layout. The point of using.</p>
				</div>
			</div>
		</div>
	</section>


	<section class="section-padding bg-white">
		<div class="section-title text-center mb-5">
			<h2>Our Team</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<div class="team-card text-center">
						<img class="img-fluid mb-4" src="img/user/1.jpg" alt="">
						<p class="mb-4">Lorem Ipsum is simply dummy text of the
							printing and typesetting industry. Lorem Ipsum has been.</p>
						<h6 class="mb-0 text-success">- Stave Martin</h6>
						<small>Manager</small>
					</div>
				</div>
				<div class="col-lg-4 col-md-4">
					<div class="team-card text-center">
						<img class="img-fluid mb-4" src="img/user/2.jpg" alt="">
						<p class="mb-4">Lorem Ipsum is simply dummy text of the
							printing and typesetting industry. Lorem Ipsum has been.</p>
						<h6 class="mb-0 text-success">- Mark Smith</h6>
						<small>Designer</small>
					</div>
				</div>
				<div class="col-lg-4 col-md-4">
					<div class="team-card text-center">
						<img class="img-fluid mb-4" src="img/user/3.jpg" alt="">
						<p class="mb-4">Lorem Ipsum is simply dummy text of the
							printing and typesetting industry. Lorem Ipsum has been.</p>
						<h6 class="mb-0 text-success">- Ryan Printz</h6>
						<small>Marketing</small>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="section-padding footer bg-white border-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<h4 class="mb-5 mt-0">
						<a class="logo" href="index.html"><img
							src="img/logo-footer.png" alt="Groci"></a>
					</h4>
					<p class="mb-0">
						<a class="text-dark" href="#"><i class="mdi mdi-phone"></i>
							+61 525 240 310</a>
					</p>
					<p class="mb-0">
						<a class="text-dark" href="#"><i
							class="mdi mdi-cellphone-iphone"></i> 12345 67890, 56847-98562</a>
					</p>
					<p class="mb-0">
						<a class="text-success" href="#"><i class="mdi mdi-email"></i>
							<span class="__cf_email__"
							data-cfemail="036a626e6c70626b626d43646e626a6f2d606c6e">[email&#160;protected]</span></a>
					</p>
					<p class="mb-0">
						<a class="text-primary" href="#"><i class="mdi mdi-web"></i>
							www.askbootstrap.com</a>
					</p>
				</div>
				<div class="col-lg-2 col-md-2">
					<h6 class="mb-4">TOP CITIES</h6>
					<ul>
						<li><a href="#">New Delhi</a></li>
						<li><a href="#">Bengaluru</a></li>
						<li><a href="#">Hyderabad</a></li>
						<li><a href="#">Kolkata</a></li>
						<li><a href="#">Gurugram</a></li>
						<ul>
				</div>
				<div class="col-lg-2 col-md-2">
					<h6 class="mb-4">CATEGORIES</h6>
					<ul>
						<li><a href="#">Vegetables</a></li>
						<li><a href="#">Grocery & Staples</a></li>
						<li><a href="#">Breakfast & Dairy</a></li>
						<li><a href="#">Soft Drinks</a></li>
						<li><a href="#">Biscuits & Cookies</a></li>
						<ul>
				</div>
				<div class="col-lg-2 col-md-2">
					<h6 class="mb-4">ABOUT US</h6>
					<ul>
						<li><a href="#">Company Information</a></li>
						<li><a href="#">Careers</a></li>
						<li><a href="#">Store Location</a></li>
						<li><a href="#">Affillate Program</a></li>
						<li><a href="#">Copyright</a></li>
						<ul>
				</div>
				<div class="col-lg-3 col-md-3">
					<h6 class="mb-4">Download App</h6>
					<div class="app">
						<a href="#"><img src="img/google.png" alt=""></a> <a
							href="#"><img src="img/apple.png" alt=""></a>
					</div>
					<h6 class="mb-3 mt-4">GET IN TOUCH</h6>
					<div class="footer-social">
						<a class="btn-facebook" href="#"><i class="mdi mdi-facebook"></i></a>
						<a class="btn-twitter" href="#"><i class="mdi mdi-twitter"></i></a>
						<a class="btn-instagram" href="#"><i class="mdi mdi-instagram"></i></a>
						<a class="btn-whatsapp" href="#"><i class="mdi mdi-whatsapp"></i></a>
						<a class="btn-messenger" href="#"><i
							class="mdi mdi-facebook-messenger"></i></a> <a class="btn-google"
							href="#"><i class="mdi mdi-google"></i></a>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="pt-4 pb-4 footer-bottom">
		<div class="container">
			<div class="row no-gutters">
				<div class="col-lg-6 col-sm-6">
					<p class="mt-1 mb-0">
						&copy; Copyright 2020 <strong class="text-dark">Groci</strong>.
						All Rights Reserved<br> <small class="mt-0 mb-0">Made
							with <i class="mdi mdi-heart text-danger"></i> by <a
							href="https://askbootstrap.com/" target="_blank"
							class="text-primary">Ask Bootstrap</a>
						</small>
					</p>
				</div>
				<div class="col-lg-6 col-sm-6 text-right">
					<img alt="osahan logo" src="img/payment_methods.png">
				</div>
			</div>
		</div>
	</section>

	<div class="cart-sidebar">
		<div class="cart-sidebar-header">
			<h5>
				My Cart <span class="text-success">(5 item)</span> <a
					data-toggle="offcanvas" class="float-right" href="#"><i
					class="mdi mdi-close"></i> </a>
			</h5>
		</div>
		<div class="cart-sidebar-body">
			<div class="cart-list-product">
				<a class="float-right remove-cart" href="#"><i
					class="mdi mdi-close"></i></a> <img class="img-fluid"
					src="img/item/11.jpg" alt=""> <span
					class="badge badge-success">50% OFF</span>
				<h5>
					<a href="#">Product Title Here</a>
				</h5>
				<h6>
					<strong><span class="mdi mdi-approval"></span> Available
						in</strong> - 500 gm
				</h6>
				<p class="offer-price mb-0">
					$450.99 <i class="mdi mdi-tag-outline"></i> <span
						class="regular-price">$800.99</span>
				</p>
			</div>
			<div class="cart-list-product">
				<a class="float-right remove-cart" href="#"><i
					class="mdi mdi-close"></i></a> <img class="img-fluid"
					src="img/item/7.jpg" alt=""> <span
					class="badge badge-success">50% OFF</span>
				<h5>
					<a href="#">Product Title Here</a>
				</h5>
				<h6>
					<strong><span class="mdi mdi-approval"></span> Available
						in</strong> - 500 gm
				</h6>
				<p class="offer-price mb-0">
					$450.99 <i class="mdi mdi-tag-outline"></i> <span
						class="regular-price">$800.99</span>
				</p>
			</div>
			<div class="cart-list-product">
				<a class="float-right remove-cart" href="#"><i
					class="mdi mdi-close"></i></a> <img class="img-fluid"
					src="img/item/9.jpg" alt=""> <span
					class="badge badge-success">50% OFF</span>
				<h5>
					<a href="#">Product Title Here</a>
				</h5>
				<h6>
					<strong><span class="mdi mdi-approval"></span> Available
						in</strong> - 500 gm
				</h6>
				<p class="offer-price mb-0">
					$450.99 <i class="mdi mdi-tag-outline"></i> <span
						class="regular-price">$800.99</span>
				</p>
			</div>
			<div class="cart-list-product">
				<a class="float-right remove-cart" href="#"><i
					class="mdi mdi-close"></i></a> <img class="img-fluid"
					src="img/item/1.jpg" alt=""> <span
					class="badge badge-success">50% OFF</span>
				<h5>
					<a href="#">Product Title Here</a>
				</h5>
				<h6>
					<strong><span class="mdi mdi-approval"></span> Available
						in</strong> - 500 gm
				</h6>
				<p class="offer-price mb-0">
					$450.99 <i class="mdi mdi-tag-outline"></i> <span
						class="regular-price">$800.99</span>
				</p>
			</div>
			<div class="cart-list-product">
				<a class="float-right remove-cart" href="#"><i
					class="mdi mdi-close"></i></a> <img class="img-fluid"
					src="img/item/2.jpg" alt=""> <span
					class="badge badge-success">50% OFF</span>
				<h5>
					<a href="#">Product Title Here</a>
				</h5>
				<h6>
					<strong><span class="mdi mdi-approval"></span> Available
						in</strong> - 500 gm
				</h6>
				<p class="offer-price mb-0">
					$450.99 <i class="mdi mdi-tag-outline"></i> <span
						class="regular-price">$800.99</span>
				</p>
			</div>
		</div>
		<div class="cart-sidebar-footer">
			<div class="cart-store-details">
				<p>
					Sub Total <strong class="float-right">$900.69</strong>
				</p>
				<p>
					Delivery Charges <strong class="float-right text-danger">+
						$29.69</strong>
				</p>
				<h6>
					Your total savings <strong class="float-right text-danger">$55
						(42.31%)</strong>
				</h6>
			</div>
			<a href="checkout.html"><button
					class="btn btn-secondary btn-lg btn-block text-left" type="button">
					<span class="float-left"><i class="mdi mdi-cart-outline"></i>
						Proceed to Checkout </span><span class="float-right"><strong>$1200.69</strong>
						<span class="mdi mdi-chevron-right"></span></span>
				</button></a>
		</div>
	</div>

	<script data-cfasync="false" src="/cdn-cgi/scripts/email-decode.min.js"></script>
	<script src="/vendor/jquery/jquery.min.js"
		type="a6b9bdaeeffbd1dee17f1fc6-text/javascript"></script>
	<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"
		type="a6b9bdaeeffbd1dee17f1fc6-text/javascript"></script>

	<script src="/vendor/select2/js/select2.min.js"
		type="a6b9bdaeeffbd1dee17f1fc6-text/javascript"></script>

	<script src="/vendor/owl-carousel/owl.carousel.js"
		type="a6b9bdaeeffbd1dee17f1fc6-text/javascript"></script>

	<script src="/js/custom.js"
		type="a6b9bdaeeffbd1dee17f1fc6-text/javascript"></script>
	<script src="/cdn-cgi/scripts/rocket-loader.min.js"
		data-cf-settings="a6b9bdaeeffbd1dee17f1fc6-|49" defer=""></script>
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194"
		integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw=="
		data-cf-beacon='{"rayId":"6e510ad1bdf185fa","version":"2021.12.0","r":1,"token":"dd471ab1978346bbb991feaa79e6ce5c","si":100}'
		crossorigin="anonymous"></script>
</body>

<!-- Mirrored from askbootstrap.com/preview/groci/theme-three/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 10:00:29 GMT -->
</html>
