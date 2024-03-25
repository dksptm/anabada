<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


	<div class="container-fluid page-header py-5">
		<h1 class="text-center text-white display-6">주문완료페이지</h1>
		<ol class="breadcrumb justify-content-center mb-0">
			<li class="breadcrumb-item active text-white">orderComplete.do</li>
		</ol>
	</div>

	<!-- 주문완료 페이지-->
        <div class="container-fluid contact py-5">
            <div class="container py-5">
                <div class="d-flex p-5 bg-light rounded">
                    <div class="row col-12 g-4">
                        <div class="col-12">
                            <div class="text-center mx-auto">
                                <h1 class="text-primary">주문접수 완료</h1>
                                <p class="mb-4"> 주문번호 - <c:out value="${odrNo }" /></p>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="d-flex p-4 rounded mb-4 bg-white">
                                <i class="fas fa-map-marker-alt fa-2x text-primary me-4"></i>
                                <div>
                                    <h4>입금정보</h4>
                                    <span class="mb-2">입금계좌: ${order.sellerAcc } </span>
                                    <span class="mb-2"> / 예금주: ${order.sellerName }</span>
                                    <span class="mb-2"> / 입금요청액: ${order.total }</span>
                                </div>
                            </div>
                            <div class="d-flex p-4 rounded mb-4 bg-white">
                                <i class="fas fa-envelope fa-2x text-primary me-4"></i>
                                <div>
                                    <h4>배송지정보</h4>
                                    <span class="mb-2">수령인: ${member.memberName }</span>
                                    <span class="mb-2"> / 연락처: ${member.memberPhone }</span>
                                    <span class="mb-2"> / 배송주소: ${empty order.deliveryAddress ? '직거래' : order.deliveryAddress }</span>
                                </div>
                            </div>
                            <div class="d-flex p-4 rounded bg-white">
                                <i class="fa fa-phone-alt fa-2x text-primary me-4"></i>
                                <div>
                                    <h4>거래정보</h4>
                                    <span class="mb-2">거래방법: ${order.orderType }</span>
                                    <span class="mb-2"> / 거래일시: ${order.orderDate }</span>
                                    <span class="mb-2"> / 결제수단: ${order.paymentType }</span>
                                    <span class="mb-2"> / 상품금액: ${order.itemPrice }상품</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--  -->