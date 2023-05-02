<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from askbootstrap.com/preview/groci/theme-three/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 10:00:21 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Askbootstrap">
<meta name="author" content="Askbootstrap">
<title>Groci - Organic Food & Grocery Market Template</title>

<link rel="icon" type="image/png" href="/img/favicon.png">

<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<link href="/vendor/icons/css/materialdesignicons.min.css" media="all"
	rel="stylesheet" type="text/css" />

<link href="/vendor/select2/css/select2-bootstrap.css" />
<link href="/vendor/select2/css/select2.min.css" rel="stylesheet" />

<link href="/css/osahan.css" rel="stylesheet">

<link rel="stylesheet" href="/vendor/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="/vendor/owl-carousel/owl.theme.css">
<script src="js/Jquery.min.js"></script>
</head>
<body>

    <script>
  $(document).ready(function() {
   
    $("#uniquecart").click(function(e){
    	var user_id = '${customer_id}';
    	if(user_id != '') {
    		user_id ="/"  + user_id; 
    	
    	URL = "http://localhost:8080/api/cartdata" + user_id
        	 $.ajax({
    	        url: URL
    	    }).then(function(result) {
    	    	$("#cartbody").empty();
    	    	var total_price = 0;
    	    	 for (let i =0; i<result.length; i++)
     	        {
     	           var product = " <div class='cart-list-product'>" ;
 				   product += "<a class='float-right remove-cart' href='#'>" ;
 				   product += "</a> " ;
 				   product += "<img class='img-fluid' src=data:image/jpeg;base64,"+   result[i].image +">";
 				   if(result[i].discount > 0){
 				   product += "<span class='badge badge-success'>"+ result[i].discount + " OFF</span> <h5> " ; }
 				   product += "<a href='#'>"+result[i].name + "</a> </h5> " ;
 				   product += "<h6> <strong><span class='mdi mdi-approval'></span> Available in</strong> - "+ result[i].available_in + "</h6> " ;
 				   if(result[i].discount > 0){
 					   product += "<p class='offer-price mb-0'>" + (parseInt(result[i].price)- ((parseInt(result[i].price))*0.01*(parseInt(result[i].discount)))) + "<i class='mdi mdi-tag-outline'></i>" ;
 	 				   product += "<span  class='regular-price'>" + parseInt(result[i].price) + "</span> </p> </div> " ;
 	 				  
 				   }
 				   else{
 					   
 				   product += "<p class='offer-price mb-0'><b>" + (parseInt(result[i].price) ) + "</b></p> </div>" ;
 				   
 				   }
 				   
 				   $("#cartbody").append(product);
     	    	 } 
    	      });
    	}
    	else{
    		alert("First You Have To Login");
    		
    	}
    });
});
  </script>
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
				
				</div>
				<div class="col-md-6 text-right">
					 	 <a href="#"
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
				
				</div>
				<div class="my-2 my-lg-0">
					<ul class="list-inline main-nav-right">
						<li class="list-inline-item cart-btn" id="uniquecart"><a href="#"
							data-toggle="offcanvas" class="btn btn-link border-none"><i
								class="mdi mdi-cart"></i> My Cart </a>
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
					
					<li class="nav-item"><a class="nav-link" href="shop/Fruits/">Fruits
							& Vegetables</a></li>
					<li class="nav-item"><a class="nav-link" href="shop/Grocery/">Grocery
							& Staples</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Pages </a>
						<div class="dropdown-menu">
						
					 <a class="dropdown-item" href="cart"><i
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
							<a class="dropdown-item" href="orderlist"><i
								class="mdi mdi-chevron-right" aria-hidden="true"></i> Order List</a>
						</div></li>
			
					
					
				</ul>
			</div>
		</div>
	</nav>
	<section
		class="carousel-slider-main text-center border-top border-bottom bg-white">
		<div class="owl-carousel owl-carousel-slider">
			<div class="item">
				<a href="shop.html"><img class="img-fluid"
					src="img/slider/slider1.jpg" alt="First slide"></a>
			</div>
			<div class="item">
				<a href="shop.html"><img class="img-fluid"
					src="img/slider/slider2.jpg" alt="First slide"></a>
			</div>
			<div class="item">
				<a href="shop.html"><img class="img-fluid"
					src="img/slider/slider1.jpg" alt="First slide"></a>
			</div>
			<div class="item">
				<a href="shop.html"><img class="img-fluid"
					src="img/slider/slider2.jpg" alt="First slide"></a>
			</div>
		</div>
	</section>
	<section class="top-category section-padding">
		<div class="container">
			<div class="owl-carousel owl-carousel-category">
				<div class="item">
					<div class="category-item">
						<a href="shop/Fruits/"> <img class="img-fluid"
							src="img/small/1.jpg" alt="">
							<h6>Fruits & Vegetables</h6>
							<p>${fruits} Items</p>
						</a>
					</div>
				</div>
				<div class="item">
					<div class="category-item">
						<a href="shop/Grocery/"> <img class="img-fluid"
							src="img/small/2.jpg" alt="">
							<h6>Grocery & Staples</h6>
							<p>${grocery } Items</p>
						</a>
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
				My Cart <span class="text-success"></span> <a
					data-toggle="offcanvas" class="float-right" href="#"><i
					class="mdi mdi-close"></i> </a>
			</h5>
		</div>
		<div class="cart-sidebar-body" id="cartbody">
			
		</div>
		<div class="cart-sidebar-footer " style="box-sizing:border-box; ">
			<div class="cart-store-details" id="total_price_product">
				
				
			</div>
			<a href="checkout"><button
					class="btn btn-secondary btn-lg btn-block text-left" type="button">
					<span class="float-left"><i class="mdi mdi-cart-outline"></i>
						Proceed to Checkout </span><span class="float-right">
						<span class="mdi mdi-chevron-right"></span></span>
				</button></a>
		</div>
	</div>

	<script data-cfasync="false" src="/cdn-cgi/scripts/email-decode.min.js"></script>
	<script src="/vendor/jquery/jquery.min.js"
		type="7d2397f10bbd3a605ba57f43-text/javascript"></script>
	<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"
		type="7d2397f10bbd3a605ba57f43-text/javascript"></script>

	<script src="/vendor/select2/js/select2.min.js"
		type="7d2397f10bbd3a605ba57f43-text/javascript"></script>

	<script src="/vendor/owl-carousel/owl.carousel.js"
		type="7d2397f10bbd3a605ba57f43-text/javascript"></script>

	<script src="/js/custom.js"
		type="7d2397f10bbd3a605ba57f43-text/javascript"></script>
	<script src="/cdn-cgi/scripts/rocket-loader.min.js"
		data-cf-settings="7d2397f10bbd3a605ba57f43-|49" defer=""></script>
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194"
		integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw=="
		data-cf-beacon='{"rayId":"6e510acd89dd85fa","version":"2021.12.0","r":1,"token":"dd471ab1978346bbb991feaa79e6ce5c","si":100}'
		crossorigin="anonymous"></script>
</body>

<!-- Mirrored from askbootstrap.com/preview/groci/theme-three/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 10:00:27 GMT -->
</html>
