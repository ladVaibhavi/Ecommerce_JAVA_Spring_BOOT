<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <!-- Mirrored from askbootstrap.com/preview/groci/theme-three/shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 09:59:57 GMT -->

  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="Askbootstrap" />
    <meta name="author" content="Askbootstrap" />
    <title>Groci - Organic Food & Grocery Market Template</title>

    <link rel="icon" type="image/png" href="/img/favicon.png" />

    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <link
      href="/vendor/icons/css/materialdesignicons.min.css"
      media="all"
      rel="stylesheet"
      type="text/css"
    />

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
    <section class="pt-3 pb-3 page-info section-padding border-bottom bg-white">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <a href="#"
              ><strong><span class="mdi mdi-home"></span> Home</strong></a
            >
            <span class="mdi mdi-chevron-right"></span> <a href="#">Shop</a>
          </div>
        </div>
      </div>
    </section>
    <form action="<c:if test="${not empty product.id}"><c:out value = "/updateproduct/${product.id}"/></c:if><c:if test="${empty product.id}"><c:out value = "addproduct"/></c:if>" method="POST" enctype="multipart/form-data">
      <section class="shop-single section-padding pt-3">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-md-8">
              <div class="shop-detail-right">
                <div class="col-sm-8">
                  <div class="form-group">
                  <input type="hidden" type="text" value="" name="img" id="imagechange">
                    <label class="control-label"
                      >Product Name<span class="required">*</span></label
                    >
                    <input
                      class="form-control border-form-control"
                      
                      placeholder="Enter Product Name"
                      name="name"
                      value="${product.name}"
                      type="text"
                    />
                  </div>
                </div>
                <div class="col-sm-8">
                  <div class="form-group">
                    <label for="file">
                      <img 
                        src="data:image/jpg;base64,${product.image}"
                        id="output"
                        alt="No image"
                      />
                    </label>
                    <input
                      type="file"
                      id="file"
                      style="display: none; visibility: none"
                      onchange="loadFile(event)"
                      name="image"
                      accept="image/png, image/jpeg"
                      style="width: 100px"
                    />
                  </div>
                </div>
                <script>
                  var loadFile = function (event) {
                    var image = document.getElementById("output");
                    image.src = URL.createObjectURL(event.target.files[0]);
                    var image_change = document.getElementById("imagechange");
                    image_change.value = "changed"
                  };
                </script>
                <div class="col-sm-6">
                  <div class="form-group">
                    <label class="control-label">
                      <strong
                        ><span class="mdi mdi-approval"></span> Available
                        in</strong
                      ><span class="required">*</span></label
                    >
                    <input
                      class="form-control border-form-control"
                      value="${product.available_in}"
                      placeholder="Available in"
                      name="available_in"
                      type="text"
                    />
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group">
                    <label class="control-label"
                      >Price<span class="required">*</span></label
                    >
                    <input
                      class="form-control border-form-control"
                      value="${product.price }"
                      placeholder="Enter Product Price"
                      name="price"
                      type="number"
                    />
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group">
                    <label class="control-label"
                      >Discount<span class="required">*</span></label
                    >
                    <input
                      class="form-control border-form-control"
                      value="${product.discount }"
                      placeholder="Enter Product Discount"
                      name="discount"
                      type="number"
                    />
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group">
                    <label class="control-label"
                      >Total Quantity<span class="required">*</span></label
                    >
                    <input
                      class="form-control border-form-control"
                      value="${product.quantity}"
                      placeholder="Enter Product Quantity"
                      name="quantity"
                      type="number"
                    />
                  </div>
                </div>
                 <div class="col-sm-6">
                  <div class="form-group">
                    <label class="control-label"
                      >Catagory<span class="required">*</span></label
                    >
                    <input
                      class="form-control border-form-control"
                      value="${product.catagory }"
                      placeholder="Enter Product Catagory"
                      name="catagory"
                      type="text"
                    />
                  </div>
                </div>

                <div class="short-description">
                  <textarea
                    class="form-control border-form-control"
                    style="border: none"
                    name="description">${product.description }</textarea>
                </div>
                <c:if test="${not empty product.id}">
				          <button type="submit" class="btn btn-secondary btn-lg">
                    <i class="mdi mdi-cart-outline"></i> Update
                  </button>
				   </c:if>
				    <c:if test="${empty product.id}">
				          <button type="submit" class="btn btn-secondary btn-lg">
                    <i class="mdi mdi-cart-outline"></i> Add Product
                  </button>
				   </c:if>
				 
              </div>
            </div>
          </div>
        </div>
      </section>
    </form>
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

    <script
      data-cfasync="false"
      src="/cdn-cgi/scripts/email-decode.min.js"
    ></script>
    <script
      src="/vendor/jquery/jquery.min.js"
      type="cba74e1b281d116697cb4cce-text/javascript"
    ></script>
    <script
      src="/vendor/bootstrap/js/bootstrap.bundle.min.js"
      type="cba74e1b281d116697cb4cce-text/javascript"
    ></script>

    <script
      src="/vendor/select2/js/select2.min.js"
      type="cba74e1b281d116697cb4cce-text/javascript"
    ></script>

    <script
      src="/vendor/owl-carousel/owl.carousel.js"
      type="cba74e1b281d116697cb4cce-text/javascript"
    ></script>

    <script
      src="/js/custom.js"
      type="cba74e1b281d116697cb4cce-text/javascript"
    ></script>
    <script
      src="/cdn-cgi/scripts/rocket-loader.min.js"
      data-cf-settings="cba74e1b281d116697cb4cce-|49"
      defer=""
    ></script>
    <script
      defer
      src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194"
      integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw=="
      data-cf-beacon='{"rayId":"6e510ab2286f6ec2","version":"2021.12.0","r":1,"token":"dd471ab1978346bbb991feaa79e6ce5c","si":100}'
      crossorigin="anonymous"
    ></script>
  </body>

  <!-- Mirrored from askbootstrap.com/preview/groci/theme-three/shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 10:00:15 GMT -->
</html>
