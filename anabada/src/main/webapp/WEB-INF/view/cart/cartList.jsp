<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">장바구니</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<!-- <li class="breadcrumb-item"><a href="#" onclick="">cartList<i class="fas fa-star"></i></a></li> -->
		<li class="breadcrumb-item active text-white">cartList.do</li>
	</ol>
</div>
<!-- Single Page Header End -->


<%-- <div>${list }</div> --%>

<!-- Cart Page Start -->
<div class="container-fluid py-5">
	<div class="container py-5">
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">주문번호</th>
						<th scope="col">이미지</th>
						<th scope="col">회원명</th>
						<th scope="col">상품명</th>
						<th scope="col">가격</th>
<!-- 						<th scope="col">갯수</th> -->
						<th scope="col">삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cart" items="${list }">
						<tr>
							<td>
								<p class="mb-0 mt-4">${cart.cartNum }</p>
							</td>
							<th scope="row">
								<div class="d-flex align-items-center">
									<img src="img/vegetable-item-3.png"
										class="img-fluid me-5 rounded-circle"
										style="width: 80px; height: 80px;" alt="">
								</div>
							</th>
							<td>
								<p class="mb-0 mt-4">${cart.memberName }</p>
							</td>
							<td>
								<p class="mb-0 mt-4">${cart.itemName }</p>
							</td>
							<td>
								<p class="mb-0 mt-4">${cart.itemPrice }</p>
							</td>

							<td>
								<p class="mb-0 mt-4"></p>
							</td>
							<td>
								<button class="btn btn-md rounded-circle bg-light border mt-4" onclick="deleteCart()">
									<i class="fa fa-times text-danger"></i>
								</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<!-- Cart Page End -->
	</div>
</div>
<!-- Tastimonial End -->



<script>

$.ajax({
    url: 'cartList.do',
    method: 'post',
    dataType: 'json'
  })
  .done(result => {
    result.forEach(cart => {
    })
  })
  .fail(err => console.log(err))

</script>




<!-- 					  갯수버튼		<td>
								<div class="input-group quantity mt-4" style="width: 100px;">
									<div class="input-group-btn">
										<button
											class="btn btn-sm btn-minus rounded-circle bg-light border">
											<i class="fa fa-minus"></i>
										</button>
									</div>
									<input type="text"
										class="form-control form-control-sm text-center border-0"
										value="1">
									<div class="input-group-btn">
										<button
											class="btn btn-sm btn-plus rounded-circle bg-light border">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
							</td> -->