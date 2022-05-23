
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/client/assets" var="url" />
<!-- Start header section -->
<jsp:include page="./header/header.jsp" flush="true" />
<!-- / header section -->
<!-- Shoping Cart -->
<form class="bg0 p-t-75 p-b-85"
	action="${pageContext.request.contextPath}/view/client/cart-update"
	method="post">
	<div class="container">
		<div class="row">
			<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
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

			<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
				<div
					class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
					<h4 class="mtext-109 cl2 p-b-30">Cart Totals</h4>

					<div class="flex-w flex-t bor12 p-b-13">
						<div class="size-208">
							<span class="stext-110 cl2"> Subtotal: </span>
						</div>

						<div class="size-209">
							<span class="mtext-110 cl2">$ ${sumprice}</span>
						</div>
					</div>



					<div class="flex-w flex-t p-t-27 p-b-33">
						<div class="size-208">
							<span class="mtext-101 cl2"> Total: </span>
						</div>

						<div class="size-209 p-t-1">
							<span class="mtext-110 cl2"> $79.65 </span>
						</div>
					</div>

					<button
						class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
						Proceed to Checkout</button>
				</div>
			</div>
		</div>
	</div>
</form>




<%-- <!-- Cart view section -->
				<section id="cart-view">
					<c:if test="${length_order != null}">
						<div class="container">
							<div class="row">
								<div class="col-md-12">

									<div class="cart-view-area">
										<div class="cart-view-table">
											<form
												action="${pageContext.request.contextPath}/view/client/cart-update"
												method="post">
												<div class="table-responsive">
													<table class="table">
														<thead>
															<tr>
																<th>Bỏ chọn</th>
																<th>Chi tiết</th>
																<th>Sản phẩm</th>
																<th>Đơn giá</th>
																<th>Số lượng</th>
																<th>Giảm giá</th>
																<th>Thành tiền</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${order.items}" var="item">
																<tr>
																	<td><a class="remove"
																		href="${pageContext.request.contextPath}/view/client/cart-delete?id=${item.product.id}"><fa
																				class="fa fa-close"></fa></a></td>
																	<td><a
																		href="${pageContext.request.contextPath}/view/client/product-detail?id=${item.product.id}"><img
																			src="${item.product.image_link}"
																			alt="img${item.product.name }"></a></td>
																	<td><a class="aa-cart-title"
																		href="${pageContext.request.contextPath}/view/client/product-detail?id=${item.product.id}">${item.product.name }</a></td>
																	<td>${item.product.price}VNĐ</td>
																	<td><input class="aa-cart-quantity" type="number"
																		name="${item.product.id}" value="${item.qty}" min=1></td>
																	<td>${item.product.discount}%</td>
																	<td>${item.price}00VNĐ</td>
																</tr>
															</c:forEach>
															<tr>
																<td colspan="6" class=""><strong>Tổng: </strong></td>
																<td><strong>${sumprice} VNĐ</strong></td>
															</tr>
															<tr>
																<td colspan="7" class="aa-cart-view-bottom"><input
																	class="aa-cart-view-btn" type="submit"
																	value="Cập nhật giỏ hàng"></td>
															</tr>

														</tbody>
													</table>
												</div>

											</form>
											<!-- Cart Total view -->
											<div class="cart-view-total">
												<h4>Thông tin giỏ hàng</h4>
												<table class="aa-totals-table">
													<tbody>
														<tr>
															<th>Tạm thời</th>
															<td>${sumprice}VNĐ</td>
														</tr>
														<tr>
															<th>VAT</th>
															<td>0 VNĐ</td>
														</tr>
														<tr>
															<th>Tổng giá</th>
															<td><strong>${sumprice} VNĐ</strong></td>
														</tr>
													</tbody>
												</table>
												<a
													href="${pageContext.request.contextPath}/view/client/checkout"
													class="aa-cart-view-btn">Thanh toán</a>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${length_order == null}">
						<br>
						<br>
						<p class="text text-center" style="color: red">BẠN CHƯA CHỌN
							SẢN PHẨM</p>
						<p class="text text-center">
							Vui lòng xem thêm sản phẩm! <a
								href="${pageContext.request.contextPath}/view/client/product"
								style="color: #754110">tại đây!</a>
						</p>
						<br>
						<br>
					</c:if>
				</section>
			</div>
		</div>
	</div>
</section>
<!-- / Cart view section --> --%>

<!--  end content-->

<!--  footer-->
<jsp:include page="./footer/footer.jsp" flush="true" />
<!-- end footer-->
