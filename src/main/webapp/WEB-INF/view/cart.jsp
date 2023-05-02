<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from askbootstrap.com/preview/groci/theme-three/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 10:00:29 GMT -->
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
		class="pt-3 pb-3 page-info section-padding border-bottom bg-white">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<a href="#"><strong><span class="mdi mdi-home"></span>
							Home</strong></a> <span class="mdi mdi-chevron-right"></span> <a href="#">Cart</a>
				</div>
			</div>
		</div>
		
	</section>
	<c:set var="total" value="${0}" />
	<section class="cart-page section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="card card-body cart-table">
						<div class="table-responsive">
							<table class="table cart_summary">
								<thead>
									<tr>
										<th class="cart_product">Product</th>
										<th>Description</th>
										<th>Avail.</th>
										<th>Unit price</th>
										<th>Qty</th>
										<th>Update</th>
										<th>Total</th>
										<th class="action"><i class="mdi mdi-delete-forever"></i></th>
									</tr>
								</thead>
								<tbody>
								 <c:forEach items="${products}" var="product">
									<tr>
										<td class="cart_product"><a href="#">
										 <img class="img-fluid" src="data:image/jpeg;base64,${product.image}" alt="${product.name}" /></a></td>
										<td class="cart_description">
											<h5 class="product-name">
												<a href="#">${product.name}</a>
											</h5>
											<h6>
												<strong><span class="mdi mdi-approval"></span>
													Available in</strong> - ${product.available_in }
											</h6>
										</td>
										 <c:if test="${product.quantity > 0}">
										<td class="availability in-stock">
										<span class="badge badge-success">In stock</span>
										</td>
										</c:if>
										 <c:if test="${product.quantity == 0}">
										 <td class="availability out-of-stock"><span class="badge badge-primary">No stock</span></td>
										 </c:if>		
										<td class="price"><span> ${product.price - ((0.01 * product.price)* product.discount ) }</span></td>
										<form action="cart/update" method="POST">
										<td class="qty">
											<div class="input-group">
											
												<input type="text" max="10"
													min="1" 
													class="form-control border-form-control form-control-sm input-number"
													<c:forEach items="${carts}" var="cart">
										            <c:if test="${product.id == cart.product_id}" >
										            value = "${ cart.product_quantity}"
										            </c:if>
										            </c:forEach>
													name="quan"> 
											     <input type="hidden" value="${product.id}" name="product_id">
											</div>
										</td>
										<td>
										<button type="submit"	class="btn btn-sm btn-danger">
								        <i class="mdi mdi-cart-outline"></i> 
						            	</button> 
										</td>
										</form>
										<c:forEach items="${carts}" var="cart">
										<c:if test="${product.id == cart.product_id}" >
										<td class="price">
										<c:if test="${product.quantity != 0}">
										<span> ${(product.price - ((0.01 * product.price)* product.discount ))*cart.product_quantity } 
										       <c:set var="total" value="${total + (product.price - ((0.01 * product.price)* product.discount ))*cart.product_quantity }" />
										</span>
										</c:if>
										<c:if test="${product.quantity == 0}">
										<span>0 </span>
										</c:if>
										</td>
										</c:if>
										</c:forEach>
										<td class="action"><a class="btn btn-sm btn-danger"
											data-original-title="Remove" href="http://localhost:8080/cart/remove/${product.id}" title="Remove Product From Cart"
											data-placement="top" data-toggle="tooltip"><i
												class="mdi mdi-close-circle-outline"></i></a></td>
									</tr>
									</c:forEach>
								</tbody>
								<tfoot>
								
									
									<tr>
										<td class="text-right" colspan="6"><strong>Total</strong></td>
										<td class="text-danger" colspan="2"><strong> ${total}
										</strong></td>
									</tr>
								</tfoot>
							</table>
						</div>
						<a href="checkout"><button
								class="btn btn-secondary btn-lg btn-block text-left"
								type="button">
								<span class="float-left"><i class="mdi mdi-cart-outline"></i>
									Proceed to Checkout </span><span class="float-right"><strong>${total}</strong>
									<span class="mdi mdi-chevron-right"></span></span>
							</button></a>
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

	

	<script data-cfasync="false" src="cdn-cgi/scripts/email-decode.min.js"></script>
	<script src="vendor/jquery/jquery.min.js"
		type="01be46c8d45de26fa6c38573-text/javascript"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"
		type="01be46c8d45de26fa6c38573-text/javascript"></script>

	<script src="vendor/select2/js/select2.min.js"
		type="01be46c8d45de26fa6c38573-text/javascript"></script>

	<script src="vendor/owl-carousel/owl.carousel.js"
		type="01be46c8d45de26fa6c38573-text/javascript"></script>

	<script src="js/custom.js"
		type="01be46c8d45de26fa6c38573-text/javascript"></script>
	<script src="cdn-cgi/scripts/rocket-loader.min.js"
		data-cf-settings="01be46c8d45de26fa6c38573-|49" defer=""></script>
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194"
		integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw=="
		data-cf-beacon='{"rayId":"6e510ad61a1e85fa","version":"2021.12.0","r":1,"token":"dd471ab1978346bbb991feaa79e6ce5c","si":100}'
		crossorigin="anonymous"></script>
</body>

<!-- Mirrored from askbootstrap.com/preview/groci/theme-three/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 10:00:29 GMT -->
</html>
