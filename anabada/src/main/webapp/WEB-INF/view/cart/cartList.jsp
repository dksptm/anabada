<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">찜목록</h1>
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
						<th scope="col">찜번호</th> 
						<th scope="col">상품번호</th>
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
							<td>
								<p class="mb-0 mt-4">${cart.itemNum}</p>
							</td>
							<th scope="row">
								<div class="d-flex align-items-center">
									<img src="images/${cart.itemImage }"
										class="img-fluid me-5 rounded-circle"
										style="width: 80px; height: 80px;" alt="">
								</div>
							</th>
							<td>
								<p class="mb-0 mt-4">${cart.itemName}</p>
							</td>
							<td>
								<p class="mb-0 mt-4">${cart.itemPrice }</p>
							</td>
							<td>
								<button class="btn btn-md rounded-circle bg-light border mt-4" onclick="cartDelete(${cart.cartNum })" >
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
// 찜목록삭제 
let mno = '${member.memberNum }';
console.log('멤버!',mno);

function cartDelete(cno){
    console.log(cno);
    $.ajax({
        url: "removeCart.do",
        method: "get",
        data: { cno: cno ,  mno: mno }, 
        dataType: 'json',
    })
    .done((result) => {
    	console.log(result);
    	alert('삭제완료!')
    	location.reload();
    })
    .fail((error) => console.error(err)) 
} 


</script>
