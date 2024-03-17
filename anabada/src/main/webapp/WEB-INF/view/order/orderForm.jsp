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
						<div class="col-md-12 col-lg-6 col-xl-7">
							<!-- 거래방법 -->
							<h4 class="w-100 text-center">거래방법</h4>
							<div class="d-flex text-center align-items-center justify-content-between">
								<button type="button" class="btn border-secondary py-3 px-4 me-4 w-100 text-primary"
									style="background-color: #F2EFE5;">택배거래</button>
								<button type="button" class="btn btn-outline-dark py-3 px-4 w-100 text-primary">직거래</button>
							</div>
							<br>
							<!-- 구매상품정보 -->
							<h4 class="w-100 text-center">구매상품</h4>
							<div class="form-item d-flex text-center align-items-center justify-content-between">
								<div class="card w-100" style="width:400px">
									<img class="card-img-top" src="#" alt="해당상품번호사진불러오기" style="width:100%">
									<div class="card-body">
										<h4 class="card-title">상품명(상품번호에서 불러오기)</h4>
										<h5><b>상품가격 5000</b></h5>
										<p>판매자 직거래면 직거래장소</p>
									</div>
								</div>
							</div>
							<br><br>
							<!-- 택배면 배송지, 직거래면 직거래장소 -->
							<h4 class="w-100 text-center">구매자/수령인/배송/직거래정보</h4>
							<span>회원이름</span><span>회원번호</span>
							<div class="form-item">
								<h5>수령인 이름</h5>
								<label class="form-label my-3" for="juso1">배송지 주소입력<sup>*</sup></label>
								<input type="text" class="form-control" name="juso1" id="juso1">
							</div>
							<div class="form-item">
								<label class="form-label my-3" for="juso2">직거래 희망장소<sup>*</sup></label>
								<input type="text" class="form-control" name="juso2" id="juso2">
							</div>
							<!-- 결제방법 -->
							<div class="d-flex text-center align-items-center justify-content-between pt-4">
								<label class="form-label my-3" for="juso2">결제방법<sup>*</sup></label>
								<button type="button" class="btn border-secondary">네이버페이</button>
								<button type="button" class="btn btn-outline-dark">무통장입금</button>
							</div>
							<hr>
							<div class="d-flex text-center align-items-center justify-content-between pt-4">
								<button type="submit" id="signBtn" class="btn border-secondary py-3 px-4 me-4 w-100 text-primary"
									style="background-color: #F2EFE5;">구매하기</button>
								<button type="reset" class="btn btn-outline-dark py-3 px-4 w-100 text-primary">취소하기</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- Checkout Page End -->