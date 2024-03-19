<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">구매 완료된 상품 목록</h1>
</div>

<!-- Cart Page Content -->
<div class="container-fluid py-5">
	<div class="container py-5">
		<div id="messageArea">상품 구매 목록</div>
		<!-- Message display area -->
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">날짜</th>
						<th scope="col">상품명</th>
						<th scope="col">가격</th>
						<th scope="col">이미지</th>
						<th scope="col">상태</th>
						<th scope="col">삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="purchase" items="${purchaselist }">
						<tr>
							<td>
							<fmt:formatDate value="${purchase.dueDate }"
									pattern="yyyy.MM.dd" /></td>
							<td>
								<p class="mb-0 mt-4">${purchase.itemName }</p>
							</td>
							<td>
								<p class="mb-0 mt-4">${purchase.totalPrice }원</p>
							</td>
							<td>
								<p class="mb-0 mt-4">
									<img src="${purchase.itemImage }"
										style="width: 50px; height: 50px;">
								</p>
							</td>
							<td>
								<p class="mb-0 mt-4">${purchase.purchaseOk == 'Completed' ? '구매완료' : '진행중' }</p>
							</td>
							<td>
								<button type="button"
									onclick="deletePurchase(${purchase.orderId });"
									class="btn btn-md rounded-circle bg-light border mt-4">X</button>
							</td>
						</tr>
					</c:forEach> 
				</tbody>
			</table>
		</div>
	</div>
</div>


<script>
function deletePurchase(orderId) {
    if (confirm('이 상품을 삭제하시겠습니까?')) {
        $.ajax({
            url: 'deletePurchase.do',
            method: 'post',
            data: { orderId: orderId },
            dataType: 'json',
            success: function(response) {
                if (response.retCode == 'OK') {
                    $(`#purchase-${orderId}`).remove();
                    alert('주문이 취소되었습니다.');
                    location.reload();
                } else {
                	alert('주문을 취소할 수 없습니다.....');
                }
            },
            error: function(xhr, status, error) {
            	alert('에러에러에러.');
            }
        });
    }
}

</script>



