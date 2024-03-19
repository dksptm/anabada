<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
em.warning{
	color:red; font-size:14px;
}
</style>

<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">회원가입(추가수정 필요)</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
		<li class="breadcrumb-item"><a href="#">Pages</a></li>
		<li class="breadcrumb-item active text-white">Checkout</li>
	</ol>
</div>
<!-- Single Page Header End -->

<!-- Checkout Page Start -->
<div class="container-fluid py-5">
	<div class="container py-5">
		<h1 class="mb-4 row justify-content-center">회원정보를 입력해주세요.</h1>
		<form action="signUp.do" method="post" id="sign">
			<div class="row g-3 justify-content-center">
				<div class="col-md-12 col-lg-6 col-xl-7">
					<div class="form-item d-flex justify-content-between flex-lg-wrap">
						<label class="form-label my-3" for="member_id" placeholder="이메일 주소를 입력해주세요.">이메일<sup>*</sup>
						<a href="#" class="btn border-secondary" id="idChk">이메일 중복확인</a>
						</label>
						<input type="text" class="form-control" name="member_id" id="member_id" required><em></em>
					</div>
					<div class="form-item">
					
					<label class="form-label my-3" for="member_pw" required>비밀번호<sup>*</sup></label> <input
							type="text" class="form-control" name="member_pw" id="member_pw" required><em></em>
					</div>
					<div class="form-item">
						<label class="form-label my-3" for="member_pw2" required>비밀번호 재입력<sup>*</sup></label> <input
							type="text" class="form-control" name="member_pw2" id="member_pw2" required><em></em>
					</div>
					<div class="form-item">
						<label class="form-label my-3" for="member_name" required>이름<sup>*</sup></label> <input
							type="text" class="form-control" name="member_name" id="member_name" required><em></em>
					</div>
					<div class="form-item">
						<label class="form-label my-3" for="member_phone" required>전화번호<sup>*</sup></label> <input
							type="text" class="form-control" name="member_phone" id="member_phone" required><em></em>
					</div>
					<div class="form-check my-3">
						<input type="checkbox" class="form-check-input" id="Account-1"
							name="Accounts" value="Accounts"> <label
							class="form-check-label" for="Account-1">계정을 만드시겠습니까?</label>
					</div>
					<hr>
					<div class="d-flex text-center align-items-center justify-content-between pt-4">
						<button type="submit" id="signBtn" class="btn border-secondary py-3 px-4 me-4 w-100 text-primary" style="background-color: #F2EFE5;">가입하기</button>
						<button type="reset" class="btn btn-outline-dark py-3 px-4 w-100 text-primary">취소하기</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- Checkout Page End -->

<script src="static/js/member/signUp.js"></script>
