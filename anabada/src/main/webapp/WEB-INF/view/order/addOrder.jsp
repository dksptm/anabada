<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!-- 결제진행 -->
        <div class="container-fluid contact py-5">
            <div class="container py-5">
                <div class="p-5 bg-light rounded">
                    <div class="row g-4">
                        <div class="col-12">
                            <div class="text-center mx-auto" style="max-width: 700px;">
                                <h1 class="text-primary">주문접수 완료(직거래는 보류중인 상태)</h1>
                                <p class="mb-4"> 계좌번호 안내, 또는 페이진행?</p>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="d-flex p-4 rounded mb-4 bg-white">
                                <i class="fas fa-map-marker-alt fa-2x text-primary me-4"></i>
                                <div>
                                    <h4>입금정보</h4>
                                    <p class="mb-2">입금은행:</p>
                                    <p class="mb-2">예금주</p>
                                    <p class="mb-2">입금요청금액</p>
                                    <p class="mb-2">입금기한</p>
                                </div>
                            </div>
                            <div class="d-flex p-4 rounded mb-4 bg-white">
                                <i class="fas fa-envelope fa-2x text-primary me-4"></i>
                                <div>
                                    <h4>배송지정보 / 직거래장소</h4>
                                    <p class="mb-2">이름</p>
                                    <p class="mb-2">주소</p>
                                    <p class="mb-2">연락처</p>
                                </div>
                            </div>
                            <div class="d-flex p-4 rounded bg-white">
                                <i class="fa fa-phone-alt fa-2x text-primary me-4"></i>
                                <div>
                                    <h4>거래정보</h4>
                                    <p class="mb-2">거래방법</p>
                                    <p class="mb-2">결제일시</p>
                                    <p class="mb-2">결제방법</p>
                                    <p class="mb-2">상품금액</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--  -->