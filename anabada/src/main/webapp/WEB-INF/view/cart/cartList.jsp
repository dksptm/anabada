<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">장바구니</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item active text-white">cartList.do</li>
	</ol>
</div>
<!-- Single Page Header End -->


<!-- Cart Page Start -->
<div class="container-fluid py-5">
	<div class="container py-5">
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">주문번호</th>
						<th scope="col">이미지</th>
						<th scope="col">상품명</th>
						<th scope="col">가격</th>
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
									<img src="itemimages/${cart.itemImage }"
										class="img-fluid me-5 rounded-circle"
										style="width: 80px; height: 80px;" alt="">
								</div>
							</th>
							</td>
							<td>
								<p class="mb-0 mt-4">${cart.itemName}</p>
							</td>
							<td>
								<p class="mb-0 mt-4">${cart.itemPrice }</p>
							</td>

							<td>
								<button id="deleteBtn"
									class="btn btn-md rounded-circle bg-light border mt-4">
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

  
//아이템 삭제.
$(".deleteBtn").on('click', function() {
	let cartNum = $(this).data("cartNum");
	console.log(cartNum);
	fetch("removeCart.do?cartNum=" + cartNum)
		.then(result => result.json())
		.then(result => {
		if (result.retCode == "OK") {
			alert('삭제됨');
			location.reload();
		} else {
			alert('삭제 중 오류 발생')
			}
		})
	})
//end of 아이템 삭제.
  

</script>


