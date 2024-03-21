<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
								<button class="btn btn-md rounded-circle bg-light border mt-4" onclick="cartDelete()" >
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


function cartDelete(){
    let cartNum = $(this).data("cartNum");
    console.log(cartNum);

    $.ajax({
        url: "removeCart.do", // 아이템 삭제를 처리하는 서버 엔드포인트 URL
        method: "post",
        data: { cartNum: cartNum }, // 삭제할 아이템의 cartNum을 전달합니다.
        dataType: "json"
    })
    .done(function(result) => {
    	console.log(result);
    })
    .fail((error) =>
        console.error(err)) 
       
}
  
</script>

 <!-- $.ajax({
    url: 'cartList.do',
    method: 'post',
    dataType: 'json'
  })
  .done(result => {
    result.forEach(cart => {
    })
  })
  .fail(err => console.log(err)) -->

  

