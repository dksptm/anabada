<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- <link rel="stylesheet" href="WEB-INF/view/purchase/css/orderDetail.css"> -->
 <style>
 @charset "UTF-8";
main {
	width: 800px;
	margin : 0 auto 50px ;
} 
 
.detail_box {
	width: 95%;
	margin-left: auto;
}
 
section.title {
    width: 100%;
}
 
section.title h1 {
    text-align: center;
    margin : 30px 0 50px 0 ;
}
 
main .order_cont {
	margin-bottom: 30px;
}
 
main div {
    font-size: 1.5rem;
}
 
main .order_cont .store_name {
	font-size: 2rem;
	font-weight: bold;
	
}
 
main .order_cont .order_info {
	margin-top: 10px;
	font-size: 1.5rem;
	
}
 
main .order_menu  {
    margin-bottom: 30px;
}
 
main .order_menu li {
    position: relative;
}
 
main .order_menu li div,
main .price div,
main .total div {
    display: flex;
    justify-content: space-between;
 
}
 
main .order_menu li .menu_price,
main .price div span:last-child,
main .total div span:last-child {
    position: relative;
    right: 0;
}
 
main .order_menu li ul li {
    font-size: 1.5rem;
    list-style: disc;
    margin-left: 20px;
    color: #a5a5a5;
}
 
main .order_menu li ul li.menu_price_sum {
	list-style: none;
	margin: 0;
	color: black;
	font-weight: bold;
	
}
 
main .price {
    margin-bottom: 30px;
}
 
 
main .price div {
    font-size: 1.8rem;
    font-weight: bold;
}
 
main .total{
    margin-bottom: 30px;
}
 
main .total div {
	font-size: 2rem;
	font-weight: bold;
}
 
 
 
main .address li {
    color: #a5a5a5;
}
 
 
 
 
@media (max-width:1024px) {
	main {
		width: 95%;
	}
	.detail_box {
		margin: 0 auto;
		
	}
}
@media  (max-width:767px) {
	
}
 </style>
 
 
<section class="title">
	<h1>주문 상세</h1>
</section>
 
<main>
	 <div class="detail_box">
		<div class="order_cont">
			<div>${selectPurchaseOrder.itemName }</div>
			<div class="store_name">${selectPurchaseOrder.orderNum }</div> 
 			${selectPurchaseOrder.orderNum}
 			
			< <div class="order_info">
				<div>
					주문일시 :
					<fmt:formatDate value="${selectPurchaseOrder.orderDate }"
						pattern="yyyy년 MM월 dd일 (E) a hh:mm" />
				</div>
				<div>주문번호 : ${selectPurchaseOrder.orderNum }</div>
			</div>
		</div>
 
		<ul class="order_menu">
			
				<li>
					<div><span>asdfasdf개</span></div>
					
					<ul>
						<li>기본가격 원</li>
 
						<c:set var="foodTotalPrice"  />
						
						
								<li>
									<span></span> 
									<span><fm:formatNumber  pattern="###,###" />원</span>
								</li>
								
								
							
						
						<li class="menu_price_sum"><fm:formatNumber  pattern="###,###" />원</li>
					</ul>
					<hr>
				</li>
			
		</ul>
 
 
		<div class="price">
			<div>
				<span>${selectPurchaseOrder.deliveryHow} </span><span>원</span>
			</div>
			<div>
				<span>배달팁 </span><span>원</span>
			</div>
			<div>
				
				
				
			</div>
			<hr>
		</div>
 
		<div class="total">
			<div>
				<span>총 결제금액 </span>
				<span class="sum"><fm:formatNumber value="${orderDetail.totalPrice + orderDetail.deliveryTip - orderDetail.usedPoint  }" pattern="###,###" />원</span>
			</div>
			
			<div>
				<span>결제방법 </span><span>${orderDetail.payMethod }</span>
			</div>
		</div>
		<hr>
		<hr>
 
 
		<div class="address">
			<div>배달주소</div>
			<ul>
				<li>${selectPurchaseOrder.deliveryAddress1 }</li>
				<li>${selectPurchaseOrder.deliveryAddress2 }</li>
				<li>${orderDetail.deliveryAddress3 }</li>
			</ul>
			<hr>
 
		</div>
 
		<div>
			<div>전화번호</div>
			<div>${orderDetail.phone }</div>
			<hr>
 
		</div>
 
		<div>
			<div>요청사항</div>
			<div>${orderDetail.request }</div>
			<hr>
 
		</div>
	</div> --%>
</main>
 
 
 
<!-- 하단 메뉴 -->
	<%-- <%@ layout file="/WEB-INF/views/layout/nav.jsp"%> --%>
<!-- 하단 메뉴 -->
 
<!-- 푸터 -->
<!-- 푸터 -->
 
 
</body>
</html>