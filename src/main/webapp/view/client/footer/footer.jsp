

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/client" var="url" />

<!-- Footer -->
<footer class="bg3 p-t-75 p-b-32">
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-lg-3 p-b-50">
				<h4>
					<a href="#" class="stext-301 cl0 p-b-30"> Home</a>
				</h4>
				<h4>
					<a href="#" class="stext-301 cl0 p-b-30"> Shop</a>
				</h4>
				<h4>
					<a href="#" class="stext-301 cl0 p-b-30"> My order</a>
				</h4>
				<h4>
					<a href="#" class="stext-301 cl0 p-b-30"> Blog </a>
				</h4>

			</div>

			<div class="col-sm-6 col-lg-3 p-b-50">
				<h4 class="stext-301 cl0 p-b-30">Help</h4>

				<ul>
					<li class="p-b-10"><a href="#"
						class="stext-107 cl7 hov-cl1 trans-04"> Track Order </a></li>

					<li class="p-b-10"><a href="#"
						class="stext-107 cl7 hov-cl1 trans-04"> Returns </a></li>

					<li class="p-b-10"><a href="#"
						class="stext-107 cl7 hov-cl1 trans-04"> Shipping </a></li>

					<li class="p-b-10"><a href="#"
						class="stext-107 cl7 hov-cl1 trans-04"> FAQs </a></li>
				</ul>
			</div>

			<div class="col-sm-6 col-lg-3 p-b-50">
				<h4 class="stext-301 cl0 p-b-30">ABOUT ME</h4>
			</div>
			<div class="col-sm-6 col-lg-3 p-b-50">
				<h4 class="stext-301 cl0 p-b-30">CONTACT</h4>
			</div>
		</div>
	</div>
	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>
</footer>
<jsp:include page="script.jsp" flush="true" />

