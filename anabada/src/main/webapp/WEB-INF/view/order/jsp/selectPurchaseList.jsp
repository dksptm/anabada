<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	margin-bottom: 10px
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
.order_info{
	margin-bottom: 50px;
}
.info_content {
	
	color: #666; 
	text-align: right; 
	width: auto; 
	flex-grow: 1; 
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
					<span class="info_title">주문번호</span> <span>${selectPurchaseOrder.orderNum}</span>

					<span class="info_title">구매일자</span> <span><fmt:formatDate
							value="${selectPurchaseOrder.orderDate}" pattern="yyyy년 MM월 dd일" /></span>
				</div>

				<div class="product_info">
					<img src="${selectPurchaseOrder.itemImage }"
										style="width: 150px; height: 150px;" alt="상품 이미지">
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

			<hr>

			<h2>입금정보</h2>
			<div class="info_section">
				<span class="info_title">입금은행</span> <span class="info_content">1</span>
			</div>

			<div class="info_section">
				<span class="info_title">계좌번호</span> <span class="info_content">1</span>
			</div>

			<div class="info_section">
				<span class="info_title">예금주</span> <span class="info_content">1</span>
			</div>

			<div class="info_section">
				<span class="info_title">입금요청액</span> <span class="info_content">1</span>
			</div>

			<div class="info_section">
				<span class="info_title">입금기한</span> <span class="info_content">1</span>
			</div>

			<hr>

			<!-- 판매자 정보 Section -->
			<h2>판매자 정보</h2>
			<div class="info_section">
				<span class="info_title">닉네임</span> <span class="info_content">1</span>
			</div>

			<hr>

			<!-- 거래정보 Section -->
			<h2>거래정보</h2>
			<div class="info_section">
				<span class="info_title">거래방법</span> <span class="info_content">1</span>
			</div>

			<div class="info_section">
				<span class="info_title">결제일시</span> <span class="info_content">1</span>
			</div>

			<div class="info_section">
				<span class="info_title">결제수단</span> <span class="info_content">1</span>
			</div>

			<div class="info_section">
				<span class="info_title">상품금액</span> <span class="info_content">1</span>
			</div>
			<!-- 계속해서 다른 정보들을 추가해주세요. -->
		</div>
	</main>
</body>
</html>

