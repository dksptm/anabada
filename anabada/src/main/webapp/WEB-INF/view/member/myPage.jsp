<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">마이페이지</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item active text-white">myPage.do</li>
	</ol>
		<br>
		<p>${pageDTO }</p>
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
                    <div class="d-flex img-border-radius bg-light rounded">
                    	<!-- 내 상품 보여지는 공간. -->
                        <div class="position-relative col-9 p-3">
                            <i class="fa fa-quote-right fa-2x text-secondary position-absolute" style="bottom: 30px; right: 0;"></i>
                            <div class="mb-4 pb-4 border-bottom border-secondary">
                            	<h4 class="text-dark py-2">${member.memberName }님의 판매상품</h4>
                            </div>
                            <!-- 상품리스트. -->
                            <div class="d-flex align-items-center flex-nowrap">
                                <div class="row g-1 justify-content-center">
                                	<c:forEach items="${myList }" var="item">
                                	<div class="col-4 vesitable" onclick="location.href='item.do?itemNum=${item.itemNum}'">
                                		<div class="border border-primary rounded position-relative vesitable-item">
	                                    <br>
	                                    <span class="mb-0 px-2 h5">${item.itemName } </span>
		                                <span class="m-0 px-2 h5">${item.itemPrice }원 </span>
		                                <br><br>
		                                <div class="vesitable-img border rounded">
		                                    <img src="images/${item.itemImage }" class="img-fluid w-100 rounded-top bg-light" 
		                                    		onerror="this.onerror=null; this.src='static/img/errimg.png';">
		                                </div>
		                                </div>
                                     </div>
                                     </c:forEach>
                                </div>
                            </div>
                            <!-- 페이지내이션. -->
                            <br><br>
                            <div class="d-flex justify-content-center">
								<div class="pagination">
								<c:if test="${pageDTO.prev }">
								  <a href="myPage.do?mno=${member.memberNum}&page=${pageDTO.startPage - 1 }"> &laquo; </a>
								</c:if>
								<c:forEach begin="${pageDTO.startPage }" end="${pageDTO.endPage }" var="p">
								  <c:choose>
								    <c:when test="${p eq pageDTO.page }">
									  <a href="myPage.do?mno=${member.memberNum}&page=${p }" class="active">${p }</a>
									</c:when>
									<c:otherwise>
									  <a href="myPage.do?mno=${member.memberNum}&page=${p }">${p }</a>
									</c:otherwise>
								  </c:choose>
								</c:forEach>
								<c:if test="${pageDTO.next }">
								  <a href="myPage.do?mno=${member.memberNum}&page=${pageDTO.endPage + 1 }"> &raquo; </a>
								</c:if>
								</div>
							</div>
                        </div>
                        <!-- 내 정보 등 링크연결 공간. -->
                        <div class="col-3 p-3 text-end">
                        	<div class="col-lg-12">
                            	<h4 class="mb-4 text-dark py-2">마이페이지</h4>
                            	<hr>
                                <div>
                                    <h5 class="text-dark text-end">나의 정보</h5>
                                    <hr>
                                	<div class="mb-2">
                                        <a href="sellItemList.do?memberNum=${member.memberNum }"><h5 class="text-primary text-end">판매내역</h5><a>
                                        <a href="purchaseList.do?memberNum=${member.memberNum }"><h5 class="text-primary text-end">구매내역</h5><a>
                                        <a href="reviewList.do?mno=${member.memberNum }"><h5 class="text-primary text-end">리뷰내역</h5><a>
                                        <a href="myInfo.do?memberNum=${member.memberNum }"><h5 class="text-primary text-end">개인정보</h5><a>
                                	</div>
                                </div>
                                <br><br>
                                <hr>
                    		</div>
                    	</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 마이페이지 End -->
        
        <script>
        </script>

