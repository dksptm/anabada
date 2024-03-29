<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>구매내역 상세 페이지</title>
<style>
/* CSS Reset */
body, h1, h2, div, span {
	margin: 10;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

h2 {
	font-weight: bold;
	margin-bottom: 30px;
	font-size: 25px;
}

.button-container {
	display: flex;
	justify-content: center; 
	gap: 5px; 
	margin-right: 260px;
	margin-bottom: 16px; 
}

body {
	line-height: 1;
	font-family: 'Arial', sans-serif;
	background-color: #f4f4f4;
	color: #333;
	padding: 20px;
}

main {
	max-width: 800px;
	margin: 0 auto;
	background: #fff;
	padding: 20px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.title h1 {
	text-align: center;
	margin: 30px 0;
	color: #fff;
	background: #333;
	padding: 20px 0;
	font-size: 2rem;
	margin-bottom: 10px;
}

.product_info {
	display: flex;
	align-items: center;
	margin-bottom: 30px;
}

.product_info img {
	margin-right: 150px;
	margin-left: 150px;
}

.product_details div {
	margin-bottom: 5px;
}

.info_title {
	margin-right: 10px;
}

.info_section {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 15px;
}

.info_title, .info_content {
	display: inline-block;
	margin-bottom: 10px
}

.info_title {
	color: #333;
	font-weight: bold;
	margin-right: 10px;
}

.order_info {
	margin-bottom: 50px;
}

.info_content {
	color: #666;
	text-align: right;
	width: auto;
	flex-grow: 1;
}

.btn {
	overflow: visible;
	margin: 0;
	padding: 0;
	border: 0;
	background: transparent;
	font: inherit;
	line-height: normal;
	cursor: pointer;
	-moz-user-select: text;
	display: block;
	text-decoration: none;
	text-transform: uppercase;
	padding: 16px 36px 22px;
	background-color: #fff;
	color: #666;
	border: 2px solid #666;
	border-radius: 6px;
	margin-bottom: 16px;
	transition: all 0.5s ease;
	margin-left: 200px;
}

.btn:-moz-focus-inner {
	padding: 0;
	border: 0;
}

.btn--stripe {
	overflow: hidden;
	position: relative;
}
/* .btn--stripe:after {
  content: "";
  display: block;
  height: 7px;
  width: 100%;
  background-image: repeating-linear-gradient(45deg, #666, #666 1px, transparent 2px, transparent 5px);
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  border-top: 1px solid #666;
  position: absolute;
  left: 0;
  bottom: 0;
  background-size: 7px 7px;
} */
.btn--stripe:hover {
	background-color: #666;
	color: #fff;
	border-color: #000;
}

.btn--stripe:hover:after {
	background-image: repeating-linear-gradient(45deg, #fff, #fff 1px, transparent 2px,
		transparent 5px);
	border-top: 1px solid #000;
	-webkit-animation: stripe-slide 12s infinite linear forwards;
	animation: stripe-slide 12s infinite linear forwards;
}

.btn--large {
	width: 50%;
}

.btn--radius {
	border-radius: 36px;
}

@media ( max-width : 767px) {
	.info_section {
		flex-direction: column;
		align-items: flex-start;
	}
	.info_content {
		text-align: left;
		margin-top: 5px;
	}
}
</style>
</head>
<body>
	<main>
		<div class="detail_box">
			<section class="title">
				<h1>구매내역 상세</h1>
			</section>
			
			<div class="order_info_wrapper">
				<div class="order_info">
					<span class="info_title">주문번호${item}</span> <span>${selectPurchaseOrder.orderNum}</span>

					<span class="info_title">구매일자</span> <span><fmt:formatDate
							value="${selectPurchaseOrder.orderDate}" pattern="yyyy년 MM월 dd일" /></span>
				</div>
				
				<div class="product_info">
					<img src="images/${selectPurchaseOrder.itemImage }"
						style="width: 150px; height: 150px;">
					<div class="product_details">
						<div>
							<span class="info_title">상품명</span> <span>${selectPurchaseOrder.itemName}</span>
						</div>
						<div>
							<span class="info_title">상품가격</span> <span>${selectPurchaseOrder.itemPrice}</span>
						</div>
					</div>
				</div>
			</div>
			<c:choose>
				<c:when test="${selectPurchaseOrder.orderStatus eq '주문진행'}">
					<span><button type="button"
							onclick="orderCancle(${selectPurchaseOrder.orderNum});"
							class=" btn btn--stripe btn--large ">주문취소</button></span>
				</c:when>
				<c:when test="${selectPurchaseOrder.orderStatus eq '주문완료'}">
					<span><button type="button"
							onclick="orderCancle(${selectPurchaseOrder.orderNum});"
							class=" btn btn--stripe btn--large ">주문완료된 상품</button></span>
				</c:when>

				<c:otherwise>
					<span><button type="button" disabled
							onclick="orderCancle(${selectPurchaseOrder.orderNum});"
							class=" btn btn--stripe btn--large ">주문취소된 상품</button></span>
				</c:otherwise>
			</c:choose>

			<hr>

			<h2>입금정보</h2>
			
			<div class="info_section">
				<span class="info_title">계좌번호</span> <span class="info_content">${selectPurchaseOrder.accountNum }</span>
			</div>

			<div class="info_section">
				<span class="info_title">예금주</span> <span class="info_content">${selectPurchaseOrder.sellerName }
				</span>
			</div>

			<div class="info_section">
				<span class="info_title">입금요청액</span> <span class="info_content"><fmt:formatNumber value="${selectPurchaseOrder.itemPrice + selectPurchaseOrder.deliveryFee }" pattern="#,###" /></span>
			</div>

			<div class="info_section">
			
			
				<span class="info_title">입금기한</span> <span class="info_content"> <fmt:formatDate value="${selectPurchaseOrder.gihan}" pattern="yyyy년 MM월 dd일" /></span>
			</div>

			<hr>

			<h2>거래정보</h2>
			<div class="info_section">
				<span class="info_title">거래방법</span> <span class="info_content">${selectPurchaseOrder.deliveryHow }</span>
			</div>

			<div class="info_section">
				<span class="info_title">결제수단</span> <span class="info_content">${selectPurchaseOrder.paymentType }</span>
			</div>
			<div class="info_section">
				<span class="info_title">배송비</span> <span class="info_content"><fmt:formatNumber value="${selectPurchaseOrder.deliveryFee }" pattern="#,###" /></span>
			</div>

			<div class="info_section">
				<span class="info_title">상품금액</span> <span class="info_content"><fmt:formatNumber value="${selectPurchaseOrder.itemPrice}" pattern="#,###" /></span>
			</div>

		</div>
		<div class="button-container">
    <c:choose>
        <c:when test="${selectPurchaseOrder.orderStatus eq '주문진행'}">
            <span><button type="button" onclick="purchaseConfirm(${selectPurchaseOrder.orderNum});" class="btn btn--stripe btn--large">구매확정</button></span>
        </c:when>
        <c:otherwise>
        
        <span><button type="button" onclick="location.href='itemList.do'" class="btn btn--stripe btn--large">계속 쇼핑</button></span>
            
        </c:otherwise>
    </c:choose>
   
    <c:choose>
        <c:when test="${selectPurchaseOrder.orderStatus eq '주문완료'}">
            <span><button type="button" onclick="location.href='addreviewForm.do?memberNum=${selectPurchaseOrder.memberNum}&orderNum=${selectPurchaseOrder.orderNum}'" class="btn btn--stripe btn--large">리뷰쓰기</button></span>
        </c:when>
        <c:otherwise>
           <span><button type="button" onclick="location.href='cartList.do?itemNum=${selectPurchaseOrder.itemNum}&orderNum=${selectPurchaseOrder.orderNum}'" class="btn btn--stripe btn--large">장바구니</button></span>
        </c:otherwise>
    </c:choose>
</div>
	</main>
</body>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script>



function orderCancle(orderNum) {
	
    if (confirm('구매를 취소하시겠습니까?')) {
    	let itemNum = "${selectPurchaseOrder.itemNum}";
        $.ajax({
            url: 'orderCancle.do',
            method: 'POST',
            data: { orderNum: orderNum, itemNum:itemNum},
            dataType: 'json',
            success: function(response) {
                if (response.retCode == 'OK') {
                   alert(response);
                	alert('구매가 취소되었습니다.');
                    location.reload();
                } else {
                	alert('구매를 취소할 수 없습니다.....');
                }
            },
            error: function(xhr, status, error) {
            	alert('에러에러에러.');
            }
        });
    }
}


function purchaseConfirm(orderNum) {
	let itemNum = "${selectPurchaseOrder.itemNum}";
    if (confirm('주문을 완료 하시겠습니까?')) {
        $.ajax({
            url: 'purchaseConfirm.do', 
            method: 'POST',
            data: { orderNum: orderNum , itemNum:itemNum},
            dataType: 'json',
            success: function(response) {
                if (response.retCode == 'OK') {
                    alert('주문이 확정되었습니다.');
                    location.reload();
                } else {
                    alert('주문을 할 수 없습니다.');
                }
            },
            error: function(xhr, status, error) {
                alert('처리 중 오류가 발생했습니다.');
            }
        });
    }
}

</script>
</html>




