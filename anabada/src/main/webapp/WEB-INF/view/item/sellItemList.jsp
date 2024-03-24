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
						<th scope="col">이미지</th>
						<th scope="col">상품명</th>
						<th scope="col">가격</th>
						<th scope="col">상태</th>
						<th scope="col">자세히</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${sellItemList }">
						<tr>
							<td>
								<p class="mb-0 mt-4">
									<img src="${item.itemImage }"
										style="width: 50px; height: 50px;">
								</p>
							</td>
							<td>
								<p class="mb-0 mt-4">${item.itemName }</p>
							</td>
							<td>
								<p class="mb-0 mt-4">${item.itemPrice }원</p>
							</td>
							<td>
								<p class="mb-0 mt-4">${item.itemStatus }</p>
							</td>
							<td
								onClick="toggleIframe('SelectSellItemList.do?itemNum=${item.itemNum }');"
								style="cursor: pointer;">
								<p class="mb-0 mt-4"
									style="display: inline-block;  margin-left:10px; padding: 8px 16px; background-color: white; color: black; border: 2px solid #000000; border-radius: 5px; cursor: pointer; text-align: center;">
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
	        //iframe.style.position = 'fixed';
	        iframe.style.left = '0'; 
	        iframe.style.top = '5%'; 
	        iframe.style.width = '50%'; 
	        iframe.style.height = '700px'; 
	    }
	    return;
	}
function deleteSellItem(itemNum) {
    if (confirm('판매내역을 삭제하시겠습니까? 삭제하면 다시는 보이지 않습니다')) {
        $.ajax({
            url: 'deleteSellItem.do',
            method: 'post',
            data: { itemNum: itemNum },
            dataType: 'json',
            success: function(response) {
                if (response.retCode == 'OK') {
                    alert('판매내역을 삭제하였습니다.');
                    location.reload();
                } else {
                	alert('판매내역을 삭제할 수 없습니다.');
                }
            },
            error: function(xhr, status, error) {
            	alert('에러에러에러.');
            }
        });
    }
}

</script> 



