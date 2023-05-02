<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from askbootstrap.com/preview/groci/theme-three/shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 09:59:57 GMT -->

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Askbootstrap" />
    <meta name="author" content="Askbootstrap" />
    <title>Groci - Organic Food & Grocery Market Template</title>
 
    <link rel="icon" type="image/png" href="img/favicon.png" />

    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <link href="/vendor/icons/css/materialdesignicons.min.css" media="all" rel="stylesheet" type="text/css" />

    <link href="/vendor/select2/css/select2-bootstrap.css" />
    <link href="/vendor/select2/css/select2.min.css" rel="stylesheet" />

    <link href="/css/osahan.css" rel="stylesheet" />

    <link rel="stylesheet" href="/vendor/owl-carousel/owl.carousel.css" />
    <link rel="stylesheet" href="/vendor/owl-carousel/owl.theme.css" />
</head>

<body>
   
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
						href="/AdminPage"><span class="mdi mdi-store"></span>Home Page</a>
					</li>
					<li class="nav-item"><a href="/ViewProduct/" class="nav-link">Product
							List</a></li>
					<li class="nav-item"><a class="nav-link" href="/product">Add
							New Product</a></li>
				</ul>
			</div>
		</div>
	</nav>
    <section class="pt-3 pb-3 page-info section-padding border-bottom bg-white">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <a href="#"><strong><span class="mdi mdi-home"></span>Admin</strong></a>
                    <span class="mdi mdi-chevron-right"></span> <a href="#">Porduct List</a>
                </div>
            </div>
        </div>
    </section>
    <section class="shop-list section-padding">
        <div class="container">
            <div class="row">
               
                      
                <div class="col-md-12">
                    <div class="shop-head">
                    
                          <h5 class="mb-3">Fruits</h5>   
                    </div>
                    <div class="row">
                    <c:forEach items="${products}" var="product">
                        <div class="col-md-3 pmb-3">
                            <div class="product">
                                <a href="single.html">
                                    <div class="product-header">
                                   <c:if test="${product.discount > 0}">
                                        <span class="badge badge-success"> <c:out value = "${product.discount}"/>% OFF</span>
                                    </c:if>     
                                        <img class="img-fluid" src="data:image/jpeg;base64,${product.image}" alt=${"product.name"} />
                                    </div>
                                    <div class="product-body">
                                        <h5>${product.name}</h5>
                                        <h6>
                                            <strong><span class="mdi mdi-approval"></span> Available
                                                in</strong>
                                            - ${product.available_in }
                                        </h6>
                                    </div>
                                    <div class="product-footer">
                                       
                                        <p class="offer-price mb-0">
                                       <c:choose>
									    <c:when test="${product.discount > 0}">
									         ${product.price - ((0.01 * product.price)* product.discount ) }
									  
									    </c:when>    
									    <c:otherwise>
									       ${product.price}
									
									    </c:otherwise>
									</c:choose>
									 <c:if test="${product.discount > 0}">
									       <i class="mdi mdi-tag-outline"></i>
                                            <span class="regular-price">${product.price}</span> </c:if>  
                                        </p>
                                        <a href="update/${product.id}">
                                            <button type="button" class="btn btn-secondary btn-sm">
                                                Update
                                            </button></a>
                                        <a href="delete/${product.id}">
                                            <button type="button" class="btn btn-secondary btn-sm">
                                                Delete
                                            </button></a>
                                    </div>
                                </a>
                            </div>
                        </div>
                       </c:forEach>
                        </div>

                    </div>
                    <nav>
                        <ul class="pagination justify-content-center">
                            <li class="page-item ">
                                 <a class="page-link" href="${previous}" >Previous</a>
                            </li>
                            <li class="page-item"><a class="page-link" href="${previous}">${previous}</a></li>
                            <li class="page-item active">
                                <span class="page-link">
                                     ${current}
                                    <span class="sr-only"> </span>
                                </span>
                            </li>
                            <li class="page-item"><a class="page-link" href="${next}">${next}</a></li>
                            <li class="page-item">
                                <a class="page-link" href="${next}">Next</a>
                            </li>
                        </ul>
                    </nav>
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

    <div class="cart-sidebar">
        <div class="cart-sidebar-header">
            <h5>
                My Cart <span class="text-success">(5 item)</span>
                <a data-toggle="offcanvas" class="float-right" href="#"><i class="mdi mdi-close"></i>
                </a>
            </h5>
        </div>
        <div class="cart-sidebar-body">
            <div class="cart-list-product">
                <a class="float-right remove-cart" href="#"><i class="mdi mdi-close"></i></a>
                <img class="img-fluid" src="img/item/11.jpg" alt="" />
                <span class="badge badge-success">50% OFF</span>
                <h5><a href="#">Product Title Here</a></h5>
                <h6>
                    <strong><span class="mdi mdi-approval"></span> Available in</strong>
                    - 500 gm
                </h6>
                <p class="offer-price mb-0">
                    $450.99 <i class="mdi mdi-tag-outline"></i>
                    <span class="regular-price">$800.99</span>
                </p>
            </div>
            <div class="cart-list-product">
                <a class="float-right remove-cart" href="#"><i class="mdi mdi-close"></i></a>
                <img class="img-fluid" src="img/item/7.jpg" alt="" />
                <span class="badge badge-success">50% OFF</span>
                <h5><a href="#">Product Title Here</a></h5>
                <h6>
                    <strong><span class="mdi mdi-approval"></span> Available in</strong>
                    - 500 gm
                </h6>
                <p class="offer-price mb-0">
                    $450.99 <i class="mdi mdi-tag-outline"></i>
                    <span class="regular-price">$800.99</span>
                </p>
            </div>
            <div class="cart-list-product">
                <a class="float-right remove-cart" href="#"><i class="mdi mdi-close"></i></a>
                <img class="img-fluid" src="img/item/9.jpg" alt="" />
                <span class="badge badge-success">50% OFF</span>
                <h5><a href="#">Product Title Here</a></h5>
                <h6>
                    <strong><span class="mdi mdi-approval"></span> Available in</strong>
                    - 500 gm
                </h6>
                <p class="offer-price mb-0">
                    $450.99 <i class="mdi mdi-tag-outline"></i>
                    <span class="regular-price">$800.99</span>
                </p>
            </div>
            <div class="cart-list-product">
                <a class="float-right remove-cart" href="#"><i class="mdi mdi-close"></i></a>
                <img class="img-fluid" src="img/item/1.jpg" alt="" />
                <span class="badge badge-success">50% OFF</span>
                <h5><a href="#">Product Title Here</a></h5>
                <h6>
                    <strong><span class="mdi mdi-approval"></span> Available in</strong>
                    - 500 gm
                </h6>
                <p class="offer-price mb-0">
                    $450.99 <i class="mdi mdi-tag-outline"></i>
                    <span class="regular-price">$800.99</span>
                </p>
            </div>
            <div class="cart-list-product">
                <a class="float-right remove-cart" href="#"><i class="mdi mdi-close"></i></a>
                <img class="img-fluid" src="img/item/2.jpg" alt="" />
                <span class="badge badge-success">50% OFF</span>
                <h5><a href="#">Product Title Here</a></h5>
                <h6>
                    <strong><span class="mdi mdi-approval"></span> Available in</strong>
                    - 500 gm
                </h6>
                <p class="offer-price mb-0">
                    $450.99 <i class="mdi mdi-tag-outline"></i>
                    <span class="regular-price">$800.99</span>
                </p>
            </div>
        </div>
        <div class="cart-sidebar-footer">
            <div class="cart-store-details">
                <p>Sub Total <strong class="float-right">$900.69</strong></p>
                <p>
                    Delivery Charges
                    <strong class="float-right text-danger">+ $29.69</strong>
                </p>
                <h6>
                    Your total savings
                    <strong class="float-right text-danger">$55 (42.31%)</strong>
                </h6>
            </div>
            <a href="checkout.html"><button class="btn btn-secondary btn-lg btn-block text-left" type="button">
                    <span class="float-left"><i class="mdi mdi-cart-outline"></i> Proceed to Checkout </span><span
                        class="float-right"><strong>$1200.69</strong>
                        <span class="mdi mdi-chevron-right"></span></span></button></a>
        </div>
    </div>

    <script data-cfasync="false" src="/cdn-cgi/scripts/email-decode.min.js"></script>
    <script src="/vendor/jquery/jquery.min.js" type="cba74e1b281d116697cb4cce-text/javascript"></script>
    <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js" type="cba74e1b281d116697cb4cce-text/javascript"></script>

    <script src="/vendor/select2/js/select2.min.js" type="cba74e1b281d116697cb4cce-text/javascript"></script>

    <script src="/vendor/owl-carousel/owl.carousel.js" type="cba74e1b281d116697cb4cce-text/javascript"></script>

    <script src="/js/custom.js" type="cba74e1b281d116697cb4cce-text/javascript"></script>
    <script src="/cdn-cgi/scripts/rocket-loader.min.js" data-cf-settings="cba74e1b281d116697cb4cce-|49"
        defer=""></script>
    <script defer
        src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194"
        integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw=="
        data-cf-beacon='{"rayId":"6e510ab2286f6ec2","version":"2021.12.0","r":1,"token":"dd471ab1978346bbb991feaa79e6ce5c","si":100}'
        crossorigin="anonymous"></script>
</body>

<!-- Mirrored from askbootstrap.com/preview/groci/theme-three/shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 10:00:15 GMT -->

</html>