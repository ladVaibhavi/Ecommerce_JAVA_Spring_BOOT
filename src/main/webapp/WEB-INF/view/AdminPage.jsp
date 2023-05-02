<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from askbootstrap.com/preview/groci/theme-three/shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 09:59:57 GMT -->

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="Askbootstrap" />
<meta name="author" content="Askbootstrap" />
<title>Groci - Organic Food & Grocery Market Template</title>

<link rel="icon" type="image/png" href="img/favicon.png" />

<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

<link href="/vendor/icons/css/materialdesignicons.min.css" media="all"
	rel="stylesheet" type="text/css" />

<link href="/vendor/select2/css/select2-bootstrap.css" />
<link href="/vendor/select2/css/select2.min.css" rel="stylesheet" />

<link href="/css/osahan.css" rel="stylesheet" />

<link rel="stylesheet" href="/vendor/owl-carousel/owl.carousel.css" />
<link rel="stylesheet" href="/vendor/owl-carousel/owl.theme.css" />
<script src="/js/Jquery.min.js"></script>
</head>

<body>
    <script>
  $(document).ready(function() {
   
    
    	
    	URL = "http://localhost:8080/actuator/health"
        	 $.ajax({
    	        url: URL
    	    }).then(function(result) {
    	    	
 				   $("#db").append(result.components.db.status);
     	    	 
    	      });
    	
    	URL = "http://localhost:8080/actuator/metrics/tomcat.sessions.active.current"
       	 $.ajax({
   	        url: URL
   	    }).then(function(result) {
   	    	
			  $("#activecustomer").append(result.measurements[0].value);
    	    	 
   	      });
    	
    	URL = "http://localhost:8080/api/total-products"
          	 $.ajax({
      	        url: URL
      	    }).then(function(result) {
      	    	
   			  $("#total_products").append(result);
       	    	 
      	      });
    	
    	URL = "http://localhost:8080/api/total-customer"
          	 $.ajax({
      	        url: URL
      	    }).then(function(result) {
      	    	
   			  $("#total_customer").append(result);
       	    	 
      	      });
    	
    	URL = "http://localhost:8080/api/total-orders"
          	 $.ajax({
      	        url: URL
      	    }).then(function(result) {
      	    	
   			  $("#total_orders").append(result);
       	    	 
      	      });
    	
    	URL = "http://localhost:8080/api/total-out-of-stock-products"
          	 $.ajax({
      	        url: URL
      	    }).then(function(result) {
      	    	
   			  $("#total_out_products").append(result);
       	    	 
      	      });
    	
});
  </script>

	<nav
		class="navbar navbar-light navbar-expand-lg bg-dark bg-faded osahan-menu">
		<div class="container">
			<a class="navbar-brand" href="index.html"> <img
				src="/img/logo.png" alt="logo" />
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
					<div class="top-categories-search"></div>
				</div>
				<div class="my-2 my-lg-0">
					<ul class="list-inline main-nav-right">
						<li class="list-inline-item cart-btn"><a href="#"
							data-toggle="offcanvas" class="btn btn-link border-none"
							style="font-size: medium">Welcome Admin</a></li>
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
					<li class="nav-item"><a class="nav-link shop"
						href="AdminPage"><span class="mdi mdi-store"></span>Home Page</a>
					</li>
					<li class="nav-item"><a href="ViewProduct/" class="nav-link">Product
							List</a></li>
					<li class="nav-item"><a class="nav-link" href="product">Add
							New Product</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<section
		class="pt-3 pb-3 page-info section-padding border-bottom bg-white">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<a href="#"><strong><span class="mdi mdi-home"></span>Admin</strong></a>
					<span class="mdi mdi-chevron-right"></span> <a href="#">DashBord	</a>
				</div>
			</div>
		</div>
	</section>
	<section class="shop-list section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="shop-head">
						<div class="btn-group float-right mt-2"></div>
						<div class="row">
							<div class="col-md-4 pmb-3">
								<div class="product">
										<div class="product-body">
											<h5>DataBase Health</h5>
										</div>
										<hr>
										<div class="product-body" style="margin-top:20px;">
											<h5 id="db"></h5>	
										</div>
								</div>
							</div>
							<div class="col-md-4 pmb-3">
								<div class="product">
										<div class="product-body">
											<h5>Total Customer</h5>
										</div>
										<hr>
										<div class="product-body" style="margin-top:20px;">
											<h5 id="total_customer"></h5>	
										</div>
								</div>
							</div>
							<div class="col-md-4 pmb-3">
								<div class="product">
										<div class="product-body">
											<h5>Currently Active Customers</h5>
										</div>
										<hr>
										<div class="product-body" style="margin-top:20px;">
											<h5 id="activecustomer"></h5>	
										</div>
								</div>
							</div>
							<div class="col-md-4 pmb-3">
								<div class="product">
										<div class="product-body">
											<h5>Total Products</h5>
										</div>
										<hr>
										<div class="product-body" style="margin-top:20px;">
											<h5 id="total_products"></h5>	
										</div>
								</div>
							</div>
							<div class="col-md-4 pmb-3">
								<div class="product">
										<div class="product-body">
											<h5>Out of Stock Products</h5>
										</div>
										<hr>
										<div class="product-body" style="margin-top:20px;">
											<h5 id="total_out_products"></h5>	
										</div>
								</div>
							</div>
							<div class="col-md-4 pmb-3">
								<div class="product">
										<div class="product-body">
											<h5>Total Orders</h5>
										</div>
										<hr>
										<div class="product-body" style="margin-top:20px;">
											<h5 id="total_orders" ></h5>	
										</div>
								</div>
							</div>
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
						All Rights Reserved<br />
					</p>
				</div>
			</div>
		</div>
	</section>



	<script data-cfasync="false" src="/cdn-cgi/scripts/email-decode.min.js"></script>
	<script src="/vendor/jquery/jquery.min.js"
		type="cba74e1b281d116697cb4cce-text/javascript"></script>
	<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"
		type="cba74e1b281d116697cb4cce-text/javascript"></script>

	<script src="/vendor/select2/js/select2.min.js"
		type="cba74e1b281d116697cb4cce-text/javascript"></script>

	<script src="/vendor/owl-carousel/owl.carousel.js"
		type="cba74e1b281d116697cb4cce-text/javascript"></script>

	<script src="/js/custom.js"
		type="cba74e1b281d116697cb4cce-text/javascript"></script>
	<script src="/cdn-cgi/scripts/rocket-loader.min.js"
		data-cf-settings="cba74e1b281d116697cb4cce-|49" defer=""></script>
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194"
		integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw=="
		data-cf-beacon='{"rayId":"6e510ab2286f6ec2","version":"2021.12.0","r":1,"token":"dd471ab1978346bbb991feaa79e6ce5c","si":100}'
		crossorigin="anonymous"></script>
</body>

<!-- Mirrored from askbootstrap.com/preview/groci/theme-three/shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 10:00:15 GMT -->

</html>