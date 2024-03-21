<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">마이페이지</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item active text-white">myPage.do</li>
	</ol>
</div>
<!-- Single Page Header End -->

        <!-- 마이페이지 Start -->
        <div class="container-fluid py-5">
            <div class="container py-5">
                <div class="text-center">
                    <h4 class="text-primary">나의 판매, 나의 구매, 리뷰 등등..</h4>
                    <h1 class="display-5 mb-5 text-dark">여기는 마이페이지.</h1>
                </div>
                <div class="">
                    <div class="row img-border-radius bg-light rounded p-4">
                    	<!-- 내 상품 보여지는 공간. -->
                        <div class="position-relative col-8 p-3">
                            <i class="fa fa-quote-right fa-2x text-secondary position-absolute" style="bottom: 30px; right: 0;"></i>
                            <div class="mb-4 pb-4 border-bottom border-secondary">
                            	<h4 class="text-dark">${memberName }님의 판매상품</h4>
                            </div>
                            <div class="d-flex align-items-center flex-nowrap">
                                <div class="ms-4 d-block">
                                    <div class ="${myList }" var="item">
	                                    <p class="mb-0">${item.itemName }</p>
		                                <div class="bg-secondary rounded">
		                                    <img src="images/${item.itemImage }" class="img-fluid rounded" style="width:100%;higth:100%;object-fit:cover;" alt="">
		                                </div>
		                                <p class="m-0 pb-3">${item.itemPrice }원</p>
                                     </div>
                                </div>
                            </div>
                        </div>
                        <!-- 내 정보 등 링크연결 공간. -->
                        <div class="col-4 p-3 text-end">
                        	<div class="col-lg-12">
                            	<h4 class="mb-4 text-dark">마이페이지</h4>
                            	<hr>
                                <div>
                                    <h5 class="text-dark text-end">거래정보</h5>
                                    <hr>
                                	<div class="mb-2">
                                        <a href="sellItemList.do?memberNum=${member.memberNum }"><h5 class="text-primary text-end">판매내역</h5><a>
                                        <a href="purchaseList.domemberNum=${member.memberNum }"><h5 class="text-primary text-end">구매내역</h5><a>
                                        <a href="#"><h5 class="text-primary text-end">리뷰내역</h5><a>
                                	</div>
                                </div>
                                <br><br>
                                <hr>
                                <div>
                                	<h5 class="text-dark text-end">나의정보</h5>
                                    <hr>
                                   	<div class="mb-2">
                                    	<a href="#"><h5 class="text-primary text-end">나의계좌</h5><a>
                                        <a href="addreviewForm.do"><h5 class="text-primary text-end">리뷰쓰기</h5><a>
                                        <a href="myInfo.domemberNum=${member.memberNum }"><h5 class="text-primary text-end">나의정보</h5><a>
                                	</div>
                            	</div>
                    		</div>
                    	</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 마이페이지 End -->

