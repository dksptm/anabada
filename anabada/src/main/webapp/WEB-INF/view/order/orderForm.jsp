<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



		<div class="container-fluid page-header py-5">
			<h1 class="text-center text-white display-6">구매페이지</h1>
			<ol class="breadcrumb justify-content-center mb-0">
				<li class="breadcrumb-item"><a href="#">Home</a></li>
				<li class="breadcrumb-item"><a href="#">Pages</a></li>
				<li class="breadcrumb-item active text-white">Cart</li>
			</ol>
		</div>

		<!-- Checkout Page Start -->
		<div class="container-fluid py-5">
			<div class="container py-5">
				<h1 class="mb-4 row justify-content-center">구매정보를 확인해주세요.</h1>
				<hr>
				<form action="signUp.do" method="post" id="sign">
					<div class="row g-3 justify-content-center">
						<div class="col-md-12 col-lg-6 col-xl-7"><br><br>
							<!-- 거래방법 -->
							<h4 class="text-center">거래방법 </h4>
							<div class="d-flex text-center align-items-center justify-content-between" id="jusoOpen">
								<button type="button" 
										class="btn btn-outline-success border py-3 px-4 me-4 w-100 text-primary"
										${item.dselect eq 'jik' ? 'disabled' : '' } >
										택배거래</button>
								<button type="button" 
										class="btn btn-outline-success border py-3 px-4 me-4 w-100 text-primary"
										${item.dselect eq 'taek' ? 'disabled' : '' } >
										직거래</button>
							</div>
							<br>
							<!-- 구매상품정보 -->
							<div class="row justify-content-center p-4 align-middle" style="background-color:#eee;">
							<h4 class="w-100 text-center">상품정보</h4>
							<div class="col-md-4">
								<img class="img-border-radius img-fluid rounded" src="images/${item.itemImage }" 
                    					alt="상품이미지" style="width:100%;higth:100%;object-fit:contain;" />
                    		</div>
                    		<div class="col-md-6">
                        		<div class="small mb-1">${item.itemNum }</div>
                        		<p class="display-5 fw-bolder">${item.itemName }</p>
                        		<div class="fs-5 mb-5">
                            		<span>￦ ${item.itemPrice }</span>
                    			</div>
                    		</div>
                    		</div>
							<br><br>
							<!-- 택배면 배송지, 직거래면 직거래장소 -->
							<div id="jusot">
							<h4 class="w-100 text-center">구매자 정보</h4>
							<div class="form-item">
								<label class="form-label my-3" for="dname1">수령인 이름<sup>*</sup></label>
								<input type="text" class="form-control" name="dname1" id="dname1" value="${member.memberName }" readonly>
							</div>
							<div class="form-item">
								<label class="form-label my-3" for="phone1">연락처<sup>*</sup></label>
								<input type="text" class="form-control" name="phone1" id="phone1" value="${member.memberPhone }" readonly>
							</div>
							<div class="form-item">
								<label class="form-label my-3" for="tjuso">배송지 주소입력<sup>*</sup></label>
								<input type="text" class="form-control" name="tjuso" id="tjuso">
								<span style="color:red;">택배비 3000원 추가</span>
							</div>
							<div class="btnA">
							<div class="d-flex text-center align-items-center justify-content-between pt-4">
								<label class="form-label my-3" for="">결제방법<sup>*</sup></label>
								<input type="radio" class="btn-check" name="pay" id="payt" value="payt">
								<label class="btn border-secondary col-4" for="payt">네이버페이</label>
								<input type="radio" class="btn-check" name="pay" id="depositt" value="depositt">
								<label class="btn btn-outline-dark col-4" for="depositt">무통장입금</label>
							</div>
							</div>
							</div>
							<!-- ---- -->
							<div id="jusoj">
							<h4 class="w-100 text-center">구매자 정보</h4>
							<div class="form-item">
								<label class="form-label my-3" for="dname1">수령인 이름<sup>*</sup></label>
								<input type="text" class="form-control" name="dname1" id="dname1" value="${member.memberName }" disabled>
							</div>
							<div class="form-item">
								<label class="form-label my-3" for="phone2">연락처<sup>*</sup></label>
								<input type="text" class="form-control" name="phone2" id="phone2" value="${member.memberPhone }" disabled>
							</div>
							<div class="form-item">
								<label class="form-label my-3" for="jjuso">직거래 희망장소<sup>*</sup></label>
								<input type="text" class="form-control" name="jjuso" id="jjuso">
							</div>
							<div class="btnA">
							<div class="d-flex text-center align-items-center justify-content-between pt-4">
								<label class="form-label my-3" for="">결제방법<sup>*</sup></label>
								<input type="radio" class="btn-check" name="pay" id="payj" value="payj">
								<label class="btn border-secondary col-4" for="payj">네이버페이</label>
								<input type="radio" class="btn-check" name="pay" id="depositj" value="depositj">
								<label class="btn btn-outline-dark col-4" for="depositj">무통장입금</label>
							</div>
							</div>
							</div>
							
							<!-- 구매하기 -->
							<hr>
							<div id="btnB">
							<div class="d-flex text-center align-items-center justify-content-between pt-4">
								<button type="button" onclick="orderBtn()" 
										class="btn border-secondary py-3 px-4 me-4 w-100 text-primary"
										style="background-color: #F2EFE5;">구매하기</button>
								<button type="reset" class="btn btn-outline-dark py-3 px-4 w-100 text-primary">
										취소하기</button>
							</div>
							</div>	
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- Checkout Page End -->
		
		<script>
         const mno = "${member.memberNum }";
         const ino = "${item.itemNum }";
        </script>
        <script src="static/js/item/orderitem.js"></script>