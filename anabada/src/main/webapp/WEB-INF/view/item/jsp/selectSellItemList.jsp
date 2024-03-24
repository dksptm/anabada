<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>판매내역 상세 페이지</title>
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
				<h1>판매내역 상세</h1>
			</section>
			
			<div class="order_info_wrapper">
				<div class="order_info">
					<span class="info_title">상품번호</span> <span>${selectSellItemList.itemNum }</span>

					<span class="info_title">판매일자</span> <span>${selectSellItemList.itemDate }</span>
				</div>
				
				<div class="product_info">
					<img src="${selectSellItemList.itemImage }"
						style="width: 150px; height: 150px;">
					<div class="product_details">
						<div>
							<span class="info_title">상품명</span> <span>${selectSellItemList.itemName }</span>
						</div>
						<div>
							<span class="info_title">상품가격</span> <span>${selectSellItemList.itemPrice }</span>
						</div>
					</div>
				</div>
			</div>
			<c:choose>
				<c:when test="">
					<span><button type="button"
							onclick="orderCancle(1);"
							class=" btn btn--stripe btn--large ">판매취소</button></span>
				</c:when>

				<c:otherwise>
					<span><button type="button" disabled
							onclick="orderCancle();"
							class=" btn btn--stripe btn--large ">판매확정</button></span>
				</c:otherwise>
			</c:choose>

			<hr>

			<h2>정보</h2>
			<div class="info_section">
				<span class="info_title">별점</span> <span class="info_content">${selectSellItemList.reviewScore }</span>
			</div>

			<div class="info_section">
				<span class="info_title">판매상태</span> <span class="info_content">${selectSellItemList.itemStatus }</span>
			</div>
			
			<div class="info_section">
				<span class="info_title">찜 횟수</span> <span class="info_content">${selectSellItemList.zzim }</span>
			</div>
			
		</div>
		<div class="button-container">
   
</div>
	</main>
</body>
</html>




