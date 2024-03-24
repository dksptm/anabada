<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">구매내역</h1>
</div>

<!-- Cart Page Content -->
<div class="container-fluid py-5">
	<div class="container py-5">
		<!-- Message display area -->
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">이미지</th>
						<th scope="col">상품명</th>
						<th scope="col">가격</th>
						<th scope="col">상태</th>
						<th scope="col">자세히</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="purchase" items="${purchaselist }">

						<tr>
						<td>
								<p class="mb-0 mt-4">
									<img src="images/${purchase.itemImage }"
										style="width: 50px; height: 50px;">
								</p>
							</td>
							<td>
								<p class="mb-0 mt-4">${purchase.itemName }</p>
							</td>
							<td>
								<p class="mb-0 mt-4">${purchase.totalPrice }원</p>
							</td>
							<td>
								<p class="mb-0 mt-4">${purchase.orderStatus }</p>
							</td>
							<td
								onClick="toggleIframe('selectPurchaseList.do?orderNum=${purchase.orderNum}');"
								style="cursor: pointer;">
								<p class="mb-0 mt-4"
									style="display: inline-block; margin-left: 10px; padding: 8px 16px; background-color: white; color: black; border: 2px solid #000000; border-radius: 5px; cursor: pointer; text-align: center;">
									상세</p>
							</td>
						</tr>

					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>

<iframe name="contentFrame" id="contentFrame"
	style="width: 100%; height: 600px; border: none; display: none; position: fixed; left: 0; top: 0;"></iframe>
<script>
function toggleIframe(url) {
    var iframe = document.getElementById('contentFrame');
    if (iframe.style.display === 'block' && iframe.src.includes(url)) {
        iframe.style.display = 'none';
        iframe.src = '';
    } else {
        iframe.style.display = 'block';
        iframe.src = url;
        iframe.style.left = '0';
        iframe.style.top = '5%'; 
        iframe.style.width = '50%';
        iframe.style.height = '700px';
    }
    return;
}

// 페이지 로드 시 'iframe'을 기본적으로 숨깁니다.
window.onload = function() {
    document.getElementById('contentFrame').style.display = 'none';
}
/* function selectPurchaseList()
function deletePurchase(orderNum) {
    if (confirm('이 상품을 삭제하시겠습니까?')) {
        $.ajax({
            url: 'deletePurchase.do',
            method: 'post',
            data: { orderNum: orderNum },
            dataType: 'json',
            success: function(response) {
                if (response.retCode == 'OK') {
                    $(`#purchase-${orderNum}`).remove();
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
 */
</script>



