<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/client" var="url" />

<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" type="image/png"
	href="${url }/images/icons/favicon.png" />

<link rel="stylesheet" type="text/css"
	href="${url }/vendor/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css"
	href="${url }/fonts/font-awesome-4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css"
	href="${url }/fonts/iconic/css/material-design-iconic-font.min.css">

<link rel="stylesheet" type="text/css"
	href="${url }/fonts/linearicons-v1.0.0/icon-font.min.css">

<link rel="stylesheet" type="text/css"
	href="${url }/vendor/animate/animate.css">

<link rel="stylesheet" type="text/css"
	href="${url }/vendor/css-hamburgers/hamburgers.min.css">

<link rel="stylesheet" type="text/css"
	href="${url }/vendor/animsition/css/animsition.min.css">

<link rel="stylesheet" type="text/css"
	href="${url }/vendor/select2/select2.min.css">

<link rel="stylesheet" type="text/css"
	href="${url }/vendor/daterangepicker/daterangepicker.css">

<link rel="stylesheet" type="text/css"
	href="${url }/vendor/slick/slick.css">

<link rel="stylesheet" type="text/css"
	href="${url }/vendor/MagnificPopup/magnific-popup.css">

<link rel="stylesheet" type="text/css"
	href="${url }/vendor/perfect-scrollbar/perfect-scrollbar.css">

<link rel="stylesheet" type="text/css" href="${url }/css/util.css">
<link rel="stylesheet" type="text/css" href="${url }/css/main.css">
</head>
<body class="animsition">
	<!-- Header -->
	<header>
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">Free shipping for standard order
						over $100</div>

					<div class="right-top-bar flex-w h-full">


						<c:if test="${sessionScope.username != null}">
							<a href="#" class="flex-c-m trans-04 p-lr-25">Hello
								${username } </a>
							<a href="${pageContext.request.contextPath}/view/client/logout"
								class="flex-c-m trans-04 p-lr-25"> Log out </a>
						</c:if>

						<c:if test="${sessionScope.username == null}">
							<a href="${pageContext.request.contextPath}/view/client/register"
								class="flex-c-m trans-04 p-lr-25"> Sign up </a>
							<a href="${pageContext.request.contextPath}/view/client/login"
								class="flex-c-m trans-04 p-lr-25"> Sign in </a>

						</c:if>

						<%-- <a href="#" class="flex-c-m trans-04 p-lr-25"> My Account </a> 
						<a
							href="${pageContext.request.contextPath}/view/client/register"
							class="flex-c-m trans-04 p-lr-25"> Sign up </a> 
							<a
							href="${pageContext.request.contextPath}/view/client/login"
							class="flex-c-m trans-04 p-lr-25"> Sign in </a> --%>
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop container">

					<!-- Logo desktop -->
					<a href="#" class="logo"> COSMETIC </a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li class="active-menu"><a
								href="${pageContext.request.contextPath}/">Home</a></li>

							<li><a
								href="${pageContext.request.contextPath}/view/client/product">Shop</a>
							</li>

							<li><a
								href="${pageContext.request.contextPath}/view/client/cart">Cart</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath}/view/client/myorder">My
									order</a></li>

							<li><a
								href="${pageContext.request.contextPath}/view/client/blog-archive">Blog</a>
							</li>

						</ul>
					</div>

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">

						<c:if test="${length_order != NULL}">
							<c:set var="notify" value="${length_order}" />

						</c:if>
						<div
							class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"
							data-notify="${notify}">
							<i class="zmdi zmdi-shopping-cart"></i>

						</div>

					</div>
				</nav>
			</div>
		</div>


		<!-- Cart -->
		<div class="wrap-header-cart js-panel-cart">
			<div class="s-full js-hide-cart"></div>

			<div class="header-cart flex-col-l p-l-65 p-r-25">
				<div class="header-cart-title flex-w flex-sb-m p-b-8">
					<span class="mtext-103 cl2"> Your Cart </span>

					<div
						class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
						<i class="zmdi zmdi-close"></i>
					</div>
				</div>

				<div class="header-cart-content flex-w  js-pscroll">
					<ul class="header-cart-wrapitem w-full">
						<c:forEach items="${order.items}" var="item">
							<li class="header-cart-item flex-w flex-t m-b-12">
								<div class="header-cart-item-img"
									href="${pageContext.request.contextPath}/view/client/cart-delete?id=${item.product.id}">
									<img src="${item.product.image_link}" alt="IMG">
								</div>

								<div class="header-cart-item-txt p-t-8">
									<a href="#"
										class="header-cart-item-name m-b-18 hov-cl1 trans-04">
										${item.product.name} </a> <span class="header-cart-item-info">
										${item.qty} x ${item.product.price } </span>
								</div>

							</li>
						</c:forEach>

					</ul>

					<div class="w-full">
						<div class="header-cart-total w-full p-tb-40">Total:
							$${sumprice}</div>

						<div class="header-cart-buttons flex-w w-full">
							<a href="${pageContext.request.contextPath}/view/client/cart"
								class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
								View Cart </a> <a href="shoping-cart.html"
								class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
								Check Out </a>
						</div>
					</div>
				</div>
			</div>
		</div>


	</header>
</body>
<!--===============================================================================================-->
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/select2/select2.min.js"></script>
<script>
	$(".js-select2").each(function() {
		$(this).select2({
			minimumResultsForSearch : 20,
			dropdownParent : $(this).next('.dropDownSelect2')
		});
	})
</script>
<!--===============================================================================================-->
<script src="vendor/daterangepicker/moment.min.js"></script>
<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="vendor/slick/slick.min.js"></script>
<script src="js/slick-custom.js"></script>
<!--===============================================================================================-->
<script src="vendor/parallax100/parallax100.js"></script>
<script>
	$('.parallax100').parallax100();
</script>
<!--===============================================================================================-->
<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<script>
	$('.gallery-lb').each(function() { // the containers for all your galleries
		$(this).magnificPopup({
			delegate : 'a', // the selector for gallery item
			type : 'image',
			gallery : {
				enabled : true
			},
			mainClass : 'mfp-fade'
		});
	});
</script>
<!--===============================================================================================-->
<script src="vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/sweetalert/sweetalert.min.js"></script>
<script>
	$('.js-addwish-b2').on('click', function(e) {
		e.preventDefault();
	});

	$('.js-addwish-b2').each(function() {
		var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
		$(this).on('click', function() {
			swal(nameProduct, "is added to wishlist !", "success");

			$(this).addClass('js-addedwish-b2');
			$(this).off('click');
		});
	});

	$('.js-addwish-detail').each(
			function() {
				var nameProduct = $(this).parent().parent().parent().find(
						'.js-name-detail').html();

				$(this).on('click', function() {
					swal(nameProduct, "is added to wishlist !", "success");

					$(this).addClass('js-addedwish-detail');
					$(this).off('click');
				});
			});

	/*---------------------------------------------*/

	$('.js-addcart-detail').each(
			function() {
				var nameProduct = $(this).parent().parent().parent().parent()
						.find('.js-name-detail').html();
				$(this).on('click', function() {
					swal(nameProduct, "is added to cart !", "success");
				});
			});
</script>
<!--===============================================================================================-->
<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script>
	$('.js-pscroll').each(function() {
		$(this).css('position', 'relative');
		$(this).css('overflow', 'hidden');
		var ps = new PerfectScrollbar(this, {
			wheelSpeed : 1,
			scrollingThreshold : 1000,
			wheelPropagation : false,
		});

		$(window).on('resize', function() {
			ps.update();
		})
	});
</script>
<!--===============================================================================================-->
<script src="js/main.js"></script>