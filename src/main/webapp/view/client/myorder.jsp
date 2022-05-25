<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/client" var="url" />
<!-- Start header section -->
<jsp:include page="./header/header.jsp" flush="true" />
<!-- / header section -->
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>



<%-- <section id="checkout">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="checkout-area">
					<div class="row">
						<div class="col-md-8">
							<div class="checkout-left">
								<div class="panel-group">
									<c:if test="${sessionScope.username == null}">
										<p>
											Bạn cần đăng nhập để xem đơn hàng! Đăng nhập. <a
												href="${pageContext.request.contextPath}/view/client/login"
												style="color: #754110">tại đây!</a>
										</p>
									</c:if>
									<c:if test="${sessionScope.username != null}">
										<div class="row" style="display: block">
											<form
												action="${pageContext.request.contextPath}/view/client/product/myorder"
												method="GET"></form>

										</div>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section> --%>
<!-- Shoping Cart -->
<form class="bg0 p-t-75 p-b-85">
	<div class="container">
		<c:if test="${sessionScope.username == null}">
			<p>
				Bạn cần đăng nhập để xem đơn hàng! Đăng nhập. <a
					href="${pageContext.request.contextPath}/view/client/login"
					style="color: #754110">tại đây!</a>
			</p>
		</c:if>
		<div class="row">
			<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
				<div class="m-l-25 m-r--38 m-lr-0-xl">
					<div class="wrap-table-shopping-cart">
						<table class="table-shopping-cart">

							<tr class="table_head">
								<th class="column-1">Code</th>
								<th class="column-2">Total</th>
								<th class="column-3">Payment</th>
								<th class="column-4">Creation date</th>
								<th class="column-5">Status</th>
								<th class="column-6">Details</th>

							</tr>
							<c:forEach items="${transactions}" var="item">
								<tr class="table_row">

									<td class="column-1">${item.id}</td>
									<td class="column-2">$ ${item.amount}</td>
									<td class="column-3">${item.payment}</td>
									<td class="column-4">${item.created}</td>
									<td class="column-5">${item.status}</td>
									<th class="column-6"><i class='fas fa-angle-right'
										style='font-size: 36px href="#"'></i></th>
								</tr>
							</c:forEach>
						</table>

					</div>
				</div>
			</div>

			<%-- <div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
				<div class="m-l-25 m-r--38 m-lr-0-xl">

					<div class="wrap-table-shopping-cart">

						<table class="table-shopping-cart">
							<tr class="table_head">
								<th class="column-1">Product</th>
								<th class="column-2"></th>
								<th class="column-3">Price</th>
								<th class="column-4">Quantity</th>
								<th class="column-5">Total</th>
								<th class="column-5">Remove</th>
							</tr>
							<c:forEach items="${order.items}" var="item">
								<tr class="table_row">
									<td class="column-1">
										<div class="how-itemcart1">
											<img src="${item.product.image_link}" alt="IMG">
										</div>
									</td>
									<td class="column-2">${item.product.name }s</td>
									<td class="column-3">$ ${item.product.price }</td>
									<td class="column-4">
										<div class="wrap-num-product flex-w m-l-auto m-r-0">
											<div
												class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product"
												type="number" name="${item.product.id}" value="${item.qty}"
												min=1>

											<div
												class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>
									</td>
									<td class="column-5">$ ${item.price}00</td>
									<td class="column-6"><a class="zmdi zmdi-close"
										href="${pageContext.request.contextPath}/view/client/cart-delete?id=${item.product.id}"></a></td>
								</tr>
							</c:forEach>

						</table>

					</div>

					<div
						class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
						<div
							class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10 ">
							<input type="submit" value="Update cart">
						</div>
					</div>

				</div>
			</div>
 --%>

		</div>
	</div>
</form>


<%-- <section id="cart-view">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="cart-view-area">
					<div class="cart-view-table">

						<div class="table-responsive">
							<table id="myOrderTable" class="table">
								<thead>
									<tr>
										<th>STT</th>
										
										
										<th>Tên khách hàng</th>
										<th>Email</th>
										<th>Số điện thoại</th>
										<th>Địa chỉ</th>
										<th>Tổng tiền</th>
										<th>Ghi chú</th>
										<th>created</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${transactions}" var="item"  varStatus="STT">
											<tr>
												<td>${STT.index+1}</td>
												
												
												<td>${item.user_name}</td>
												<td>${item.user_mail}</td>
												<td>${item.user_phone}</td>
												<td>${item.address}</td>
												<td>${item.message}</td>
												<td>${item.amount}</td>
												<td>${item.created}</td>
												
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
</section>
<!-- / Cart view section --> --%>


<!--  end content-->

<!--  footer-->
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript"
	src="http://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script>
	$("#myOrderTable").dataTable();
</script>
<jsp:include page="./footer/footer.jsp" flush="true" />
<!-- end footer-->

