
<!DOCTYPE html>
<html lang="en">
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Mirrored from askbootstrap.com/preview/groci/theme-three/orderlist.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 10:00:29 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Askbootstrap">
<meta name="author" content="Askbootstrap">
<title>Groci - Organic Food & Grocery Market Template</title>

<link rel="icon" type="image/png" href="img/favicon.png">

<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<link href="vendor/icons/css/materialdesignicons.min.css" media="all"
	rel="stylesheet" type="text/css" />

<link href="vendor/select2/css/select2-bootstrap.css" />
<link href="vendor/select2/css/select2.min.css" rel="stylesheet" />

<link href="css/osahan.css" rel="stylesheet">

<link rel="stylesheet" href="vendor/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="vendor/owl-carousel/owl.theme.css">
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
	<div class="navbar-top pt-2 pb-2">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
				
				</div>
				<div class="col-md-6 text-right">
					 <a href="logout" class="text-white"><i
						class="mdi mdi-lock"></i> Logout</a>
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
						
						</div>
					</div>
				</div>
				<div class="my-2 my-lg-0">
					<ul class="list-inline main-nav-right">
						<li class="list-inline-item dropdown osahan-top-dropdown"><a
							class="btn btn-theme-round dropdown-toggle dropdown-toggle-top-user"
							href="#" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <img alt="logo" src="data:image/jpg;base64,${userImage}">
						</a>
							<div
								class="dropdown-menu dropdown-menu-right dropdown-list-design">
								<a href="my-profile.html" class="dropdown-item"><i
									aria-hidden="true" class="mdi mdi-account-outline"></i> My
									Profile</a> <a href="my-address.html" class="dropdown-item"><i
									aria-hidden="true" class="mdi mdi-map-marker-circle"></i> My
									Address</a> <a href="wishlist.html" class="dropdown-item"><i
									aria-hidden="true" class="mdi mdi-heart-outline"></i> Wish List
								</a> <a href="orderlist.html" class="dropdown-item"><i
									aria-hidden="true" class="mdi mdi-format-list-bulleted"></i>
									Order List</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#"><i class="mdi mdi-lock"></i>
									Logout</a>
							</div></li>
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
	<section class="account-page section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 mx-auto">
					<div class="row no-gutters">
						<div class="col-md-4">
							<div class="card account-left">
									<div class="user-profile-header">
								
								   <label for="file"> <img  src="data:image/jpg;base64,${userImage}" alt="No image"> </label>
									<input type="file" id="file"  style="display:none; visibility:none;" name="image" accept="image/png, image/jpeg">
									
									<h5 class="mb-1 text-secondary">
										<strong>Hi </strong> ${customer.firstname}
									</h5>
									<p>+91 ${customer.phone_no}</p>
								</div>
							<div class="list-group">
									<a href="my-profile"
										class="list-group-item list-group-item-action active"><i
										aria-hidden="true" class="mdi mdi-account-outline"></i> My
										Profile</a> <a href="my-address"
										class="list-group-item list-group-item-action"><i
										aria-hidden="true" class="mdi mdi-map-marker-circle"></i> My
										Address</a>  <a href="orderlist"
										class="list-group-item list-group-item-action"><i
										aria-hidden="true" class="mdi mdi-format-list-bulleted"></i>
										Order List</a> <a href="logout"
										class="list-group-item list-group-item-action"><i
										aria-hidden="true" class="mdi mdi-lock"></i> Logout</a>
								</div>
							</div>
						</div>
						<div class="col-md-8">
							<div class="card card-body account-right">
								<div class="widget">
									<div class="section-header">
										<h5 class="heading-design-h5">Order List</h5>
									</div>
									<div class="order-list-tabel-main table-responsive">
										<table
											class="datatabel table table-striped table-bordered order-list-tabel"
											width="100%" cellspacing="0">
											<thead>
												<tr>
													<th>Order #</th>
													<th>Date Purchased</th>
													<th>Total</th>
												</tr>
												
											</thead>
											<tbody>
											<c:forEach items="${orders}" var="order">
												<tr>
													<td>#${order.order_id}</td>
													<td>${order.order_date }</td>
													<td>${order.price}</td>
												</tr>
												
											</c:forEach>
												
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="section-padding bg-white border-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-sm-6">
					<div class="feature-box">
						<i class="mdi mdi-truck-fast"></i>
						<h6>Free & Next Day Delivery</h6>
						<p>Lorem ipsum dolor sit amet, cons...</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="feature-box">
						<i class="mdi mdi-basket"></i>
						<h6>100% Satisfaction Guarantee</h6>
						<p>Rorem Ipsum Dolor sit amet, cons...</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="feature-box">
						<i class="mdi mdi-tag-heart"></i>
						<h6>Great Daily Deals Discount</h6>
						<p>Sorem Ipsum Dolor sit amet, Cons...</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="section-padding footer bg-white border-top">
	


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
	<script data-cfasync="false" src="cdn-cgi/scripts/email-decode.min.js"></script>
	<script src="vendor/jquery/jquery.min.js"
		type="cb8ce665c6b1bc308745db19-text/javascript"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"
		type="cb8ce665c6b1bc308745db19-text/javascript"></script>

	<script src="vendor/select2/js/select2.min.js"
		type="cb8ce665c6b1bc308745db19-text/javascript"></script>

	<script src="vendor/owl-carousel/owl.carousel.js"
		type="cb8ce665c6b1bc308745db19-text/javascript"></script>

	<link href="vendor/datatables/datatables.min.css" rel="stylesheet" />
	<script src="vendor/datatables/datatables.min.js"
		type="cb8ce665c6b1bc308745db19-text/javascript"></script>
	<script type="cb8ce665c6b1bc308745db19-text/javascript">
        
      </script>

	<script src="js/custom.js"
		type="cb8ce665c6b1bc308745db19-text/javascript"></script>
	<script src="cdn-cgi/scripts/rocket-loader.min.js"
		data-cf-settings="cb8ce665c6b1bc308745db19-|49" defer=""></script>
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194"
		integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw=="
		data-cf-beacon='{"rayId":"6e510ae13a116ec2","version":"2021.12.0","r":1,"token":"dd471ab1978346bbb991feaa79e6ce5c","si":100}'
		crossorigin="anonymous"></script>
</body>

<!-- Mirrored from askbootstrap.com/preview/groci/theme-three/orderlist.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 10:00:30 GMT -->
</html>
